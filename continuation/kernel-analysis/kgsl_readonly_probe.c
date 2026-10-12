/* Query-only KGSL device probe for the owner's connected Android phone.
 * No allocations, mappings, command submission, kernel writes or partition I/O.
 * Linux AArch64 syscall ABI; KGSL structs follow Motorola's published UAPI.
 */
typedef unsigned long u64;
typedef unsigned int u32;

static long syscall3(long nr, long a0, long a1, long a2) {
    register long x0 __asm__("x0") = a0;
    register long x1 __asm__("x1") = a1;
    register long x2 __asm__("x2") = a2;
    register long x8 __asm__("x8") = nr;
    __asm__ volatile("svc #0" : "+r"(x0) : "r"(x1), "r"(x2), "r"(x8) : "memory", "cc");
    return x0;
}

static void put(const char *s) {
    u64 n=0;
    while(s[n]) n++;
    syscall3(64,1,(long)s,n);
}

static void number(long n) {
    char digits[32];
    u64 k=0, value;
    if(n<0) {put("-");value=(u64)(-n);} else value=(u64)n;
    do {digits[k++]='0'+value%10;value/=10;} while(value);
    for(u64 i=0;i<k/2;i++) {char c=digits[i];digits[i]=digits[k-1-i];digits[k-1-i]=c;}
    syscall3(64,1,(long)digits,k);
}

struct devinfo {
    u32 device_id, chip_id, mmu_enabled;
    u64 gmem_gpubaseaddr;
    u32 gpu_id;
    u64 gmem_sizebytes;
};
struct getproperty {u32 type;void *value;u64 sizebytes;};
_Static_assert(sizeof(struct devinfo)==40,"UAPI devinfo size");
_Static_assert(sizeof(struct getproperty)==24,"UAPI getproperty size");

long run_probe(void) {
    struct devinfo info={0};
    struct getproperty property={1,&info,sizeof(info)};
    put("{\"uid\":");number(syscall3(174,0,0,0));
    put(",\"euid\":");number(syscall3(175,0,0,0));
    long fd=syscall3(56,-100,(long)"/dev/kgsl-3d0",2);
    put(",\"open_result\":");number(fd);
    if(fd<0) {put(",\"query_only\":true}\n");return 1;}
    long ret=syscall3(29,fd,0xC0180902,(long)&property);
    put(",\"getproperty_result\":");number(ret);
    if(ret==0) {
        put(",\"gpu_id\":");number(info.gpu_id);
        put(",\"chip_id\":");number(info.chip_id);
        put(",\"mmu_enabled\":");number(info.mmu_enabled);
        put(",\"gmem_bytes\":");number(info.gmem_sizebytes);
    }
    syscall3(57,fd,0,0);
    put(",\"query_only\":true}\n");
    return ret<0;
}

__asm__(".global _start\n"
        "_start:\n"
        "mov x29,xzr\n"
        "mov x30,xzr\n"
        "bl run_probe\n"
        "mov x8,#93\n"
        "svc #0\n");
