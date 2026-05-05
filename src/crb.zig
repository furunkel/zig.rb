pub const __builtin_bswap16 = @import("std").zig.c_translation.builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_translation.builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_translation.builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_translation.builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_translation.builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_translation.builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_translation.builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_translation.builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_translation.builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_translation.builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_translation.builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_translation.builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_translation.builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_translation.builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_translation.builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_translation.builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_translation.builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_translation.builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_translation.builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_translation.builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_translation.builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_translation.builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_translation.builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_translation.builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_translation.builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_translation.builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_translation.builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_translation.builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_translation.builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_translation.builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_translation.builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_translation.builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_translation.builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_translation.builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_translation.builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_translation.builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_translation.builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_translation.builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_translation.builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_translation.builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_translation.builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_translation.builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_translation.builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_translation.builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_translation.builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_translation.builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_translation.builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_translation.builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_translation.builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_translation.builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_translation.builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_translation.builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_translation.builtins.assume;
pub const __builtin_unreachable = @import("std").zig.c_translation.builtins.@"unreachable";
pub const __builtin_constant_p = @import("std").zig.c_translation.builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_translation.builtins.__builtin_mul_overflow;
pub const struct___va_list_tag_1 = extern struct {
    gp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    fp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    overflow_arg_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reg_save_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const __builtin_va_list = [1]struct___va_list_tag_1;
pub const __gnuc_va_list = __builtin_va_list;
pub const va_list = __builtin_va_list;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
const union_unnamed_2 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
pub const __mbstate_t = extern struct {
    __count: c_int = @import("std").mem.zeroes(c_int),
    __value: union_unnamed_2 = @import("std").mem.zeroes(union_unnamed_2),
};
pub const struct__G_fpos_t = extern struct {
    __pos: __off_t = @import("std").mem.zeroes(__off_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
pub const __fpos_t = struct__G_fpos_t;
pub const struct__G_fpos64_t = extern struct {
    __pos: __off64_t = @import("std").mem.zeroes(__off64_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
pub const __fpos64_t = struct__G_fpos64_t;
pub const struct__IO_marker = opaque {};
pub const _IO_lock_t = anyopaque;
pub const struct__IO_codecvt = opaque {};
pub const struct__IO_wide_data = opaque {};
pub const struct__IO_FILE = extern struct {
    _flags: c_int = @import("std").mem.zeroes(c_int),
    _IO_read_ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_read_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_read_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_buf_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_buf_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_save_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_backup_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_save_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _markers: ?*struct__IO_marker = @import("std").mem.zeroes(?*struct__IO_marker),
    _chain: [*c]struct__IO_FILE = @import("std").mem.zeroes([*c]struct__IO_FILE),
    _fileno: c_int = @import("std").mem.zeroes(c_int),
    _flags2: c_int = @import("std").mem.zeroes(c_int),
    _old_offset: __off_t = @import("std").mem.zeroes(__off_t),
    _cur_column: c_ushort = @import("std").mem.zeroes(c_ushort),
    _vtable_offset: i8 = @import("std").mem.zeroes(i8),
    _shortbuf: [1]u8 = @import("std").mem.zeroes([1]u8),
    _lock: ?*_IO_lock_t = @import("std").mem.zeroes(?*_IO_lock_t),
    _offset: __off64_t = @import("std").mem.zeroes(__off64_t),
    _codecvt: ?*struct__IO_codecvt = @import("std").mem.zeroes(?*struct__IO_codecvt),
    _wide_data: ?*struct__IO_wide_data = @import("std").mem.zeroes(?*struct__IO_wide_data),
    _freeres_list: [*c]struct__IO_FILE = @import("std").mem.zeroes([*c]struct__IO_FILE),
    _freeres_buf: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    __pad5: usize = @import("std").mem.zeroes(usize),
    _mode: c_int = @import("std").mem.zeroes(c_int),
    _unused2: [20]u8 = @import("std").mem.zeroes([20]u8),
};
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub const cookie_read_function_t = fn (?*anyopaque, [*c]u8, usize) callconv(.c) __ssize_t;
pub const cookie_write_function_t = fn (?*anyopaque, [*c]const u8, usize) callconv(.c) __ssize_t;
pub const cookie_seek_function_t = fn (?*anyopaque, [*c]__off64_t, c_int) callconv(.c) c_int;
pub const cookie_close_function_t = fn (?*anyopaque) callconv(.c) c_int;
pub const struct__IO_cookie_io_functions_t = extern struct {
    read: ?*const cookie_read_function_t = @import("std").mem.zeroes(?*const cookie_read_function_t),
    write: ?*const cookie_write_function_t = @import("std").mem.zeroes(?*const cookie_write_function_t),
    seek: ?*const cookie_seek_function_t = @import("std").mem.zeroes(?*const cookie_seek_function_t),
    close: ?*const cookie_close_function_t = @import("std").mem.zeroes(?*const cookie_close_function_t),
};
pub const cookie_io_functions_t = struct__IO_cookie_io_functions_t;
pub const off_t = __off_t;
pub const off64_t = __off64_t;
pub const fpos_t = __fpos_t;
pub const fpos64_t = __fpos64_t;
pub extern var stdin: [*c]FILE;
pub extern var stdout: [*c]FILE;
pub extern var stderr: [*c]FILE;
pub extern fn remove(__filename: [*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
pub extern fn renameat2(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8, __flags: c_uint) c_int;
pub extern fn fclose(__stream: [*c]FILE) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpfile64() [*c]FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
pub extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
pub extern fn fflush(__stream: [*c]FILE) c_int;
pub extern fn fflush_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fcloseall() c_int;
pub extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fopen64(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen64(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;
pub extern fn fopencookie(noalias __magic_cookie: ?*anyopaque, noalias __modes: [*c]const u8, __io_funcs: cookie_io_functions_t) [*c]FILE;
pub extern fn fmemopen(__s: ?*anyopaque, __len: usize, __modes: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) [*c]FILE;
pub extern fn setbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8) void;
pub extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: [*c]FILE) void;
pub extern fn fprintf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn printf(__format: [*c]const u8, ...) c_int;
pub extern fn sprintf(noalias __s: [*c]u8, noalias __format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn vprintf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn vsprintf(noalias __s: [*c]u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn snprintf(noalias __s: [*c]u8, __maxlen: c_ulong, noalias __format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(noalias __s: [*c]u8, __maxlen: c_ulong, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn vasprintf(noalias __ptr: [*c][*c]u8, noalias __f: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn __asprintf(noalias __ptr: [*c][*c]u8, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn asprintf(noalias __ptr: [*c][*c]u8, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;
pub const _Float32 = f32;
pub const _Float64 = f64;
pub const _Float32x = f64;
pub const _Float64x = c_longdouble;
pub extern fn vfscanf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn fgetc(__stream: [*c]FILE) c_int;
pub extern fn getc(__stream: [*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn getc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn fgetc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar(__c: c_int) c_int;
pub extern fn fputc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar_unlocked(__c: c_int) c_int;
pub extern fn getw(__stream: [*c]FILE) c_int;
pub extern fn putw(__w: c_int, __stream: [*c]FILE) c_int;
pub extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn fgets_unlocked(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn puts(__s: [*c]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;
pub extern fn fputs_unlocked(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn fread_unlocked(noalias __ptr: ?*anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fseek(__stream: [*c]FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: [*c]FILE) c_long;
pub extern fn rewind(__stream: [*c]FILE) void;
pub extern fn fseeko(__stream: [*c]FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) __off_t;
pub extern fn fgetpos(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos_t) c_int;
pub extern fn fsetpos(__stream: [*c]FILE, __pos: [*c]const fpos_t) c_int;
pub extern fn fseeko64(__stream: [*c]FILE, __off: __off64_t, __whence: c_int) c_int;
pub extern fn ftello64(__stream: [*c]FILE) __off64_t;
pub extern fn fgetpos64(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos64_t) c_int;
pub extern fn fsetpos64(__stream: [*c]FILE, __pos: [*c]const fpos64_t) c_int;
pub extern fn clearerr(__stream: [*c]FILE) void;
pub extern fn feof(__stream: [*c]FILE) c_int;
pub extern fn ferror(__stream: [*c]FILE) c_int;
pub extern fn clearerr_unlocked(__stream: [*c]FILE) void;
pub extern fn feof_unlocked(__stream: [*c]FILE) c_int;
pub extern fn ferror_unlocked(__stream: [*c]FILE) c_int;
pub extern fn perror(__s: [*c]const u8) void;
pub extern fn fileno(__stream: [*c]FILE) c_int;
pub extern fn fileno_unlocked(__stream: [*c]FILE) c_int;
pub extern fn pclose(__stream: [*c]FILE) c_int;
pub extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn ctermid(__s: [*c]u8) [*c]u8;
pub extern fn cuserid(__s: [*c]u8) [*c]u8;
pub const struct_obstack = opaque {};
pub extern fn obstack_printf(noalias __obstack: ?*struct_obstack, noalias __format: [*c]const u8, ...) c_int;
pub extern fn obstack_vprintf(noalias __obstack: ?*struct_obstack, noalias __format: [*c]const u8, __args: [*c]struct___va_list_tag_1) c_int;
pub extern fn flockfile(__stream: [*c]FILE) void;
pub extern fn ftrylockfile(__stream: [*c]FILE) c_int;
pub extern fn funlockfile(__stream: [*c]FILE) void;
pub extern fn __uflow([*c]FILE) c_int;
pub extern fn __overflow([*c]FILE, c_int) c_int;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const ino64_t = __ino64_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const useconds_t = __useconds_t;
pub const suseconds_t = __suseconds_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = c_long;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.c) __uint16_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint16_t, @bitCast(@as(c_short, @truncate(((@as(c_int, @bitCast(@as(c_uint, __bsx))) >> @intCast(8)) & @as(c_int, 255)) | ((@as(c_int, @bitCast(@as(c_uint, __bsx))) & @as(c_int, 255)) << @intCast(8))))));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.c) __uint32_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(8))) | ((__bsx & @as(c_uint, 255)) << @intCast(24));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.c) __uint64_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint64_t, @bitCast(@as(c_ulong, @truncate(((((((((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(56)) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 71776119061217280)) >> @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 280375465082880)) >> @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 1095216660480)) >> @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 4278190080)) << @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 16711680)) << @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 65280)) << @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 255)) << @intCast(56))))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.c) __uint16_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.c) __uint32_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.c) __uint64_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub const __sigset_t = extern struct {
    __val: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_usec: __suseconds_t = @import("std").mem.zeroes(__suseconds_t),
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_nsec: __syscall_slong_t = @import("std").mem.zeroes(__syscall_slong_t),
};
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    fds_bits: [16]__fd_mask = @import("std").mem.zeroes([16]__fd_mask),
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
pub const blkcnt64_t = __blkcnt64_t;
pub const fsblkcnt64_t = __fsblkcnt64_t;
pub const fsfilcnt64_t = __fsfilcnt64_t;
const struct_unnamed_3 = extern struct {
    __low: c_uint = @import("std").mem.zeroes(c_uint),
    __high: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const __atomic_wide_counter = extern union {
    __value64: c_ulonglong,
    __value32: struct_unnamed_3,
};
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = @import("std").mem.zeroes([*c]struct___pthread_internal_slist),
};
pub const __pthread_slist_t = struct___pthread_internal_slist;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int = @import("std").mem.zeroes(c_int),
    __count: c_uint = @import("std").mem.zeroes(c_uint),
    __owner: c_int = @import("std").mem.zeroes(c_int),
    __nusers: c_uint = @import("std").mem.zeroes(c_uint),
    __kind: c_int = @import("std").mem.zeroes(c_int),
    __spins: c_short = @import("std").mem.zeroes(c_short),
    __elision: c_short = @import("std").mem.zeroes(c_short),
    __list: __pthread_list_t = @import("std").mem.zeroes(__pthread_list_t),
};
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint = @import("std").mem.zeroes(c_uint),
    __writers: c_uint = @import("std").mem.zeroes(c_uint),
    __wrphase_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __writers_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __pad3: c_uint = @import("std").mem.zeroes(c_uint),
    __pad4: c_uint = @import("std").mem.zeroes(c_uint),
    __cur_writer: c_int = @import("std").mem.zeroes(c_int),
    __shared: c_int = @import("std").mem.zeroes(c_int),
    __rwelision: i8 = @import("std").mem.zeroes(i8),
    __pad1: [7]u8 = @import("std").mem.zeroes([7]u8),
    __pad2: c_ulong = @import("std").mem.zeroes(c_ulong),
    __flags: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const struct___pthread_cond_s = extern struct {
    __wseq: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g1_start: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g_refs: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g_size: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g1_orig_size: c_uint = @import("std").mem.zeroes(c_uint),
    __wrefs: c_uint = @import("std").mem.zeroes(c_uint),
    __g_signals: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
};
pub const __tss_t = c_uint;
pub const __thrd_t = c_ulong;
pub const __once_flag = extern struct {
    __data: c_int = @import("std").mem.zeroes(c_int),
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const struct_stat = extern struct {
    st_dev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_ino: __ino_t = @import("std").mem.zeroes(__ino_t),
    st_nlink: __nlink_t = @import("std").mem.zeroes(__nlink_t),
    st_mode: __mode_t = @import("std").mem.zeroes(__mode_t),
    st_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
    st_gid: __gid_t = @import("std").mem.zeroes(__gid_t),
    __pad0: c_int = @import("std").mem.zeroes(c_int),
    st_rdev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_size: __off_t = @import("std").mem.zeroes(__off_t),
    st_blksize: __blksize_t = @import("std").mem.zeroes(__blksize_t),
    st_blocks: __blkcnt_t = @import("std").mem.zeroes(__blkcnt_t),
    st_atim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_mtim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_ctim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    __glibc_reserved: [3]__syscall_slong_t = @import("std").mem.zeroes([3]__syscall_slong_t),
};
pub const struct_stat64 = extern struct {
    st_dev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_ino: __ino64_t = @import("std").mem.zeroes(__ino64_t),
    st_nlink: __nlink_t = @import("std").mem.zeroes(__nlink_t),
    st_mode: __mode_t = @import("std").mem.zeroes(__mode_t),
    st_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
    st_gid: __gid_t = @import("std").mem.zeroes(__gid_t),
    __pad0: c_int = @import("std").mem.zeroes(c_int),
    st_rdev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_size: __off_t = @import("std").mem.zeroes(__off_t),
    st_blksize: __blksize_t = @import("std").mem.zeroes(__blksize_t),
    st_blocks: __blkcnt64_t = @import("std").mem.zeroes(__blkcnt64_t),
    st_atim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_mtim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_ctim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    __glibc_reserved: [3]__syscall_slong_t = @import("std").mem.zeroes([3]__syscall_slong_t),
};
pub extern fn stat(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat) c_int;
pub extern fn fstat(__fd: c_int, __buf: [*c]struct_stat) c_int;
pub extern fn stat64(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat64) c_int;
pub extern fn fstat64(__fd: c_int, __buf: [*c]struct_stat64) c_int;
pub extern fn fstatat(__fd: c_int, noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat, __flag: c_int) c_int;
pub extern fn fstatat64(__fd: c_int, noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat64, __flag: c_int) c_int;
pub extern fn lstat(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat) c_int;
pub extern fn lstat64(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat64) c_int;
pub extern fn chmod(__file: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn lchmod(__file: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn fchmod(__fd: c_int, __mode: __mode_t) c_int;
pub extern fn fchmodat(__fd: c_int, __file: [*c]const u8, __mode: __mode_t, __flag: c_int) c_int;
pub extern fn umask(__mask: __mode_t) __mode_t;
pub extern fn getumask() __mode_t;
pub extern fn mkdir(__path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn mkdirat(__fd: c_int, __path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn mknod(__path: [*c]const u8, __mode: __mode_t, __dev: __dev_t) c_int;
pub extern fn mknodat(__fd: c_int, __path: [*c]const u8, __mode: __mode_t, __dev: __dev_t) c_int;
pub extern fn mkfifo(__path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn mkfifoat(__fd: c_int, __path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn utimensat(__fd: c_int, __path: [*c]const u8, __times: [*c]const struct_timespec, __flags: c_int) c_int;
pub extern fn futimens(__fd: c_int, __times: [*c]const struct_timespec) c_int;
pub const __s8 = i8;
pub const __u8 = u8;
pub const __s16 = c_short;
pub const __u16 = c_ushort;
pub const __s32 = c_int;
pub const __u32 = c_uint;
pub const __s64 = c_longlong;
pub const __u64 = c_ulonglong;
pub const __kernel_fd_set = extern struct {
    fds_bits: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const __kernel_sighandler_t = ?*const fn (c_int) callconv(.c) void;
pub const __kernel_key_t = c_int;
pub const __kernel_mqd_t = c_int;
pub const __kernel_old_uid_t = c_ushort;
pub const __kernel_old_gid_t = c_ushort;
pub const __kernel_old_dev_t = c_ulong;
pub const __kernel_long_t = c_long;
pub const __kernel_ulong_t = c_ulong;
pub const __kernel_ino_t = __kernel_ulong_t;
pub const __kernel_mode_t = c_uint;
pub const __kernel_pid_t = c_int;
pub const __kernel_ipc_pid_t = c_int;
pub const __kernel_uid_t = c_uint;
pub const __kernel_gid_t = c_uint;
pub const __kernel_suseconds_t = __kernel_long_t;
pub const __kernel_daddr_t = c_int;
pub const __kernel_uid32_t = c_uint;
pub const __kernel_gid32_t = c_uint;
pub const __kernel_size_t = __kernel_ulong_t;
pub const __kernel_ssize_t = __kernel_long_t;
pub const __kernel_ptrdiff_t = __kernel_long_t;
pub const __kernel_fsid_t = extern struct {
    val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __kernel_off_t = __kernel_long_t;
pub const __kernel_loff_t = c_longlong;
pub const __kernel_old_time_t = __kernel_long_t;
pub const __kernel_time_t = __kernel_long_t;
pub const __kernel_time64_t = c_longlong;
pub const __kernel_clock_t = __kernel_long_t;
pub const __kernel_timer_t = c_int;
pub const __kernel_clockid_t = c_int;
pub const __kernel_caddr_t = [*c]u8;
pub const __kernel_uid16_t = c_ushort;
pub const __kernel_gid16_t = c_ushort;
pub const __s128 = i128;
pub const __u128 = u128;
pub const __le16 = __u16;
pub const __be16 = __u16;
pub const __le32 = __u32;
pub const __be32 = __u32;
pub const __le64 = __u64;
pub const __be64 = __u64;
pub const __sum16 = __u16;
pub const __wsum = __u32;
pub const __poll_t = c_uint;
pub const struct_statx_timestamp = extern struct {
    tv_sec: __s64 = @import("std").mem.zeroes(__s64),
    tv_nsec: __u32 = @import("std").mem.zeroes(__u32),
    __reserved: __s32 = @import("std").mem.zeroes(__s32),
};
pub const struct_statx = extern struct {
    stx_mask: __u32 = @import("std").mem.zeroes(__u32),
    stx_blksize: __u32 = @import("std").mem.zeroes(__u32),
    stx_attributes: __u64 = @import("std").mem.zeroes(__u64),
    stx_nlink: __u32 = @import("std").mem.zeroes(__u32),
    stx_uid: __u32 = @import("std").mem.zeroes(__u32),
    stx_gid: __u32 = @import("std").mem.zeroes(__u32),
    stx_mode: __u16 = @import("std").mem.zeroes(__u16),
    __spare0: [1]__u16 = @import("std").mem.zeroes([1]__u16),
    stx_ino: __u64 = @import("std").mem.zeroes(__u64),
    stx_size: __u64 = @import("std").mem.zeroes(__u64),
    stx_blocks: __u64 = @import("std").mem.zeroes(__u64),
    stx_attributes_mask: __u64 = @import("std").mem.zeroes(__u64),
    stx_atime: struct_statx_timestamp = @import("std").mem.zeroes(struct_statx_timestamp),
    stx_btime: struct_statx_timestamp = @import("std").mem.zeroes(struct_statx_timestamp),
    stx_ctime: struct_statx_timestamp = @import("std").mem.zeroes(struct_statx_timestamp),
    stx_mtime: struct_statx_timestamp = @import("std").mem.zeroes(struct_statx_timestamp),
    stx_rdev_major: __u32 = @import("std").mem.zeroes(__u32),
    stx_rdev_minor: __u32 = @import("std").mem.zeroes(__u32),
    stx_dev_major: __u32 = @import("std").mem.zeroes(__u32),
    stx_dev_minor: __u32 = @import("std").mem.zeroes(__u32),
    stx_mnt_id: __u64 = @import("std").mem.zeroes(__u64),
    stx_dio_mem_align: __u32 = @import("std").mem.zeroes(__u32),
    stx_dio_offset_align: __u32 = @import("std").mem.zeroes(__u32),
    __spare3: [12]__u64 = @import("std").mem.zeroes([12]__u64),
};
pub extern fn statx(__dirfd: c_int, noalias __path: [*c]const u8, __flags: c_int, __mask: c_uint, noalias __buf: [*c]struct_statx) c_int;
pub const wchar_t = c_int;
pub const div_t = extern struct {
    quot: c_int = @import("std").mem.zeroes(c_int),
    rem: c_int = @import("std").mem.zeroes(c_int),
};
pub const ldiv_t = extern struct {
    quot: c_long = @import("std").mem.zeroes(c_long),
    rem: c_long = @import("std").mem.zeroes(c_long),
};
pub const lldiv_t = extern struct {
    quot: c_longlong = @import("std").mem.zeroes(c_longlong),
    rem: c_longlong = @import("std").mem.zeroes(c_longlong),
};
pub extern fn __ctype_get_mb_cur_max() usize;
pub extern fn atof(__nptr: [*c]const u8) f64;
pub extern fn atoi(__nptr: [*c]const u8) c_int;
pub extern fn atol(__nptr: [*c]const u8) c_long;
pub extern fn atoll(__nptr: [*c]const u8) c_longlong;
pub extern fn strtod(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f64;
pub extern fn strtof(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f32;
pub extern fn strtold(__nptr: [*c]const u8, __endptr: [*c][*c]u8) c_longdouble;
pub extern fn strtof32(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) _Float32;
pub extern fn strtof64(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) _Float64;
pub extern fn strtof32x(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) _Float32x;
pub extern fn strtof64x(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) _Float64x;
pub extern fn strtol(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtoul(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strtoll(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoull(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strfromd(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: f64) c_int;
pub extern fn strfromf(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: f32) c_int;
pub extern fn strfroml(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: c_longdouble) c_int;
pub extern fn strfromf32(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: _Float32) c_int;
pub extern fn strfromf64(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: _Float64) c_int;
pub extern fn strfromf32x(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: _Float32x) c_int;
pub extern fn strfromf64x(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: _Float64x) c_int;
pub const struct___locale_data_4 = opaque {};
pub const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data_4 = @import("std").mem.zeroes([13]?*struct___locale_data_4),
    __ctype_b: [*c]const c_ushort = @import("std").mem.zeroes([*c]const c_ushort),
    __ctype_tolower: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __ctype_toupper: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __names: [13][*c]const u8 = @import("std").mem.zeroes([13][*c]const u8),
};
pub const __locale_t = [*c]struct___locale_struct;
pub const locale_t = __locale_t;
pub extern fn strtol_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int, __loc: locale_t) c_long;
pub extern fn strtoul_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int, __loc: locale_t) c_ulong;
pub extern fn strtoll_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int, __loc: locale_t) c_longlong;
pub extern fn strtoull_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int, __loc: locale_t) c_ulonglong;
pub extern fn strtod_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) f64;
pub extern fn strtof_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) f32;
pub extern fn strtold_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) c_longdouble;
pub extern fn strtof32_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) _Float32;
pub extern fn strtof64_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) _Float64;
pub extern fn strtof32x_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) _Float32x;
pub extern fn strtof64x_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) _Float64x;
pub extern fn l64a(__n: c_long) [*c]u8;
pub extern fn a64l(__s: [*c]const u8) c_long;
pub extern fn random() c_long;
pub extern fn srandom(__seed: c_uint) void;
pub extern fn initstate(__seed: c_uint, __statebuf: [*c]u8, __statelen: usize) [*c]u8;
pub extern fn setstate(__statebuf: [*c]u8) [*c]u8;
pub const struct_random_data = extern struct {
    fptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    rptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    state: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    rand_type: c_int = @import("std").mem.zeroes(c_int),
    rand_deg: c_int = @import("std").mem.zeroes(c_int),
    rand_sep: c_int = @import("std").mem.zeroes(c_int),
    end_ptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
};
pub extern fn random_r(noalias __buf: [*c]struct_random_data, noalias __result: [*c]i32) c_int;
pub extern fn srandom_r(__seed: c_uint, __buf: [*c]struct_random_data) c_int;
pub extern fn initstate_r(__seed: c_uint, noalias __statebuf: [*c]u8, __statelen: usize, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn setstate_r(noalias __statebuf: [*c]u8, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn rand() c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn rand_r(__seed: [*c]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn erand48(__xsubi: [*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn srand48(__seedval: c_long) void;
pub extern fn seed48(__seed16v: [*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48(__param: [*c]c_ushort) void;
pub const struct_drand48_data = extern struct {
    __x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __old_x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __c: c_ushort = @import("std").mem.zeroes(c_ushort),
    __init: c_ushort = @import("std").mem.zeroes(c_ushort),
    __a: c_ulonglong = @import("std").mem.zeroes(c_ulonglong),
};
pub extern fn drand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn erand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn lrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn nrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn mrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn jrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn srand48_r(__seedval: c_long, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn seed48_r(__seed16v: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn lcong48_r(__param: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn arc4random() __uint32_t;
pub extern fn arc4random_buf(__buf: ?*anyopaque, __size: usize) void;
pub extern fn arc4random_uniform(__upper_bound: __uint32_t) __uint32_t;
pub extern fn malloc(__size: c_ulong) ?*anyopaque;
pub extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;
pub extern fn free(__ptr: ?*anyopaque) void;
pub extern fn reallocarray(__ptr: ?*anyopaque, __nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn alloca(__size: c_ulong) ?*anyopaque;
pub extern fn valloc(__size: usize) ?*anyopaque;
pub extern fn posix_memalign(__memptr: [*c]?*anyopaque, __alignment: usize, __size: usize) c_int;
pub extern fn aligned_alloc(__alignment: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn abort() noreturn;
pub extern fn atexit(__func: ?*const fn () callconv(.c) void) c_int;
pub extern fn at_quick_exit(__func: ?*const fn () callconv(.c) void) c_int;
pub extern fn on_exit(__func: ?*const fn (c_int, ?*anyopaque) callconv(.c) void, __arg: ?*anyopaque) c_int;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn quick_exit(__status: c_int) noreturn;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn getenv(__name: [*c]const u8) [*c]u8;
pub extern fn secure_getenv(__name: [*c]const u8) [*c]u8;
pub extern fn putenv(__string: [*c]u8) c_int;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __replace: c_int) c_int;
pub extern fn unsetenv(__name: [*c]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn mktemp(__template: [*c]u8) [*c]u8;
pub extern fn mkstemp(__template: [*c]u8) c_int;
pub extern fn mkstemp64(__template: [*c]u8) c_int;
pub extern fn mkstemps(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkstemps64(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkdtemp(__template: [*c]u8) [*c]u8;
pub extern fn mkostemp(__template: [*c]u8, __flags: c_int) c_int;
pub extern fn mkostemp64(__template: [*c]u8, __flags: c_int) c_int;
pub extern fn mkostemps(__template: [*c]u8, __suffixlen: c_int, __flags: c_int) c_int;
pub extern fn mkostemps64(__template: [*c]u8, __suffixlen: c_int, __flags: c_int) c_int;
pub extern fn system(__command: [*c]const u8) c_int;
pub extern fn canonicalize_file_name(__name: [*c]const u8) [*c]u8;
pub extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
pub const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.c) c_int;
pub const comparison_fn_t = __compar_fn_t;
pub const __compar_d_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque, ?*anyopaque) callconv(.c) c_int;
pub extern fn bsearch(__key: ?*const anyopaque, __base: ?*const anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) ?*anyopaque;
pub extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
pub extern fn qsort_r(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_d_fn_t, __arg: ?*anyopaque) void;
pub extern fn abs(__x: c_int) c_int;
pub extern fn labs(__x: c_long) c_long;
pub extern fn llabs(__x: c_longlong) c_longlong;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn gcvt(__value: f64, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) c_int;
pub extern fn wctomb(__s: [*c]u8, __wchar: wchar_t) c_int;
pub extern fn mbstowcs(noalias __pwcs: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) usize;
pub extern fn wcstombs(noalias __s: [*c]u8, noalias __pwcs: [*c]const wchar_t, __n: usize) usize;
pub extern fn rpmatch(__response: [*c]const u8) c_int;
pub extern fn getsubopt(noalias __optionp: [*c][*c]u8, noalias __tokens: [*c]const [*c]u8, noalias __valuep: [*c][*c]u8) c_int;
pub extern fn posix_openpt(__oflag: c_int) c_int;
pub extern fn grantpt(__fd: c_int) c_int;
pub extern fn unlockpt(__fd: c_int) c_int;
pub extern fn ptsname(__fd: c_int) [*c]u8;
pub extern fn ptsname_r(__fd: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn getpt() c_int;
pub extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;
pub const ptrdiff_t = c_long;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8) = @import("std").mem.zeroes(c_longlong),
    __clang_max_align_nonce2: c_longdouble align(16) = @import("std").mem.zeroes(c_longdouble),
};
pub extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memccpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn __memcmpeq(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: usize) c_int;
pub extern fn memchr(__s: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn rawmemchr(__s: ?*const anyopaque, __c: c_int) ?*anyopaque;
pub extern fn memrchr(__s: ?*const anyopaque, __c: c_int, __n: usize) ?*anyopaque;
pub extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcat(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strxfrm(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub extern fn strcoll_l(__s1: [*c]const u8, __s2: [*c]const u8, __l: locale_t) c_int;
pub extern fn strxfrm_l(__dest: [*c]u8, __src: [*c]const u8, __n: usize, __l: locale_t) usize;
pub extern fn strdup(__s: [*c]const u8) [*c]u8;
pub extern fn strndup(__string: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strchrnul(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strcspn(__s: [*c]const u8, __reject: [*c]const u8) c_ulong;
pub extern fn strspn(__s: [*c]const u8, __accept: [*c]const u8) c_ulong;
pub extern fn strpbrk(__s: [*c]const u8, __accept: [*c]const u8) [*c]u8;
pub extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn strtok(__s: [*c]u8, __delim: [*c]const u8) [*c]u8;
pub extern fn __strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strcasestr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn memmem(__haystack: ?*const anyopaque, __haystacklen: usize, __needle: ?*const anyopaque, __needlelen: usize) ?*anyopaque;
pub extern fn __mempcpy(noalias __dest: ?*anyopaque, noalias __src: ?*const anyopaque, __n: usize) ?*anyopaque;
pub extern fn mempcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn strlen(__s: [*c]const u8) c_ulong;
pub extern fn strnlen(__string: [*c]const u8, __maxlen: usize) usize;
pub extern fn strerror(__errnum: c_int) [*c]u8;
pub extern fn strerror_r(__errnum: c_int, __buf: [*c]u8, __buflen: usize) [*c]u8;
pub extern fn strerrordesc_np(__err: c_int) [*c]const u8;
pub extern fn strerrorname_np(__err: c_int) [*c]const u8;
pub extern fn strerror_l(__errnum: c_int, __l: locale_t) [*c]u8;
pub extern fn bcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn bcopy(__src: ?*const anyopaque, __dest: ?*anyopaque, __n: c_ulong) void;
pub extern fn bzero(__s: ?*anyopaque, __n: c_ulong) void;
pub extern fn index(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn rindex(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn ffs(__i: c_int) c_int;
pub extern fn ffsl(__l: c_long) c_int;
pub extern fn ffsll(__ll: c_longlong) c_int;
pub extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncasecmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __loc: locale_t) c_int;
pub extern fn strncasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize, __loc: locale_t) c_int;
pub extern fn explicit_bzero(__s: ?*anyopaque, __n: usize) void;
pub extern fn strsep(noalias __stringp: [*c][*c]u8, noalias __delim: [*c]const u8) [*c]u8;
pub extern fn strsignal(__sig: c_int) [*c]u8;
pub extern fn sigabbrev_np(__sig: c_int) [*c]const u8;
pub extern fn sigdescr_np(__sig: c_int) [*c]const u8;
pub extern fn __stpcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
pub extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn __stpncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
pub extern fn stpncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strlcpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub extern fn strlcat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub extern fn strverscmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strfry(__string: [*c]u8) [*c]u8;
pub extern fn memfrob(__s: ?*anyopaque, __n: usize) ?*anyopaque;
pub extern fn basename(__filename: [*c]const u8) [*c]u8;
pub const int_least8_t = __int_least8_t;
pub const int_least16_t = __int_least16_t;
pub const int_least32_t = __int_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least8_t = __uint_least8_t;
pub const uint_least16_t = __uint_least16_t;
pub const uint_least32_t = __uint_least32_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub const __gwchar_t = c_int;
pub const imaxdiv_t = extern struct {
    quot: c_long = @import("std").mem.zeroes(c_long),
    rem: c_long = @import("std").mem.zeroes(c_long),
};
pub extern fn imaxabs(__n: intmax_t) intmax_t;
pub extern fn imaxdiv(__numer: intmax_t, __denom: intmax_t) imaxdiv_t;
pub extern fn strtoimax(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) intmax_t;
pub extern fn strtoumax(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) uintmax_t;
pub extern fn wcstoimax(noalias __nptr: [*c]const __gwchar_t, noalias __endptr: [*c][*c]__gwchar_t, __base: c_int) intmax_t;
pub extern fn wcstoumax(noalias __nptr: [*c]const __gwchar_t, noalias __endptr: [*c][*c]__gwchar_t, __base: c_int) uintmax_t;
pub const socklen_t = __socklen_t;
pub extern fn access(__name: [*c]const u8, __type: c_int) c_int;
pub extern fn euidaccess(__name: [*c]const u8, __type: c_int) c_int;
pub extern fn eaccess(__name: [*c]const u8, __type: c_int) c_int;
pub extern fn execveat(__fd: c_int, __path: [*c]const u8, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8, __flags: c_int) c_int;
pub extern fn faccessat(__fd: c_int, __file: [*c]const u8, __type: c_int, __flag: c_int) c_int;
pub extern fn lseek(__fd: c_int, __offset: __off_t, __whence: c_int) __off_t;
pub extern fn lseek64(__fd: c_int, __offset: __off64_t, __whence: c_int) __off64_t;
pub extern fn close(__fd: c_int) c_int;
pub extern fn closefrom(__lowfd: c_int) void;
pub extern fn read(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize) isize;
pub extern fn write(__fd: c_int, __buf: ?*const anyopaque, __n: usize) isize;
pub extern fn pread(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize, __offset: __off_t) isize;
pub extern fn pwrite(__fd: c_int, __buf: ?*const anyopaque, __n: usize, __offset: __off_t) isize;
pub extern fn pread64(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize, __offset: __off64_t) isize;
pub extern fn pwrite64(__fd: c_int, __buf: ?*const anyopaque, __n: usize, __offset: __off64_t) isize;
pub extern fn pipe(__pipedes: [*c]c_int) c_int;
pub extern fn pipe2(__pipedes: [*c]c_int, __flags: c_int) c_int;
pub extern fn alarm(__seconds: c_uint) c_uint;
pub extern fn sleep(__seconds: c_uint) c_uint;
pub extern fn ualarm(__value: __useconds_t, __interval: __useconds_t) __useconds_t;
pub extern fn usleep(__useconds: __useconds_t) c_int;
pub extern fn pause() c_int;
pub extern fn chown(__file: [*c]const u8, __owner: __uid_t, __group: __gid_t) c_int;
pub extern fn fchown(__fd: c_int, __owner: __uid_t, __group: __gid_t) c_int;
pub extern fn lchown(__file: [*c]const u8, __owner: __uid_t, __group: __gid_t) c_int;
pub extern fn fchownat(__fd: c_int, __file: [*c]const u8, __owner: __uid_t, __group: __gid_t, __flag: c_int) c_int;
pub extern fn chdir(__path: [*c]const u8) c_int;
pub extern fn fchdir(__fd: c_int) c_int;
pub extern fn getcwd(__buf: [*c]u8, __size: usize) [*c]u8;
pub extern fn get_current_dir_name() [*c]u8;
pub extern fn getwd(__buf: [*c]u8) [*c]u8;
pub extern fn dup(__fd: c_int) c_int;
pub extern fn dup2(__fd: c_int, __fd2: c_int) c_int;
pub extern fn dup3(__fd: c_int, __fd2: c_int, __flags: c_int) c_int;
pub extern var __environ: [*c][*c]u8;
pub extern var environ: [*c][*c]u8;
pub extern fn execve(__path: [*c]const u8, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
pub extern fn fexecve(__fd: c_int, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
pub extern fn execv(__path: [*c]const u8, __argv: [*c]const [*c]u8) c_int;
pub extern fn execle(__path: [*c]const u8, __arg: [*c]const u8, ...) c_int;
pub extern fn execl(__path: [*c]const u8, __arg: [*c]const u8, ...) c_int;
pub extern fn execvp(__file: [*c]const u8, __argv: [*c]const [*c]u8) c_int;
pub extern fn execlp(__file: [*c]const u8, __arg: [*c]const u8, ...) c_int;
pub extern fn execvpe(__file: [*c]const u8, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
pub extern fn nice(__inc: c_int) c_int;
pub extern fn _exit(__status: c_int) noreturn;
pub const _PC_LINK_MAX: c_int = 0;
pub const _PC_MAX_CANON: c_int = 1;
pub const _PC_MAX_INPUT: c_int = 2;
pub const _PC_NAME_MAX: c_int = 3;
pub const _PC_PATH_MAX: c_int = 4;
pub const _PC_PIPE_BUF: c_int = 5;
pub const _PC_CHOWN_RESTRICTED: c_int = 6;
pub const _PC_NO_TRUNC: c_int = 7;
pub const _PC_VDISABLE: c_int = 8;
pub const _PC_SYNC_IO: c_int = 9;
pub const _PC_ASYNC_IO: c_int = 10;
pub const _PC_PRIO_IO: c_int = 11;
pub const _PC_SOCK_MAXBUF: c_int = 12;
pub const _PC_FILESIZEBITS: c_int = 13;
pub const _PC_REC_INCR_XFER_SIZE: c_int = 14;
pub const _PC_REC_MAX_XFER_SIZE: c_int = 15;
pub const _PC_REC_MIN_XFER_SIZE: c_int = 16;
pub const _PC_REC_XFER_ALIGN: c_int = 17;
pub const _PC_ALLOC_SIZE_MIN: c_int = 18;
pub const _PC_SYMLINK_MAX: c_int = 19;
pub const _PC_2_SYMLINKS: c_int = 20;
const enum_unnamed_5 = c_uint;
pub const _SC_ARG_MAX: c_int = 0;
pub const _SC_CHILD_MAX: c_int = 1;
pub const _SC_CLK_TCK: c_int = 2;
pub const _SC_NGROUPS_MAX: c_int = 3;
pub const _SC_OPEN_MAX: c_int = 4;
pub const _SC_STREAM_MAX: c_int = 5;
pub const _SC_TZNAME_MAX: c_int = 6;
pub const _SC_JOB_CONTROL: c_int = 7;
pub const _SC_SAVED_IDS: c_int = 8;
pub const _SC_REALTIME_SIGNALS: c_int = 9;
pub const _SC_PRIORITY_SCHEDULING: c_int = 10;
pub const _SC_TIMERS: c_int = 11;
pub const _SC_ASYNCHRONOUS_IO: c_int = 12;
pub const _SC_PRIORITIZED_IO: c_int = 13;
pub const _SC_SYNCHRONIZED_IO: c_int = 14;
pub const _SC_FSYNC: c_int = 15;
pub const _SC_MAPPED_FILES: c_int = 16;
pub const _SC_MEMLOCK: c_int = 17;
pub const _SC_MEMLOCK_RANGE: c_int = 18;
pub const _SC_MEMORY_PROTECTION: c_int = 19;
pub const _SC_MESSAGE_PASSING: c_int = 20;
pub const _SC_SEMAPHORES: c_int = 21;
pub const _SC_SHARED_MEMORY_OBJECTS: c_int = 22;
pub const _SC_AIO_LISTIO_MAX: c_int = 23;
pub const _SC_AIO_MAX: c_int = 24;
pub const _SC_AIO_PRIO_DELTA_MAX: c_int = 25;
pub const _SC_DELAYTIMER_MAX: c_int = 26;
pub const _SC_MQ_OPEN_MAX: c_int = 27;
pub const _SC_MQ_PRIO_MAX: c_int = 28;
pub const _SC_VERSION: c_int = 29;
pub const _SC_PAGESIZE: c_int = 30;
pub const _SC_RTSIG_MAX: c_int = 31;
pub const _SC_SEM_NSEMS_MAX: c_int = 32;
pub const _SC_SEM_VALUE_MAX: c_int = 33;
pub const _SC_SIGQUEUE_MAX: c_int = 34;
pub const _SC_TIMER_MAX: c_int = 35;
pub const _SC_BC_BASE_MAX: c_int = 36;
pub const _SC_BC_DIM_MAX: c_int = 37;
pub const _SC_BC_SCALE_MAX: c_int = 38;
pub const _SC_BC_STRING_MAX: c_int = 39;
pub const _SC_COLL_WEIGHTS_MAX: c_int = 40;
pub const _SC_EQUIV_CLASS_MAX: c_int = 41;
pub const _SC_EXPR_NEST_MAX: c_int = 42;
pub const _SC_LINE_MAX: c_int = 43;
pub const _SC_RE_DUP_MAX: c_int = 44;
pub const _SC_CHARCLASS_NAME_MAX: c_int = 45;
pub const _SC_2_VERSION: c_int = 46;
pub const _SC_2_C_BIND: c_int = 47;
pub const _SC_2_C_DEV: c_int = 48;
pub const _SC_2_FORT_DEV: c_int = 49;
pub const _SC_2_FORT_RUN: c_int = 50;
pub const _SC_2_SW_DEV: c_int = 51;
pub const _SC_2_LOCALEDEF: c_int = 52;
pub const _SC_PII: c_int = 53;
pub const _SC_PII_XTI: c_int = 54;
pub const _SC_PII_SOCKET: c_int = 55;
pub const _SC_PII_INTERNET: c_int = 56;
pub const _SC_PII_OSI: c_int = 57;
pub const _SC_POLL: c_int = 58;
pub const _SC_SELECT: c_int = 59;
pub const _SC_UIO_MAXIOV: c_int = 60;
pub const _SC_IOV_MAX: c_int = 60;
pub const _SC_PII_INTERNET_STREAM: c_int = 61;
pub const _SC_PII_INTERNET_DGRAM: c_int = 62;
pub const _SC_PII_OSI_COTS: c_int = 63;
pub const _SC_PII_OSI_CLTS: c_int = 64;
pub const _SC_PII_OSI_M: c_int = 65;
pub const _SC_T_IOV_MAX: c_int = 66;
pub const _SC_THREADS: c_int = 67;
pub const _SC_THREAD_SAFE_FUNCTIONS: c_int = 68;
pub const _SC_GETGR_R_SIZE_MAX: c_int = 69;
pub const _SC_GETPW_R_SIZE_MAX: c_int = 70;
pub const _SC_LOGIN_NAME_MAX: c_int = 71;
pub const _SC_TTY_NAME_MAX: c_int = 72;
pub const _SC_THREAD_DESTRUCTOR_ITERATIONS: c_int = 73;
pub const _SC_THREAD_KEYS_MAX: c_int = 74;
pub const _SC_THREAD_STACK_MIN: c_int = 75;
pub const _SC_THREAD_THREADS_MAX: c_int = 76;
pub const _SC_THREAD_ATTR_STACKADDR: c_int = 77;
pub const _SC_THREAD_ATTR_STACKSIZE: c_int = 78;
pub const _SC_THREAD_PRIORITY_SCHEDULING: c_int = 79;
pub const _SC_THREAD_PRIO_INHERIT: c_int = 80;
pub const _SC_THREAD_PRIO_PROTECT: c_int = 81;
pub const _SC_THREAD_PROCESS_SHARED: c_int = 82;
pub const _SC_NPROCESSORS_CONF: c_int = 83;
pub const _SC_NPROCESSORS_ONLN: c_int = 84;
pub const _SC_PHYS_PAGES: c_int = 85;
pub const _SC_AVPHYS_PAGES: c_int = 86;
pub const _SC_ATEXIT_MAX: c_int = 87;
pub const _SC_PASS_MAX: c_int = 88;
pub const _SC_XOPEN_VERSION: c_int = 89;
pub const _SC_XOPEN_XCU_VERSION: c_int = 90;
pub const _SC_XOPEN_UNIX: c_int = 91;
pub const _SC_XOPEN_CRYPT: c_int = 92;
pub const _SC_XOPEN_ENH_I18N: c_int = 93;
pub const _SC_XOPEN_SHM: c_int = 94;
pub const _SC_2_CHAR_TERM: c_int = 95;
pub const _SC_2_C_VERSION: c_int = 96;
pub const _SC_2_UPE: c_int = 97;
pub const _SC_XOPEN_XPG2: c_int = 98;
pub const _SC_XOPEN_XPG3: c_int = 99;
pub const _SC_XOPEN_XPG4: c_int = 100;
pub const _SC_CHAR_BIT: c_int = 101;
pub const _SC_CHAR_MAX: c_int = 102;
pub const _SC_CHAR_MIN: c_int = 103;
pub const _SC_INT_MAX: c_int = 104;
pub const _SC_INT_MIN: c_int = 105;
pub const _SC_LONG_BIT: c_int = 106;
pub const _SC_WORD_BIT: c_int = 107;
pub const _SC_MB_LEN_MAX: c_int = 108;
pub const _SC_NZERO: c_int = 109;
pub const _SC_SSIZE_MAX: c_int = 110;
pub const _SC_SCHAR_MAX: c_int = 111;
pub const _SC_SCHAR_MIN: c_int = 112;
pub const _SC_SHRT_MAX: c_int = 113;
pub const _SC_SHRT_MIN: c_int = 114;
pub const _SC_UCHAR_MAX: c_int = 115;
pub const _SC_UINT_MAX: c_int = 116;
pub const _SC_ULONG_MAX: c_int = 117;
pub const _SC_USHRT_MAX: c_int = 118;
pub const _SC_NL_ARGMAX: c_int = 119;
pub const _SC_NL_LANGMAX: c_int = 120;
pub const _SC_NL_MSGMAX: c_int = 121;
pub const _SC_NL_NMAX: c_int = 122;
pub const _SC_NL_SETMAX: c_int = 123;
pub const _SC_NL_TEXTMAX: c_int = 124;
pub const _SC_XBS5_ILP32_OFF32: c_int = 125;
pub const _SC_XBS5_ILP32_OFFBIG: c_int = 126;
pub const _SC_XBS5_LP64_OFF64: c_int = 127;
pub const _SC_XBS5_LPBIG_OFFBIG: c_int = 128;
pub const _SC_XOPEN_LEGACY: c_int = 129;
pub const _SC_XOPEN_REALTIME: c_int = 130;
pub const _SC_XOPEN_REALTIME_THREADS: c_int = 131;
pub const _SC_ADVISORY_INFO: c_int = 132;
pub const _SC_BARRIERS: c_int = 133;
pub const _SC_BASE: c_int = 134;
pub const _SC_C_LANG_SUPPORT: c_int = 135;
pub const _SC_C_LANG_SUPPORT_R: c_int = 136;
pub const _SC_CLOCK_SELECTION: c_int = 137;
pub const _SC_CPUTIME: c_int = 138;
pub const _SC_THREAD_CPUTIME: c_int = 139;
pub const _SC_DEVICE_IO: c_int = 140;
pub const _SC_DEVICE_SPECIFIC: c_int = 141;
pub const _SC_DEVICE_SPECIFIC_R: c_int = 142;
pub const _SC_FD_MGMT: c_int = 143;
pub const _SC_FIFO: c_int = 144;
pub const _SC_PIPE: c_int = 145;
pub const _SC_FILE_ATTRIBUTES: c_int = 146;
pub const _SC_FILE_LOCKING: c_int = 147;
pub const _SC_FILE_SYSTEM: c_int = 148;
pub const _SC_MONOTONIC_CLOCK: c_int = 149;
pub const _SC_MULTI_PROCESS: c_int = 150;
pub const _SC_SINGLE_PROCESS: c_int = 151;
pub const _SC_NETWORKING: c_int = 152;
pub const _SC_READER_WRITER_LOCKS: c_int = 153;
pub const _SC_SPIN_LOCKS: c_int = 154;
pub const _SC_REGEXP: c_int = 155;
pub const _SC_REGEX_VERSION: c_int = 156;
pub const _SC_SHELL: c_int = 157;
pub const _SC_SIGNALS: c_int = 158;
pub const _SC_SPAWN: c_int = 159;
pub const _SC_SPORADIC_SERVER: c_int = 160;
pub const _SC_THREAD_SPORADIC_SERVER: c_int = 161;
pub const _SC_SYSTEM_DATABASE: c_int = 162;
pub const _SC_SYSTEM_DATABASE_R: c_int = 163;
pub const _SC_TIMEOUTS: c_int = 164;
pub const _SC_TYPED_MEMORY_OBJECTS: c_int = 165;
pub const _SC_USER_GROUPS: c_int = 166;
pub const _SC_USER_GROUPS_R: c_int = 167;
pub const _SC_2_PBS: c_int = 168;
pub const _SC_2_PBS_ACCOUNTING: c_int = 169;
pub const _SC_2_PBS_LOCATE: c_int = 170;
pub const _SC_2_PBS_MESSAGE: c_int = 171;
pub const _SC_2_PBS_TRACK: c_int = 172;
pub const _SC_SYMLOOP_MAX: c_int = 173;
pub const _SC_STREAMS: c_int = 174;
pub const _SC_2_PBS_CHECKPOINT: c_int = 175;
pub const _SC_V6_ILP32_OFF32: c_int = 176;
pub const _SC_V6_ILP32_OFFBIG: c_int = 177;
pub const _SC_V6_LP64_OFF64: c_int = 178;
pub const _SC_V6_LPBIG_OFFBIG: c_int = 179;
pub const _SC_HOST_NAME_MAX: c_int = 180;
pub const _SC_TRACE: c_int = 181;
pub const _SC_TRACE_EVENT_FILTER: c_int = 182;
pub const _SC_TRACE_INHERIT: c_int = 183;
pub const _SC_TRACE_LOG: c_int = 184;
pub const _SC_LEVEL1_ICACHE_SIZE: c_int = 185;
pub const _SC_LEVEL1_ICACHE_ASSOC: c_int = 186;
pub const _SC_LEVEL1_ICACHE_LINESIZE: c_int = 187;
pub const _SC_LEVEL1_DCACHE_SIZE: c_int = 188;
pub const _SC_LEVEL1_DCACHE_ASSOC: c_int = 189;
pub const _SC_LEVEL1_DCACHE_LINESIZE: c_int = 190;
pub const _SC_LEVEL2_CACHE_SIZE: c_int = 191;
pub const _SC_LEVEL2_CACHE_ASSOC: c_int = 192;
pub const _SC_LEVEL2_CACHE_LINESIZE: c_int = 193;
pub const _SC_LEVEL3_CACHE_SIZE: c_int = 194;
pub const _SC_LEVEL3_CACHE_ASSOC: c_int = 195;
pub const _SC_LEVEL3_CACHE_LINESIZE: c_int = 196;
pub const _SC_LEVEL4_CACHE_SIZE: c_int = 197;
pub const _SC_LEVEL4_CACHE_ASSOC: c_int = 198;
pub const _SC_LEVEL4_CACHE_LINESIZE: c_int = 199;
pub const _SC_IPV6: c_int = 235;
pub const _SC_RAW_SOCKETS: c_int = 236;
pub const _SC_V7_ILP32_OFF32: c_int = 237;
pub const _SC_V7_ILP32_OFFBIG: c_int = 238;
pub const _SC_V7_LP64_OFF64: c_int = 239;
pub const _SC_V7_LPBIG_OFFBIG: c_int = 240;
pub const _SC_SS_REPL_MAX: c_int = 241;
pub const _SC_TRACE_EVENT_NAME_MAX: c_int = 242;
pub const _SC_TRACE_NAME_MAX: c_int = 243;
pub const _SC_TRACE_SYS_MAX: c_int = 244;
pub const _SC_TRACE_USER_EVENT_MAX: c_int = 245;
pub const _SC_XOPEN_STREAMS: c_int = 246;
pub const _SC_THREAD_ROBUST_PRIO_INHERIT: c_int = 247;
pub const _SC_THREAD_ROBUST_PRIO_PROTECT: c_int = 248;
pub const _SC_MINSIGSTKSZ: c_int = 249;
pub const _SC_SIGSTKSZ: c_int = 250;
const enum_unnamed_6 = c_uint;
pub const _CS_PATH: c_int = 0;
pub const _CS_V6_WIDTH_RESTRICTED_ENVS: c_int = 1;
pub const _CS_GNU_LIBC_VERSION: c_int = 2;
pub const _CS_GNU_LIBPTHREAD_VERSION: c_int = 3;
pub const _CS_V5_WIDTH_RESTRICTED_ENVS: c_int = 4;
pub const _CS_V7_WIDTH_RESTRICTED_ENVS: c_int = 5;
pub const _CS_LFS_CFLAGS: c_int = 1000;
pub const _CS_LFS_LDFLAGS: c_int = 1001;
pub const _CS_LFS_LIBS: c_int = 1002;
pub const _CS_LFS_LINTFLAGS: c_int = 1003;
pub const _CS_LFS64_CFLAGS: c_int = 1004;
pub const _CS_LFS64_LDFLAGS: c_int = 1005;
pub const _CS_LFS64_LIBS: c_int = 1006;
pub const _CS_LFS64_LINTFLAGS: c_int = 1007;
pub const _CS_XBS5_ILP32_OFF32_CFLAGS: c_int = 1100;
pub const _CS_XBS5_ILP32_OFF32_LDFLAGS: c_int = 1101;
pub const _CS_XBS5_ILP32_OFF32_LIBS: c_int = 1102;
pub const _CS_XBS5_ILP32_OFF32_LINTFLAGS: c_int = 1103;
pub const _CS_XBS5_ILP32_OFFBIG_CFLAGS: c_int = 1104;
pub const _CS_XBS5_ILP32_OFFBIG_LDFLAGS: c_int = 1105;
pub const _CS_XBS5_ILP32_OFFBIG_LIBS: c_int = 1106;
pub const _CS_XBS5_ILP32_OFFBIG_LINTFLAGS: c_int = 1107;
pub const _CS_XBS5_LP64_OFF64_CFLAGS: c_int = 1108;
pub const _CS_XBS5_LP64_OFF64_LDFLAGS: c_int = 1109;
pub const _CS_XBS5_LP64_OFF64_LIBS: c_int = 1110;
pub const _CS_XBS5_LP64_OFF64_LINTFLAGS: c_int = 1111;
pub const _CS_XBS5_LPBIG_OFFBIG_CFLAGS: c_int = 1112;
pub const _CS_XBS5_LPBIG_OFFBIG_LDFLAGS: c_int = 1113;
pub const _CS_XBS5_LPBIG_OFFBIG_LIBS: c_int = 1114;
pub const _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS: c_int = 1115;
pub const _CS_POSIX_V6_ILP32_OFF32_CFLAGS: c_int = 1116;
pub const _CS_POSIX_V6_ILP32_OFF32_LDFLAGS: c_int = 1117;
pub const _CS_POSIX_V6_ILP32_OFF32_LIBS: c_int = 1118;
pub const _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS: c_int = 1119;
pub const _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS: c_int = 1120;
pub const _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS: c_int = 1121;
pub const _CS_POSIX_V6_ILP32_OFFBIG_LIBS: c_int = 1122;
pub const _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS: c_int = 1123;
pub const _CS_POSIX_V6_LP64_OFF64_CFLAGS: c_int = 1124;
pub const _CS_POSIX_V6_LP64_OFF64_LDFLAGS: c_int = 1125;
pub const _CS_POSIX_V6_LP64_OFF64_LIBS: c_int = 1126;
pub const _CS_POSIX_V6_LP64_OFF64_LINTFLAGS: c_int = 1127;
pub const _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS: c_int = 1128;
pub const _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS: c_int = 1129;
pub const _CS_POSIX_V6_LPBIG_OFFBIG_LIBS: c_int = 1130;
pub const _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS: c_int = 1131;
pub const _CS_POSIX_V7_ILP32_OFF32_CFLAGS: c_int = 1132;
pub const _CS_POSIX_V7_ILP32_OFF32_LDFLAGS: c_int = 1133;
pub const _CS_POSIX_V7_ILP32_OFF32_LIBS: c_int = 1134;
pub const _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS: c_int = 1135;
pub const _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS: c_int = 1136;
pub const _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS: c_int = 1137;
pub const _CS_POSIX_V7_ILP32_OFFBIG_LIBS: c_int = 1138;
pub const _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS: c_int = 1139;
pub const _CS_POSIX_V7_LP64_OFF64_CFLAGS: c_int = 1140;
pub const _CS_POSIX_V7_LP64_OFF64_LDFLAGS: c_int = 1141;
pub const _CS_POSIX_V7_LP64_OFF64_LIBS: c_int = 1142;
pub const _CS_POSIX_V7_LP64_OFF64_LINTFLAGS: c_int = 1143;
pub const _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS: c_int = 1144;
pub const _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS: c_int = 1145;
pub const _CS_POSIX_V7_LPBIG_OFFBIG_LIBS: c_int = 1146;
pub const _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS: c_int = 1147;
pub const _CS_V6_ENV: c_int = 1148;
pub const _CS_V7_ENV: c_int = 1149;
const enum_unnamed_7 = c_uint;
pub extern fn pathconf(__path: [*c]const u8, __name: c_int) c_long;
pub extern fn fpathconf(__fd: c_int, __name: c_int) c_long;
pub extern fn sysconf(__name: c_int) c_long;
pub extern fn confstr(__name: c_int, __buf: [*c]u8, __len: usize) usize;
pub extern fn getpid() __pid_t;
pub extern fn getppid() __pid_t;
pub extern fn getpgrp() __pid_t;
pub extern fn __getpgid(__pid: __pid_t) __pid_t;
pub extern fn getpgid(__pid: __pid_t) __pid_t;
pub extern fn setpgid(__pid: __pid_t, __pgid: __pid_t) c_int;
pub extern fn setpgrp() c_int;
pub extern fn setsid() __pid_t;
pub extern fn getsid(__pid: __pid_t) __pid_t;
pub extern fn getuid() __uid_t;
pub extern fn geteuid() __uid_t;
pub extern fn getgid() __gid_t;
pub extern fn getegid() __gid_t;
pub extern fn getgroups(__size: c_int, __list: [*c]__gid_t) c_int;
pub extern fn group_member(__gid: __gid_t) c_int;
pub extern fn setuid(__uid: __uid_t) c_int;
pub extern fn setreuid(__ruid: __uid_t, __euid: __uid_t) c_int;
pub extern fn seteuid(__uid: __uid_t) c_int;
pub extern fn setgid(__gid: __gid_t) c_int;
pub extern fn setregid(__rgid: __gid_t, __egid: __gid_t) c_int;
pub extern fn setegid(__gid: __gid_t) c_int;
pub extern fn getresuid(__ruid: [*c]__uid_t, __euid: [*c]__uid_t, __suid: [*c]__uid_t) c_int;
pub extern fn getresgid(__rgid: [*c]__gid_t, __egid: [*c]__gid_t, __sgid: [*c]__gid_t) c_int;
pub extern fn setresuid(__ruid: __uid_t, __euid: __uid_t, __suid: __uid_t) c_int;
pub extern fn setresgid(__rgid: __gid_t, __egid: __gid_t, __sgid: __gid_t) c_int;
pub extern fn fork() __pid_t;
pub extern fn vfork() c_int;
pub extern fn _Fork() __pid_t;
pub extern fn ttyname(__fd: c_int) [*c]u8;
pub extern fn ttyname_r(__fd: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn isatty(__fd: c_int) c_int;
pub extern fn ttyslot() c_int;
pub extern fn link(__from: [*c]const u8, __to: [*c]const u8) c_int;
pub extern fn linkat(__fromfd: c_int, __from: [*c]const u8, __tofd: c_int, __to: [*c]const u8, __flags: c_int) c_int;
pub extern fn symlink(__from: [*c]const u8, __to: [*c]const u8) c_int;
pub extern fn readlink(noalias __path: [*c]const u8, noalias __buf: [*c]u8, __len: usize) isize;
pub extern fn symlinkat(__from: [*c]const u8, __tofd: c_int, __to: [*c]const u8) c_int;
pub extern fn readlinkat(__fd: c_int, noalias __path: [*c]const u8, noalias __buf: [*c]u8, __len: usize) isize;
pub extern fn unlink(__name: [*c]const u8) c_int;
pub extern fn unlinkat(__fd: c_int, __name: [*c]const u8, __flag: c_int) c_int;
pub extern fn rmdir(__path: [*c]const u8) c_int;
pub extern fn tcgetpgrp(__fd: c_int) __pid_t;
pub extern fn tcsetpgrp(__fd: c_int, __pgrp_id: __pid_t) c_int;
pub extern fn getlogin() [*c]u8;
pub extern fn getlogin_r(__name: [*c]u8, __name_len: usize) c_int;
pub extern fn setlogin(__name: [*c]const u8) c_int;
pub extern var optarg: [*c]u8;
pub extern var optind: c_int;
pub extern var opterr: c_int;
pub extern var optopt: c_int;
pub extern fn getopt(___argc: c_int, ___argv: [*c]const [*c]u8, __shortopts: [*c]const u8) c_int;
pub extern fn gethostname(__name: [*c]u8, __len: usize) c_int;
pub extern fn sethostname(__name: [*c]const u8, __len: usize) c_int;
pub extern fn sethostid(__id: c_long) c_int;
pub extern fn getdomainname(__name: [*c]u8, __len: usize) c_int;
pub extern fn setdomainname(__name: [*c]const u8, __len: usize) c_int;
pub extern fn vhangup() c_int;
pub extern fn revoke(__file: [*c]const u8) c_int;
pub extern fn profil(__sample_buffer: [*c]c_ushort, __size: usize, __offset: usize, __scale: c_uint) c_int;
pub extern fn acct(__name: [*c]const u8) c_int;
pub extern fn getusershell() [*c]u8;
pub extern fn endusershell() void;
pub extern fn setusershell() void;
pub extern fn daemon(__nochdir: c_int, __noclose: c_int) c_int;
pub extern fn chroot(__path: [*c]const u8) c_int;
pub extern fn getpass(__prompt: [*c]const u8) [*c]u8;
pub extern fn fsync(__fd: c_int) c_int;
pub extern fn syncfs(__fd: c_int) c_int;
pub extern fn gethostid() c_long;
pub extern fn sync() void;
pub extern fn getpagesize() c_int;
pub extern fn getdtablesize() c_int;
pub extern fn truncate(__file: [*c]const u8, __length: __off_t) c_int;
pub extern fn truncate64(__file: [*c]const u8, __length: __off64_t) c_int;
pub extern fn ftruncate(__fd: c_int, __length: __off_t) c_int;
pub extern fn ftruncate64(__fd: c_int, __length: __off64_t) c_int;
pub extern fn brk(__addr: ?*anyopaque) c_int;
pub extern fn sbrk(__delta: isize) ?*anyopaque;
pub extern fn syscall(__sysno: c_long, ...) c_long;
pub extern fn lockf(__fd: c_int, __cmd: c_int, __len: __off_t) c_int;
pub extern fn lockf64(__fd: c_int, __cmd: c_int, __len: __off64_t) c_int;
pub extern fn copy_file_range(__infd: c_int, __pinoff: [*c]__off64_t, __outfd: c_int, __poutoff: [*c]__off64_t, __length: usize, __flags: c_uint) isize;
pub extern fn fdatasync(__fildes: c_int) c_int;
pub extern fn crypt(__key: [*c]const u8, __salt: [*c]const u8) [*c]u8;
pub extern fn swab(noalias __from: ?*const anyopaque, noalias __to: ?*anyopaque, __n: isize) void;
pub extern fn getentropy(__buffer: ?*anyopaque, __length: usize) c_int;
pub extern fn close_range(__fd: c_uint, __max_fd: c_uint, __flags: c_int) c_int;
pub extern fn gettid() __pid_t;
pub extern fn ruby_xmalloc(size: usize) ?*anyopaque;
pub extern fn ruby_xmalloc2(nelems: usize, elemsiz: usize) ?*anyopaque;
pub extern fn ruby_xcalloc(nelems: usize, elemsiz: usize) ?*anyopaque;
pub extern fn ruby_xrealloc(ptr: ?*anyopaque, newsiz: usize) ?*anyopaque;
pub extern fn ruby_xrealloc2(ptr: ?*anyopaque, newelems: usize, newsiz: usize) ?*anyopaque;
pub extern fn ruby_xfree(ptr: ?*anyopaque) void;
pub extern fn rb_assert_failure(file: [*c]const u8, line: c_int, name: [*c]const u8, expr: [*c]const u8) noreturn;
pub extern fn rb_assert_failure_detail(file: [*c]const u8, line: c_int, name: [*c]const u8, expr: [*c]const u8, fmt: [*c]const u8, ...) noreturn;
pub const float_t = f32;
pub const double_t = f64;
pub const FP_INT_UPWARD: c_int = 0;
pub const FP_INT_DOWNWARD: c_int = 1;
pub const FP_INT_TOWARDZERO: c_int = 2;
pub const FP_INT_TONEARESTFROMZERO: c_int = 3;
pub const FP_INT_TONEAREST: c_int = 4;
const enum_unnamed_8 = c_uint;
pub extern fn __fpclassify(__value: f64) c_int;
pub extern fn __signbit(__value: f64) c_int;
pub extern fn __isinf(__value: f64) c_int;
pub extern fn __finite(__value: f64) c_int;
pub extern fn __isnan(__value: f64) c_int;
pub extern fn __iseqsig(__x: f64, __y: f64) c_int;
pub extern fn __issignaling(__value: f64) c_int;
pub extern fn acos(__x: f64) f64;
pub extern fn __acos(__x: f64) f64;
pub extern fn asin(__x: f64) f64;
pub extern fn __asin(__x: f64) f64;
pub extern fn atan(__x: f64) f64;
pub extern fn __atan(__x: f64) f64;
pub extern fn atan2(__y: f64, __x: f64) f64;
pub extern fn __atan2(__y: f64, __x: f64) f64;
pub extern fn cos(__x: f64) f64;
pub extern fn __cos(__x: f64) f64;
pub extern fn sin(__x: f64) f64;
pub extern fn __sin(__x: f64) f64;
pub extern fn tan(__x: f64) f64;
pub extern fn __tan(__x: f64) f64;
pub extern fn cosh(__x: f64) f64;
pub extern fn __cosh(__x: f64) f64;
pub extern fn sinh(__x: f64) f64;
pub extern fn __sinh(__x: f64) f64;
pub extern fn tanh(__x: f64) f64;
pub extern fn __tanh(__x: f64) f64;
pub extern fn sincos(__x: f64, __sinx: [*c]f64, __cosx: [*c]f64) void;
pub extern fn __sincos(__x: f64, __sinx: [*c]f64, __cosx: [*c]f64) void;
pub extern fn acosh(__x: f64) f64;
pub extern fn __acosh(__x: f64) f64;
pub extern fn asinh(__x: f64) f64;
pub extern fn __asinh(__x: f64) f64;
pub extern fn atanh(__x: f64) f64;
pub extern fn __atanh(__x: f64) f64;
pub extern fn exp(__x: f64) f64;
pub extern fn __exp(__x: f64) f64;
pub extern fn frexp(__x: f64, __exponent: [*c]c_int) f64;
pub extern fn __frexp(__x: f64, __exponent: [*c]c_int) f64;
pub extern fn ldexp(__x: f64, __exponent: c_int) f64;
pub extern fn __ldexp(__x: f64, __exponent: c_int) f64;
pub extern fn log(__x: f64) f64;
pub extern fn __log(__x: f64) f64;
pub extern fn log10(__x: f64) f64;
pub extern fn __log10(__x: f64) f64;
pub extern fn modf(__x: f64, __iptr: [*c]f64) f64;
pub extern fn __modf(__x: f64, __iptr: [*c]f64) f64;
pub extern fn exp10(__x: f64) f64;
pub extern fn __exp10(__x: f64) f64;
pub extern fn expm1(__x: f64) f64;
pub extern fn __expm1(__x: f64) f64;
pub extern fn log1p(__x: f64) f64;
pub extern fn __log1p(__x: f64) f64;
pub extern fn logb(__x: f64) f64;
pub extern fn __logb(__x: f64) f64;
pub extern fn exp2(__x: f64) f64;
pub extern fn __exp2(__x: f64) f64;
pub extern fn log2(__x: f64) f64;
pub extern fn __log2(__x: f64) f64;
pub extern fn pow(__x: f64, __y: f64) f64;
pub extern fn __pow(__x: f64, __y: f64) f64;
pub extern fn sqrt(__x: f64) f64;
pub extern fn __sqrt(__x: f64) f64;
pub extern fn hypot(__x: f64, __y: f64) f64;
pub extern fn __hypot(__x: f64, __y: f64) f64;
pub extern fn cbrt(__x: f64) f64;
pub extern fn __cbrt(__x: f64) f64;
pub extern fn ceil(__x: f64) f64;
pub extern fn __ceil(__x: f64) f64;
pub extern fn fabs(__x: f64) f64;
pub extern fn __fabs(__x: f64) f64;
pub extern fn floor(__x: f64) f64;
pub extern fn __floor(__x: f64) f64;
pub extern fn fmod(__x: f64, __y: f64) f64;
pub extern fn __fmod(__x: f64, __y: f64) f64;
pub extern fn isinf(__value: f64) c_int;
pub extern fn finite(__value: f64) c_int;
pub extern fn drem(__x: f64, __y: f64) f64;
pub extern fn __drem(__x: f64, __y: f64) f64;
pub extern fn significand(__x: f64) f64;
pub extern fn __significand(__x: f64) f64;
pub extern fn copysign(__x: f64, __y: f64) f64;
pub extern fn __copysign(__x: f64, __y: f64) f64;
pub extern fn nan(__tagb: [*c]const u8) f64;
pub extern fn __nan(__tagb: [*c]const u8) f64;
pub extern fn isnan(__value: f64) c_int;
pub extern fn j0(f64) f64;
pub extern fn __j0(f64) f64;
pub extern fn j1(f64) f64;
pub extern fn __j1(f64) f64;
pub extern fn jn(c_int, f64) f64;
pub extern fn __jn(c_int, f64) f64;
pub extern fn y0(f64) f64;
pub extern fn __y0(f64) f64;
pub extern fn y1(f64) f64;
pub extern fn __y1(f64) f64;
pub extern fn yn(c_int, f64) f64;
pub extern fn __yn(c_int, f64) f64;
pub extern fn erf(f64) f64;
pub extern fn __erf(f64) f64;
pub extern fn erfc(f64) f64;
pub extern fn __erfc(f64) f64;
pub extern fn lgamma(f64) f64;
pub extern fn __lgamma(f64) f64;
pub extern fn tgamma(f64) f64;
pub extern fn __tgamma(f64) f64;
pub extern fn gamma(f64) f64;
pub extern fn __gamma(f64) f64;
pub extern fn lgamma_r(f64, __signgamp: [*c]c_int) f64;
pub extern fn __lgamma_r(f64, __signgamp: [*c]c_int) f64;
pub extern fn rint(__x: f64) f64;
pub extern fn __rint(__x: f64) f64;
pub extern fn nextafter(__x: f64, __y: f64) f64;
pub extern fn __nextafter(__x: f64, __y: f64) f64;
pub extern fn nexttoward(__x: f64, __y: c_longdouble) f64;
pub extern fn __nexttoward(__x: f64, __y: c_longdouble) f64;
pub extern fn nextdown(__x: f64) f64;
pub extern fn __nextdown(__x: f64) f64;
pub extern fn nextup(__x: f64) f64;
pub extern fn __nextup(__x: f64) f64;
pub extern fn remainder(__x: f64, __y: f64) f64;
pub extern fn __remainder(__x: f64, __y: f64) f64;
pub extern fn scalbn(__x: f64, __n: c_int) f64;
pub extern fn __scalbn(__x: f64, __n: c_int) f64;
pub extern fn ilogb(__x: f64) c_int;
pub extern fn __ilogb(__x: f64) c_int;
pub extern fn llogb(__x: f64) c_long;
pub extern fn __llogb(__x: f64) c_long;
pub extern fn scalbln(__x: f64, __n: c_long) f64;
pub extern fn __scalbln(__x: f64, __n: c_long) f64;
pub extern fn nearbyint(__x: f64) f64;
pub extern fn __nearbyint(__x: f64) f64;
pub extern fn round(__x: f64) f64;
pub extern fn __round(__x: f64) f64;
pub extern fn trunc(__x: f64) f64;
pub extern fn __trunc(__x: f64) f64;
pub extern fn remquo(__x: f64, __y: f64, __quo: [*c]c_int) f64;
pub extern fn __remquo(__x: f64, __y: f64, __quo: [*c]c_int) f64;
pub extern fn lrint(__x: f64) c_long;
pub extern fn __lrint(__x: f64) c_long;
pub extern fn llrint(__x: f64) c_longlong;
pub extern fn __llrint(__x: f64) c_longlong;
pub extern fn lround(__x: f64) c_long;
pub extern fn __lround(__x: f64) c_long;
pub extern fn llround(__x: f64) c_longlong;
pub extern fn __llround(__x: f64) c_longlong;
pub extern fn fdim(__x: f64, __y: f64) f64;
pub extern fn __fdim(__x: f64, __y: f64) f64;
pub extern fn fmax(__x: f64, __y: f64) f64;
pub extern fn __fmax(__x: f64, __y: f64) f64;
pub extern fn fmin(__x: f64, __y: f64) f64;
pub extern fn __fmin(__x: f64, __y: f64) f64;
pub extern fn fma(__x: f64, __y: f64, __z: f64) f64;
pub extern fn __fma(__x: f64, __y: f64, __z: f64) f64;
pub extern fn roundeven(__x: f64) f64;
pub extern fn __roundeven(__x: f64) f64;
pub extern fn fromfp(__x: f64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfp(__x: f64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfp(__x: f64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfp(__x: f64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn fromfpx(__x: f64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpx(__x: f64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpx(__x: f64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpx(__x: f64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn canonicalize(__cx: [*c]f64, __x: [*c]const f64) c_int;
pub extern fn fmaxmag(__x: f64, __y: f64) f64;
pub extern fn __fmaxmag(__x: f64, __y: f64) f64;
pub extern fn fminmag(__x: f64, __y: f64) f64;
pub extern fn __fminmag(__x: f64, __y: f64) f64;
pub extern fn fmaximum(__x: f64, __y: f64) f64;
pub extern fn __fmaximum(__x: f64, __y: f64) f64;
pub extern fn fminimum(__x: f64, __y: f64) f64;
pub extern fn __fminimum(__x: f64, __y: f64) f64;
pub extern fn fmaximum_num(__x: f64, __y: f64) f64;
pub extern fn __fmaximum_num(__x: f64, __y: f64) f64;
pub extern fn fminimum_num(__x: f64, __y: f64) f64;
pub extern fn __fminimum_num(__x: f64, __y: f64) f64;
pub extern fn fmaximum_mag(__x: f64, __y: f64) f64;
pub extern fn __fmaximum_mag(__x: f64, __y: f64) f64;
pub extern fn fminimum_mag(__x: f64, __y: f64) f64;
pub extern fn __fminimum_mag(__x: f64, __y: f64) f64;
pub extern fn fmaximum_mag_num(__x: f64, __y: f64) f64;
pub extern fn __fmaximum_mag_num(__x: f64, __y: f64) f64;
pub extern fn fminimum_mag_num(__x: f64, __y: f64) f64;
pub extern fn __fminimum_mag_num(__x: f64, __y: f64) f64;
pub extern fn totalorder(__x: [*c]const f64, __y: [*c]const f64) c_int;
pub extern fn totalordermag(__x: [*c]const f64, __y: [*c]const f64) c_int;
pub extern fn getpayload(__x: [*c]const f64) f64;
pub extern fn __getpayload(__x: [*c]const f64) f64;
pub extern fn setpayload(__x: [*c]f64, __payload: f64) c_int;
pub extern fn setpayloadsig(__x: [*c]f64, __payload: f64) c_int;
pub extern fn scalb(__x: f64, __n: f64) f64;
pub extern fn __scalb(__x: f64, __n: f64) f64;
pub extern fn __fpclassifyf(__value: f32) c_int;
pub extern fn __signbitf(__value: f32) c_int;
pub extern fn __isinff(__value: f32) c_int;
pub extern fn __finitef(__value: f32) c_int;
pub extern fn __isnanf(__value: f32) c_int;
pub extern fn __iseqsigf(__x: f32, __y: f32) c_int;
pub extern fn __issignalingf(__value: f32) c_int;
pub extern fn acosf(__x: f32) f32;
pub extern fn __acosf(__x: f32) f32;
pub extern fn asinf(__x: f32) f32;
pub extern fn __asinf(__x: f32) f32;
pub extern fn atanf(__x: f32) f32;
pub extern fn __atanf(__x: f32) f32;
pub extern fn atan2f(__y: f32, __x: f32) f32;
pub extern fn __atan2f(__y: f32, __x: f32) f32;
pub extern fn cosf(__x: f32) f32;
pub extern fn __cosf(__x: f32) f32;
pub extern fn sinf(__x: f32) f32;
pub extern fn __sinf(__x: f32) f32;
pub extern fn tanf(__x: f32) f32;
pub extern fn __tanf(__x: f32) f32;
pub extern fn coshf(__x: f32) f32;
pub extern fn __coshf(__x: f32) f32;
pub extern fn sinhf(__x: f32) f32;
pub extern fn __sinhf(__x: f32) f32;
pub extern fn tanhf(__x: f32) f32;
pub extern fn __tanhf(__x: f32) f32;
pub extern fn sincosf(__x: f32, __sinx: [*c]f32, __cosx: [*c]f32) void;
pub extern fn __sincosf(__x: f32, __sinx: [*c]f32, __cosx: [*c]f32) void;
pub extern fn acoshf(__x: f32) f32;
pub extern fn __acoshf(__x: f32) f32;
pub extern fn asinhf(__x: f32) f32;
pub extern fn __asinhf(__x: f32) f32;
pub extern fn atanhf(__x: f32) f32;
pub extern fn __atanhf(__x: f32) f32;
pub extern fn expf(__x: f32) f32;
pub extern fn __expf(__x: f32) f32;
pub extern fn frexpf(__x: f32, __exponent: [*c]c_int) f32;
pub extern fn __frexpf(__x: f32, __exponent: [*c]c_int) f32;
pub extern fn ldexpf(__x: f32, __exponent: c_int) f32;
pub extern fn __ldexpf(__x: f32, __exponent: c_int) f32;
pub extern fn logf(__x: f32) f32;
pub extern fn __logf(__x: f32) f32;
pub extern fn log10f(__x: f32) f32;
pub extern fn __log10f(__x: f32) f32;
pub extern fn modff(__x: f32, __iptr: [*c]f32) f32;
pub extern fn __modff(__x: f32, __iptr: [*c]f32) f32;
pub extern fn exp10f(__x: f32) f32;
pub extern fn __exp10f(__x: f32) f32;
pub extern fn expm1f(__x: f32) f32;
pub extern fn __expm1f(__x: f32) f32;
pub extern fn log1pf(__x: f32) f32;
pub extern fn __log1pf(__x: f32) f32;
pub extern fn logbf(__x: f32) f32;
pub extern fn __logbf(__x: f32) f32;
pub extern fn exp2f(__x: f32) f32;
pub extern fn __exp2f(__x: f32) f32;
pub extern fn log2f(__x: f32) f32;
pub extern fn __log2f(__x: f32) f32;
pub extern fn powf(__x: f32, __y: f32) f32;
pub extern fn __powf(__x: f32, __y: f32) f32;
pub extern fn sqrtf(__x: f32) f32;
pub extern fn __sqrtf(__x: f32) f32;
pub extern fn hypotf(__x: f32, __y: f32) f32;
pub extern fn __hypotf(__x: f32, __y: f32) f32;
pub extern fn cbrtf(__x: f32) f32;
pub extern fn __cbrtf(__x: f32) f32;
pub extern fn ceilf(__x: f32) f32;
pub extern fn __ceilf(__x: f32) f32;
pub extern fn fabsf(__x: f32) f32;
pub extern fn __fabsf(__x: f32) f32;
pub extern fn floorf(__x: f32) f32;
pub extern fn __floorf(__x: f32) f32;
pub extern fn fmodf(__x: f32, __y: f32) f32;
pub extern fn __fmodf(__x: f32, __y: f32) f32;
pub extern fn isinff(__value: f32) c_int;
pub extern fn finitef(__value: f32) c_int;
pub extern fn dremf(__x: f32, __y: f32) f32;
pub extern fn __dremf(__x: f32, __y: f32) f32;
pub extern fn significandf(__x: f32) f32;
pub extern fn __significandf(__x: f32) f32;
pub extern fn copysignf(__x: f32, __y: f32) f32;
pub extern fn __copysignf(__x: f32, __y: f32) f32;
pub extern fn nanf(__tagb: [*c]const u8) f32;
pub extern fn __nanf(__tagb: [*c]const u8) f32;
pub extern fn isnanf(__value: f32) c_int;
pub extern fn j0f(f32) f32;
pub extern fn __j0f(f32) f32;
pub extern fn j1f(f32) f32;
pub extern fn __j1f(f32) f32;
pub extern fn jnf(c_int, f32) f32;
pub extern fn __jnf(c_int, f32) f32;
pub extern fn y0f(f32) f32;
pub extern fn __y0f(f32) f32;
pub extern fn y1f(f32) f32;
pub extern fn __y1f(f32) f32;
pub extern fn ynf(c_int, f32) f32;
pub extern fn __ynf(c_int, f32) f32;
pub extern fn erff(f32) f32;
pub extern fn __erff(f32) f32;
pub extern fn erfcf(f32) f32;
pub extern fn __erfcf(f32) f32;
pub extern fn lgammaf(f32) f32;
pub extern fn __lgammaf(f32) f32;
pub extern fn tgammaf(f32) f32;
pub extern fn __tgammaf(f32) f32;
pub extern fn gammaf(f32) f32;
pub extern fn __gammaf(f32) f32;
pub extern fn lgammaf_r(f32, __signgamp: [*c]c_int) f32;
pub extern fn __lgammaf_r(f32, __signgamp: [*c]c_int) f32;
pub extern fn rintf(__x: f32) f32;
pub extern fn __rintf(__x: f32) f32;
pub extern fn nextafterf(__x: f32, __y: f32) f32;
pub extern fn __nextafterf(__x: f32, __y: f32) f32;
pub extern fn nexttowardf(__x: f32, __y: c_longdouble) f32;
pub extern fn __nexttowardf(__x: f32, __y: c_longdouble) f32;
pub extern fn nextdownf(__x: f32) f32;
pub extern fn __nextdownf(__x: f32) f32;
pub extern fn nextupf(__x: f32) f32;
pub extern fn __nextupf(__x: f32) f32;
pub extern fn remainderf(__x: f32, __y: f32) f32;
pub extern fn __remainderf(__x: f32, __y: f32) f32;
pub extern fn scalbnf(__x: f32, __n: c_int) f32;
pub extern fn __scalbnf(__x: f32, __n: c_int) f32;
pub extern fn ilogbf(__x: f32) c_int;
pub extern fn __ilogbf(__x: f32) c_int;
pub extern fn llogbf(__x: f32) c_long;
pub extern fn __llogbf(__x: f32) c_long;
pub extern fn scalblnf(__x: f32, __n: c_long) f32;
pub extern fn __scalblnf(__x: f32, __n: c_long) f32;
pub extern fn nearbyintf(__x: f32) f32;
pub extern fn __nearbyintf(__x: f32) f32;
pub extern fn roundf(__x: f32) f32;
pub extern fn __roundf(__x: f32) f32;
pub extern fn truncf(__x: f32) f32;
pub extern fn __truncf(__x: f32) f32;
pub extern fn remquof(__x: f32, __y: f32, __quo: [*c]c_int) f32;
pub extern fn __remquof(__x: f32, __y: f32, __quo: [*c]c_int) f32;
pub extern fn lrintf(__x: f32) c_long;
pub extern fn __lrintf(__x: f32) c_long;
pub extern fn llrintf(__x: f32) c_longlong;
pub extern fn __llrintf(__x: f32) c_longlong;
pub extern fn lroundf(__x: f32) c_long;
pub extern fn __lroundf(__x: f32) c_long;
pub extern fn llroundf(__x: f32) c_longlong;
pub extern fn __llroundf(__x: f32) c_longlong;
pub extern fn fdimf(__x: f32, __y: f32) f32;
pub extern fn __fdimf(__x: f32, __y: f32) f32;
pub extern fn fmaxf(__x: f32, __y: f32) f32;
pub extern fn __fmaxf(__x: f32, __y: f32) f32;
pub extern fn fminf(__x: f32, __y: f32) f32;
pub extern fn __fminf(__x: f32, __y: f32) f32;
pub extern fn fmaf(__x: f32, __y: f32, __z: f32) f32;
pub extern fn __fmaf(__x: f32, __y: f32, __z: f32) f32;
pub extern fn roundevenf(__x: f32) f32;
pub extern fn __roundevenf(__x: f32) f32;
pub extern fn fromfpf(__x: f32, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpf(__x: f32, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpf(__x: f32, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpf(__x: f32, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn fromfpxf(__x: f32, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpxf(__x: f32, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpxf(__x: f32, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpxf(__x: f32, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn canonicalizef(__cx: [*c]f32, __x: [*c]const f32) c_int;
pub extern fn fmaxmagf(__x: f32, __y: f32) f32;
pub extern fn __fmaxmagf(__x: f32, __y: f32) f32;
pub extern fn fminmagf(__x: f32, __y: f32) f32;
pub extern fn __fminmagf(__x: f32, __y: f32) f32;
pub extern fn fmaximumf(__x: f32, __y: f32) f32;
pub extern fn __fmaximumf(__x: f32, __y: f32) f32;
pub extern fn fminimumf(__x: f32, __y: f32) f32;
pub extern fn __fminimumf(__x: f32, __y: f32) f32;
pub extern fn fmaximum_numf(__x: f32, __y: f32) f32;
pub extern fn __fmaximum_numf(__x: f32, __y: f32) f32;
pub extern fn fminimum_numf(__x: f32, __y: f32) f32;
pub extern fn __fminimum_numf(__x: f32, __y: f32) f32;
pub extern fn fmaximum_magf(__x: f32, __y: f32) f32;
pub extern fn __fmaximum_magf(__x: f32, __y: f32) f32;
pub extern fn fminimum_magf(__x: f32, __y: f32) f32;
pub extern fn __fminimum_magf(__x: f32, __y: f32) f32;
pub extern fn fmaximum_mag_numf(__x: f32, __y: f32) f32;
pub extern fn __fmaximum_mag_numf(__x: f32, __y: f32) f32;
pub extern fn fminimum_mag_numf(__x: f32, __y: f32) f32;
pub extern fn __fminimum_mag_numf(__x: f32, __y: f32) f32;
pub extern fn totalorderf(__x: [*c]const f32, __y: [*c]const f32) c_int;
pub extern fn totalordermagf(__x: [*c]const f32, __y: [*c]const f32) c_int;
pub extern fn getpayloadf(__x: [*c]const f32) f32;
pub extern fn __getpayloadf(__x: [*c]const f32) f32;
pub extern fn setpayloadf(__x: [*c]f32, __payload: f32) c_int;
pub extern fn setpayloadsigf(__x: [*c]f32, __payload: f32) c_int;
pub extern fn scalbf(__x: f32, __n: f32) f32;
pub extern fn __scalbf(__x: f32, __n: f32) f32;
pub extern fn __fpclassifyl(__value: c_longdouble) c_int;
pub extern fn __signbitl(__value: c_longdouble) c_int;
pub extern fn __isinfl(__value: c_longdouble) c_int;
pub extern fn __finitel(__value: c_longdouble) c_int;
pub extern fn __isnanl(__value: c_longdouble) c_int;
pub extern fn __iseqsigl(__x: c_longdouble, __y: c_longdouble) c_int;
pub extern fn __issignalingl(__value: c_longdouble) c_int;
pub extern fn acosl(__x: c_longdouble) c_longdouble;
pub extern fn __acosl(__x: c_longdouble) c_longdouble;
pub extern fn asinl(__x: c_longdouble) c_longdouble;
pub extern fn __asinl(__x: c_longdouble) c_longdouble;
pub extern fn atanl(__x: c_longdouble) c_longdouble;
pub extern fn __atanl(__x: c_longdouble) c_longdouble;
pub extern fn atan2l(__y: c_longdouble, __x: c_longdouble) c_longdouble;
pub extern fn __atan2l(__y: c_longdouble, __x: c_longdouble) c_longdouble;
pub extern fn cosl(__x: c_longdouble) c_longdouble;
pub extern fn __cosl(__x: c_longdouble) c_longdouble;
pub extern fn sinl(__x: c_longdouble) c_longdouble;
pub extern fn __sinl(__x: c_longdouble) c_longdouble;
pub extern fn tanl(__x: c_longdouble) c_longdouble;
pub extern fn __tanl(__x: c_longdouble) c_longdouble;
pub extern fn coshl(__x: c_longdouble) c_longdouble;
pub extern fn __coshl(__x: c_longdouble) c_longdouble;
pub extern fn sinhl(__x: c_longdouble) c_longdouble;
pub extern fn __sinhl(__x: c_longdouble) c_longdouble;
pub extern fn tanhl(__x: c_longdouble) c_longdouble;
pub extern fn __tanhl(__x: c_longdouble) c_longdouble;
pub extern fn sincosl(__x: c_longdouble, __sinx: [*c]c_longdouble, __cosx: [*c]c_longdouble) void;
pub extern fn __sincosl(__x: c_longdouble, __sinx: [*c]c_longdouble, __cosx: [*c]c_longdouble) void;
pub extern fn acoshl(__x: c_longdouble) c_longdouble;
pub extern fn __acoshl(__x: c_longdouble) c_longdouble;
pub extern fn asinhl(__x: c_longdouble) c_longdouble;
pub extern fn __asinhl(__x: c_longdouble) c_longdouble;
pub extern fn atanhl(__x: c_longdouble) c_longdouble;
pub extern fn __atanhl(__x: c_longdouble) c_longdouble;
pub extern fn expl(__x: c_longdouble) c_longdouble;
pub extern fn __expl(__x: c_longdouble) c_longdouble;
pub extern fn frexpl(__x: c_longdouble, __exponent: [*c]c_int) c_longdouble;
pub extern fn __frexpl(__x: c_longdouble, __exponent: [*c]c_int) c_longdouble;
pub extern fn ldexpl(__x: c_longdouble, __exponent: c_int) c_longdouble;
pub extern fn __ldexpl(__x: c_longdouble, __exponent: c_int) c_longdouble;
pub extern fn logl(__x: c_longdouble) c_longdouble;
pub extern fn __logl(__x: c_longdouble) c_longdouble;
pub extern fn log10l(__x: c_longdouble) c_longdouble;
pub extern fn __log10l(__x: c_longdouble) c_longdouble;
pub extern fn modfl(__x: c_longdouble, __iptr: [*c]c_longdouble) c_longdouble;
pub extern fn __modfl(__x: c_longdouble, __iptr: [*c]c_longdouble) c_longdouble;
pub extern fn exp10l(__x: c_longdouble) c_longdouble;
pub extern fn __exp10l(__x: c_longdouble) c_longdouble;
pub extern fn expm1l(__x: c_longdouble) c_longdouble;
pub extern fn __expm1l(__x: c_longdouble) c_longdouble;
pub extern fn log1pl(__x: c_longdouble) c_longdouble;
pub extern fn __log1pl(__x: c_longdouble) c_longdouble;
pub extern fn logbl(__x: c_longdouble) c_longdouble;
pub extern fn __logbl(__x: c_longdouble) c_longdouble;
pub extern fn exp2l(__x: c_longdouble) c_longdouble;
pub extern fn __exp2l(__x: c_longdouble) c_longdouble;
pub extern fn log2l(__x: c_longdouble) c_longdouble;
pub extern fn __log2l(__x: c_longdouble) c_longdouble;
pub extern fn powl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __powl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn sqrtl(__x: c_longdouble) c_longdouble;
pub extern fn __sqrtl(__x: c_longdouble) c_longdouble;
pub extern fn hypotl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __hypotl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn cbrtl(__x: c_longdouble) c_longdouble;
pub extern fn __cbrtl(__x: c_longdouble) c_longdouble;
pub extern fn ceill(__x: c_longdouble) c_longdouble;
pub extern fn __ceill(__x: c_longdouble) c_longdouble;
pub extern fn fabsl(__x: c_longdouble) c_longdouble;
pub extern fn __fabsl(__x: c_longdouble) c_longdouble;
pub extern fn floorl(__x: c_longdouble) c_longdouble;
pub extern fn __floorl(__x: c_longdouble) c_longdouble;
pub extern fn fmodl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmodl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn isinfl(__value: c_longdouble) c_int;
pub extern fn finitel(__value: c_longdouble) c_int;
pub extern fn dreml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __dreml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn significandl(__x: c_longdouble) c_longdouble;
pub extern fn __significandl(__x: c_longdouble) c_longdouble;
pub extern fn copysignl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __copysignl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn nanl(__tagb: [*c]const u8) c_longdouble;
pub extern fn __nanl(__tagb: [*c]const u8) c_longdouble;
pub extern fn isnanl(__value: c_longdouble) c_int;
pub extern fn j0l(c_longdouble) c_longdouble;
pub extern fn __j0l(c_longdouble) c_longdouble;
pub extern fn j1l(c_longdouble) c_longdouble;
pub extern fn __j1l(c_longdouble) c_longdouble;
pub extern fn jnl(c_int, c_longdouble) c_longdouble;
pub extern fn __jnl(c_int, c_longdouble) c_longdouble;
pub extern fn y0l(c_longdouble) c_longdouble;
pub extern fn __y0l(c_longdouble) c_longdouble;
pub extern fn y1l(c_longdouble) c_longdouble;
pub extern fn __y1l(c_longdouble) c_longdouble;
pub extern fn ynl(c_int, c_longdouble) c_longdouble;
pub extern fn __ynl(c_int, c_longdouble) c_longdouble;
pub extern fn erfl(c_longdouble) c_longdouble;
pub extern fn __erfl(c_longdouble) c_longdouble;
pub extern fn erfcl(c_longdouble) c_longdouble;
pub extern fn __erfcl(c_longdouble) c_longdouble;
pub extern fn lgammal(c_longdouble) c_longdouble;
pub extern fn __lgammal(c_longdouble) c_longdouble;
pub extern fn tgammal(c_longdouble) c_longdouble;
pub extern fn __tgammal(c_longdouble) c_longdouble;
pub extern fn gammal(c_longdouble) c_longdouble;
pub extern fn __gammal(c_longdouble) c_longdouble;
pub extern fn lgammal_r(c_longdouble, __signgamp: [*c]c_int) c_longdouble;
pub extern fn __lgammal_r(c_longdouble, __signgamp: [*c]c_int) c_longdouble;
pub extern fn rintl(__x: c_longdouble) c_longdouble;
pub extern fn __rintl(__x: c_longdouble) c_longdouble;
pub extern fn nextafterl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __nextafterl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn nexttowardl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __nexttowardl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn nextdownl(__x: c_longdouble) c_longdouble;
pub extern fn __nextdownl(__x: c_longdouble) c_longdouble;
pub extern fn nextupl(__x: c_longdouble) c_longdouble;
pub extern fn __nextupl(__x: c_longdouble) c_longdouble;
pub extern fn remainderl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __remainderl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn scalbnl(__x: c_longdouble, __n: c_int) c_longdouble;
pub extern fn __scalbnl(__x: c_longdouble, __n: c_int) c_longdouble;
pub extern fn ilogbl(__x: c_longdouble) c_int;
pub extern fn __ilogbl(__x: c_longdouble) c_int;
pub extern fn llogbl(__x: c_longdouble) c_long;
pub extern fn __llogbl(__x: c_longdouble) c_long;
pub extern fn scalblnl(__x: c_longdouble, __n: c_long) c_longdouble;
pub extern fn __scalblnl(__x: c_longdouble, __n: c_long) c_longdouble;
pub extern fn nearbyintl(__x: c_longdouble) c_longdouble;
pub extern fn __nearbyintl(__x: c_longdouble) c_longdouble;
pub extern fn roundl(__x: c_longdouble) c_longdouble;
pub extern fn __roundl(__x: c_longdouble) c_longdouble;
pub extern fn truncl(__x: c_longdouble) c_longdouble;
pub extern fn __truncl(__x: c_longdouble) c_longdouble;
pub extern fn remquol(__x: c_longdouble, __y: c_longdouble, __quo: [*c]c_int) c_longdouble;
pub extern fn __remquol(__x: c_longdouble, __y: c_longdouble, __quo: [*c]c_int) c_longdouble;
pub extern fn lrintl(__x: c_longdouble) c_long;
pub extern fn __lrintl(__x: c_longdouble) c_long;
pub extern fn llrintl(__x: c_longdouble) c_longlong;
pub extern fn __llrintl(__x: c_longdouble) c_longlong;
pub extern fn lroundl(__x: c_longdouble) c_long;
pub extern fn __lroundl(__x: c_longdouble) c_long;
pub extern fn llroundl(__x: c_longdouble) c_longlong;
pub extern fn __llroundl(__x: c_longdouble) c_longlong;
pub extern fn fdiml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fdiml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaxl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaxl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmal(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) c_longdouble;
pub extern fn __fmal(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) c_longdouble;
pub extern fn roundevenl(__x: c_longdouble) c_longdouble;
pub extern fn __roundevenl(__x: c_longdouble) c_longdouble;
pub extern fn fromfpl(__x: c_longdouble, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpl(__x: c_longdouble, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpl(__x: c_longdouble, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpl(__x: c_longdouble, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn fromfpxl(__x: c_longdouble, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpxl(__x: c_longdouble, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpxl(__x: c_longdouble, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpxl(__x: c_longdouble, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn canonicalizel(__cx: [*c]c_longdouble, __x: [*c]const c_longdouble) c_int;
pub extern fn fmaxmagl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaxmagl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminmagl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminmagl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaximuml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaximuml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminimuml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminimuml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaximum_numl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaximum_numl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminimum_numl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminimum_numl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaximum_magl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaximum_magl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminimum_magl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminimum_magl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaximum_mag_numl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaximum_mag_numl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminimum_mag_numl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminimum_mag_numl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn totalorderl(__x: [*c]const c_longdouble, __y: [*c]const c_longdouble) c_int;
pub extern fn totalordermagl(__x: [*c]const c_longdouble, __y: [*c]const c_longdouble) c_int;
pub extern fn getpayloadl(__x: [*c]const c_longdouble) c_longdouble;
pub extern fn __getpayloadl(__x: [*c]const c_longdouble) c_longdouble;
pub extern fn setpayloadl(__x: [*c]c_longdouble, __payload: c_longdouble) c_int;
pub extern fn setpayloadsigl(__x: [*c]c_longdouble, __payload: c_longdouble) c_int;
pub extern fn scalbl(__x: c_longdouble, __n: c_longdouble) c_longdouble;
pub extern fn __scalbl(__x: c_longdouble, __n: c_longdouble) c_longdouble;
pub extern fn acosf32(__x: _Float32) _Float32;
pub extern fn __acosf32(__x: _Float32) _Float32;
pub extern fn asinf32(__x: _Float32) _Float32;
pub extern fn __asinf32(__x: _Float32) _Float32;
pub extern fn atanf32(__x: _Float32) _Float32;
pub extern fn __atanf32(__x: _Float32) _Float32;
pub extern fn atan2f32(__y: _Float32, __x: _Float32) _Float32;
pub extern fn __atan2f32(__y: _Float32, __x: _Float32) _Float32;
pub extern fn cosf32(__x: _Float32) _Float32;
pub extern fn __cosf32(__x: _Float32) _Float32;
pub extern fn sinf32(__x: _Float32) _Float32;
pub extern fn __sinf32(__x: _Float32) _Float32;
pub extern fn tanf32(__x: _Float32) _Float32;
pub extern fn __tanf32(__x: _Float32) _Float32;
pub extern fn coshf32(__x: _Float32) _Float32;
pub extern fn __coshf32(__x: _Float32) _Float32;
pub extern fn sinhf32(__x: _Float32) _Float32;
pub extern fn __sinhf32(__x: _Float32) _Float32;
pub extern fn tanhf32(__x: _Float32) _Float32;
pub extern fn __tanhf32(__x: _Float32) _Float32;
pub extern fn sincosf32(__x: _Float32, __sinx: [*c]_Float32, __cosx: [*c]_Float32) void;
pub extern fn __sincosf32(__x: _Float32, __sinx: [*c]_Float32, __cosx: [*c]_Float32) void;
pub extern fn acoshf32(__x: _Float32) _Float32;
pub extern fn __acoshf32(__x: _Float32) _Float32;
pub extern fn asinhf32(__x: _Float32) _Float32;
pub extern fn __asinhf32(__x: _Float32) _Float32;
pub extern fn atanhf32(__x: _Float32) _Float32;
pub extern fn __atanhf32(__x: _Float32) _Float32;
pub extern fn expf32(__x: _Float32) _Float32;
pub extern fn __expf32(__x: _Float32) _Float32;
pub extern fn frexpf32(__x: _Float32, __exponent: [*c]c_int) _Float32;
pub extern fn __frexpf32(__x: _Float32, __exponent: [*c]c_int) _Float32;
pub extern fn ldexpf32(__x: _Float32, __exponent: c_int) _Float32;
pub extern fn __ldexpf32(__x: _Float32, __exponent: c_int) _Float32;
pub extern fn logf32(__x: _Float32) _Float32;
pub extern fn __logf32(__x: _Float32) _Float32;
pub extern fn log10f32(__x: _Float32) _Float32;
pub extern fn __log10f32(__x: _Float32) _Float32;
pub extern fn modff32(__x: _Float32, __iptr: [*c]_Float32) _Float32;
pub extern fn __modff32(__x: _Float32, __iptr: [*c]_Float32) _Float32;
pub extern fn exp10f32(__x: _Float32) _Float32;
pub extern fn __exp10f32(__x: _Float32) _Float32;
pub extern fn expm1f32(__x: _Float32) _Float32;
pub extern fn __expm1f32(__x: _Float32) _Float32;
pub extern fn log1pf32(__x: _Float32) _Float32;
pub extern fn __log1pf32(__x: _Float32) _Float32;
pub extern fn logbf32(__x: _Float32) _Float32;
pub extern fn __logbf32(__x: _Float32) _Float32;
pub extern fn exp2f32(__x: _Float32) _Float32;
pub extern fn __exp2f32(__x: _Float32) _Float32;
pub extern fn log2f32(__x: _Float32) _Float32;
pub extern fn __log2f32(__x: _Float32) _Float32;
pub extern fn powf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __powf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn sqrtf32(__x: _Float32) _Float32;
pub extern fn __sqrtf32(__x: _Float32) _Float32;
pub extern fn hypotf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __hypotf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn cbrtf32(__x: _Float32) _Float32;
pub extern fn __cbrtf32(__x: _Float32) _Float32;
pub extern fn ceilf32(__x: _Float32) _Float32;
pub extern fn __ceilf32(__x: _Float32) _Float32;
pub extern fn fabsf32(__x: _Float32) _Float32;
pub extern fn __fabsf32(__x: _Float32) _Float32;
pub extern fn floorf32(__x: _Float32) _Float32;
pub extern fn __floorf32(__x: _Float32) _Float32;
pub extern fn fmodf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __fmodf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn copysignf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __copysignf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn nanf32(__tagb: [*c]const u8) _Float32;
pub extern fn __nanf32(__tagb: [*c]const u8) _Float32;
pub extern fn j0f32(_Float32) _Float32;
pub extern fn __j0f32(_Float32) _Float32;
pub extern fn j1f32(_Float32) _Float32;
pub extern fn __j1f32(_Float32) _Float32;
pub extern fn jnf32(c_int, _Float32) _Float32;
pub extern fn __jnf32(c_int, _Float32) _Float32;
pub extern fn y0f32(_Float32) _Float32;
pub extern fn __y0f32(_Float32) _Float32;
pub extern fn y1f32(_Float32) _Float32;
pub extern fn __y1f32(_Float32) _Float32;
pub extern fn ynf32(c_int, _Float32) _Float32;
pub extern fn __ynf32(c_int, _Float32) _Float32;
pub extern fn erff32(_Float32) _Float32;
pub extern fn __erff32(_Float32) _Float32;
pub extern fn erfcf32(_Float32) _Float32;
pub extern fn __erfcf32(_Float32) _Float32;
pub extern fn lgammaf32(_Float32) _Float32;
pub extern fn __lgammaf32(_Float32) _Float32;
pub extern fn tgammaf32(_Float32) _Float32;
pub extern fn __tgammaf32(_Float32) _Float32;
pub extern fn lgammaf32_r(_Float32, __signgamp: [*c]c_int) _Float32;
pub extern fn __lgammaf32_r(_Float32, __signgamp: [*c]c_int) _Float32;
pub extern fn rintf32(__x: _Float32) _Float32;
pub extern fn __rintf32(__x: _Float32) _Float32;
pub extern fn nextafterf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __nextafterf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn nextdownf32(__x: _Float32) _Float32;
pub extern fn __nextdownf32(__x: _Float32) _Float32;
pub extern fn nextupf32(__x: _Float32) _Float32;
pub extern fn __nextupf32(__x: _Float32) _Float32;
pub extern fn remainderf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __remainderf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn scalbnf32(__x: _Float32, __n: c_int) _Float32;
pub extern fn __scalbnf32(__x: _Float32, __n: c_int) _Float32;
pub extern fn ilogbf32(__x: _Float32) c_int;
pub extern fn __ilogbf32(__x: _Float32) c_int;
pub extern fn llogbf32(__x: _Float32) c_long;
pub extern fn __llogbf32(__x: _Float32) c_long;
pub extern fn scalblnf32(__x: _Float32, __n: c_long) _Float32;
pub extern fn __scalblnf32(__x: _Float32, __n: c_long) _Float32;
pub extern fn nearbyintf32(__x: _Float32) _Float32;
pub extern fn __nearbyintf32(__x: _Float32) _Float32;
pub extern fn roundf32(__x: _Float32) _Float32;
pub extern fn __roundf32(__x: _Float32) _Float32;
pub extern fn truncf32(__x: _Float32) _Float32;
pub extern fn __truncf32(__x: _Float32) _Float32;
pub extern fn remquof32(__x: _Float32, __y: _Float32, __quo: [*c]c_int) _Float32;
pub extern fn __remquof32(__x: _Float32, __y: _Float32, __quo: [*c]c_int) _Float32;
pub extern fn lrintf32(__x: _Float32) c_long;
pub extern fn __lrintf32(__x: _Float32) c_long;
pub extern fn llrintf32(__x: _Float32) c_longlong;
pub extern fn __llrintf32(__x: _Float32) c_longlong;
pub extern fn lroundf32(__x: _Float32) c_long;
pub extern fn __lroundf32(__x: _Float32) c_long;
pub extern fn llroundf32(__x: _Float32) c_longlong;
pub extern fn __llroundf32(__x: _Float32) c_longlong;
pub extern fn fdimf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __fdimf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn fmaxf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __fmaxf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn fminf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __fminf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn fmaf32(__x: _Float32, __y: _Float32, __z: _Float32) _Float32;
pub extern fn __fmaf32(__x: _Float32, __y: _Float32, __z: _Float32) _Float32;
pub extern fn roundevenf32(__x: _Float32) _Float32;
pub extern fn __roundevenf32(__x: _Float32) _Float32;
pub extern fn fromfpf32(__x: _Float32, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpf32(__x: _Float32, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpf32(__x: _Float32, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpf32(__x: _Float32, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn fromfpxf32(__x: _Float32, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpxf32(__x: _Float32, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpxf32(__x: _Float32, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpxf32(__x: _Float32, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn canonicalizef32(__cx: [*c]_Float32, __x: [*c]const _Float32) c_int;
pub extern fn fmaxmagf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __fmaxmagf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn fminmagf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __fminmagf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn fmaximumf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __fmaximumf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn fminimumf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __fminimumf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn fmaximum_numf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __fmaximum_numf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn fminimum_numf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __fminimum_numf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn fmaximum_magf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __fmaximum_magf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn fminimum_magf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __fminimum_magf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn fmaximum_mag_numf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __fmaximum_mag_numf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn fminimum_mag_numf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn __fminimum_mag_numf32(__x: _Float32, __y: _Float32) _Float32;
pub extern fn totalorderf32(__x: [*c]const _Float32, __y: [*c]const _Float32) c_int;
pub extern fn totalordermagf32(__x: [*c]const _Float32, __y: [*c]const _Float32) c_int;
pub extern fn getpayloadf32(__x: [*c]const _Float32) _Float32;
pub extern fn __getpayloadf32(__x: [*c]const _Float32) _Float32;
pub extern fn setpayloadf32(__x: [*c]_Float32, __payload: _Float32) c_int;
pub extern fn setpayloadsigf32(__x: [*c]_Float32, __payload: _Float32) c_int;
pub extern fn acosf64(__x: _Float64) _Float64;
pub extern fn __acosf64(__x: _Float64) _Float64;
pub extern fn asinf64(__x: _Float64) _Float64;
pub extern fn __asinf64(__x: _Float64) _Float64;
pub extern fn atanf64(__x: _Float64) _Float64;
pub extern fn __atanf64(__x: _Float64) _Float64;
pub extern fn atan2f64(__y: _Float64, __x: _Float64) _Float64;
pub extern fn __atan2f64(__y: _Float64, __x: _Float64) _Float64;
pub extern fn cosf64(__x: _Float64) _Float64;
pub extern fn __cosf64(__x: _Float64) _Float64;
pub extern fn sinf64(__x: _Float64) _Float64;
pub extern fn __sinf64(__x: _Float64) _Float64;
pub extern fn tanf64(__x: _Float64) _Float64;
pub extern fn __tanf64(__x: _Float64) _Float64;
pub extern fn coshf64(__x: _Float64) _Float64;
pub extern fn __coshf64(__x: _Float64) _Float64;
pub extern fn sinhf64(__x: _Float64) _Float64;
pub extern fn __sinhf64(__x: _Float64) _Float64;
pub extern fn tanhf64(__x: _Float64) _Float64;
pub extern fn __tanhf64(__x: _Float64) _Float64;
pub extern fn sincosf64(__x: _Float64, __sinx: [*c]_Float64, __cosx: [*c]_Float64) void;
pub extern fn __sincosf64(__x: _Float64, __sinx: [*c]_Float64, __cosx: [*c]_Float64) void;
pub extern fn acoshf64(__x: _Float64) _Float64;
pub extern fn __acoshf64(__x: _Float64) _Float64;
pub extern fn asinhf64(__x: _Float64) _Float64;
pub extern fn __asinhf64(__x: _Float64) _Float64;
pub extern fn atanhf64(__x: _Float64) _Float64;
pub extern fn __atanhf64(__x: _Float64) _Float64;
pub extern fn expf64(__x: _Float64) _Float64;
pub extern fn __expf64(__x: _Float64) _Float64;
pub extern fn frexpf64(__x: _Float64, __exponent: [*c]c_int) _Float64;
pub extern fn __frexpf64(__x: _Float64, __exponent: [*c]c_int) _Float64;
pub extern fn ldexpf64(__x: _Float64, __exponent: c_int) _Float64;
pub extern fn __ldexpf64(__x: _Float64, __exponent: c_int) _Float64;
pub extern fn logf64(__x: _Float64) _Float64;
pub extern fn __logf64(__x: _Float64) _Float64;
pub extern fn log10f64(__x: _Float64) _Float64;
pub extern fn __log10f64(__x: _Float64) _Float64;
pub extern fn modff64(__x: _Float64, __iptr: [*c]_Float64) _Float64;
pub extern fn __modff64(__x: _Float64, __iptr: [*c]_Float64) _Float64;
pub extern fn exp10f64(__x: _Float64) _Float64;
pub extern fn __exp10f64(__x: _Float64) _Float64;
pub extern fn expm1f64(__x: _Float64) _Float64;
pub extern fn __expm1f64(__x: _Float64) _Float64;
pub extern fn log1pf64(__x: _Float64) _Float64;
pub extern fn __log1pf64(__x: _Float64) _Float64;
pub extern fn logbf64(__x: _Float64) _Float64;
pub extern fn __logbf64(__x: _Float64) _Float64;
pub extern fn exp2f64(__x: _Float64) _Float64;
pub extern fn __exp2f64(__x: _Float64) _Float64;
pub extern fn log2f64(__x: _Float64) _Float64;
pub extern fn __log2f64(__x: _Float64) _Float64;
pub extern fn powf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __powf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn sqrtf64(__x: _Float64) _Float64;
pub extern fn __sqrtf64(__x: _Float64) _Float64;
pub extern fn hypotf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __hypotf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn cbrtf64(__x: _Float64) _Float64;
pub extern fn __cbrtf64(__x: _Float64) _Float64;
pub extern fn ceilf64(__x: _Float64) _Float64;
pub extern fn __ceilf64(__x: _Float64) _Float64;
pub extern fn fabsf64(__x: _Float64) _Float64;
pub extern fn __fabsf64(__x: _Float64) _Float64;
pub extern fn floorf64(__x: _Float64) _Float64;
pub extern fn __floorf64(__x: _Float64) _Float64;
pub extern fn fmodf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __fmodf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn copysignf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __copysignf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn nanf64(__tagb: [*c]const u8) _Float64;
pub extern fn __nanf64(__tagb: [*c]const u8) _Float64;
pub extern fn j0f64(_Float64) _Float64;
pub extern fn __j0f64(_Float64) _Float64;
pub extern fn j1f64(_Float64) _Float64;
pub extern fn __j1f64(_Float64) _Float64;
pub extern fn jnf64(c_int, _Float64) _Float64;
pub extern fn __jnf64(c_int, _Float64) _Float64;
pub extern fn y0f64(_Float64) _Float64;
pub extern fn __y0f64(_Float64) _Float64;
pub extern fn y1f64(_Float64) _Float64;
pub extern fn __y1f64(_Float64) _Float64;
pub extern fn ynf64(c_int, _Float64) _Float64;
pub extern fn __ynf64(c_int, _Float64) _Float64;
pub extern fn erff64(_Float64) _Float64;
pub extern fn __erff64(_Float64) _Float64;
pub extern fn erfcf64(_Float64) _Float64;
pub extern fn __erfcf64(_Float64) _Float64;
pub extern fn lgammaf64(_Float64) _Float64;
pub extern fn __lgammaf64(_Float64) _Float64;
pub extern fn tgammaf64(_Float64) _Float64;
pub extern fn __tgammaf64(_Float64) _Float64;
pub extern fn lgammaf64_r(_Float64, __signgamp: [*c]c_int) _Float64;
pub extern fn __lgammaf64_r(_Float64, __signgamp: [*c]c_int) _Float64;
pub extern fn rintf64(__x: _Float64) _Float64;
pub extern fn __rintf64(__x: _Float64) _Float64;
pub extern fn nextafterf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __nextafterf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn nextdownf64(__x: _Float64) _Float64;
pub extern fn __nextdownf64(__x: _Float64) _Float64;
pub extern fn nextupf64(__x: _Float64) _Float64;
pub extern fn __nextupf64(__x: _Float64) _Float64;
pub extern fn remainderf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __remainderf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn scalbnf64(__x: _Float64, __n: c_int) _Float64;
pub extern fn __scalbnf64(__x: _Float64, __n: c_int) _Float64;
pub extern fn ilogbf64(__x: _Float64) c_int;
pub extern fn __ilogbf64(__x: _Float64) c_int;
pub extern fn llogbf64(__x: _Float64) c_long;
pub extern fn __llogbf64(__x: _Float64) c_long;
pub extern fn scalblnf64(__x: _Float64, __n: c_long) _Float64;
pub extern fn __scalblnf64(__x: _Float64, __n: c_long) _Float64;
pub extern fn nearbyintf64(__x: _Float64) _Float64;
pub extern fn __nearbyintf64(__x: _Float64) _Float64;
pub extern fn roundf64(__x: _Float64) _Float64;
pub extern fn __roundf64(__x: _Float64) _Float64;
pub extern fn truncf64(__x: _Float64) _Float64;
pub extern fn __truncf64(__x: _Float64) _Float64;
pub extern fn remquof64(__x: _Float64, __y: _Float64, __quo: [*c]c_int) _Float64;
pub extern fn __remquof64(__x: _Float64, __y: _Float64, __quo: [*c]c_int) _Float64;
pub extern fn lrintf64(__x: _Float64) c_long;
pub extern fn __lrintf64(__x: _Float64) c_long;
pub extern fn llrintf64(__x: _Float64) c_longlong;
pub extern fn __llrintf64(__x: _Float64) c_longlong;
pub extern fn lroundf64(__x: _Float64) c_long;
pub extern fn __lroundf64(__x: _Float64) c_long;
pub extern fn llroundf64(__x: _Float64) c_longlong;
pub extern fn __llroundf64(__x: _Float64) c_longlong;
pub extern fn fdimf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __fdimf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn fmaxf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __fmaxf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn fminf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __fminf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn fmaf64(__x: _Float64, __y: _Float64, __z: _Float64) _Float64;
pub extern fn __fmaf64(__x: _Float64, __y: _Float64, __z: _Float64) _Float64;
pub extern fn roundevenf64(__x: _Float64) _Float64;
pub extern fn __roundevenf64(__x: _Float64) _Float64;
pub extern fn fromfpf64(__x: _Float64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpf64(__x: _Float64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpf64(__x: _Float64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpf64(__x: _Float64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn fromfpxf64(__x: _Float64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpxf64(__x: _Float64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpxf64(__x: _Float64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpxf64(__x: _Float64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn canonicalizef64(__cx: [*c]_Float64, __x: [*c]const _Float64) c_int;
pub extern fn fmaxmagf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __fmaxmagf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn fminmagf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __fminmagf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn fmaximumf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __fmaximumf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn fminimumf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __fminimumf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn fmaximum_numf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __fmaximum_numf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn fminimum_numf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __fminimum_numf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn fmaximum_magf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __fmaximum_magf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn fminimum_magf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __fminimum_magf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn fmaximum_mag_numf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __fmaximum_mag_numf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn fminimum_mag_numf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn __fminimum_mag_numf64(__x: _Float64, __y: _Float64) _Float64;
pub extern fn totalorderf64(__x: [*c]const _Float64, __y: [*c]const _Float64) c_int;
pub extern fn totalordermagf64(__x: [*c]const _Float64, __y: [*c]const _Float64) c_int;
pub extern fn getpayloadf64(__x: [*c]const _Float64) _Float64;
pub extern fn __getpayloadf64(__x: [*c]const _Float64) _Float64;
pub extern fn setpayloadf64(__x: [*c]_Float64, __payload: _Float64) c_int;
pub extern fn setpayloadsigf64(__x: [*c]_Float64, __payload: _Float64) c_int;
pub extern fn acosf32x(__x: _Float32x) _Float32x;
pub extern fn __acosf32x(__x: _Float32x) _Float32x;
pub extern fn asinf32x(__x: _Float32x) _Float32x;
pub extern fn __asinf32x(__x: _Float32x) _Float32x;
pub extern fn atanf32x(__x: _Float32x) _Float32x;
pub extern fn __atanf32x(__x: _Float32x) _Float32x;
pub extern fn atan2f32x(__y: _Float32x, __x: _Float32x) _Float32x;
pub extern fn __atan2f32x(__y: _Float32x, __x: _Float32x) _Float32x;
pub extern fn cosf32x(__x: _Float32x) _Float32x;
pub extern fn __cosf32x(__x: _Float32x) _Float32x;
pub extern fn sinf32x(__x: _Float32x) _Float32x;
pub extern fn __sinf32x(__x: _Float32x) _Float32x;
pub extern fn tanf32x(__x: _Float32x) _Float32x;
pub extern fn __tanf32x(__x: _Float32x) _Float32x;
pub extern fn coshf32x(__x: _Float32x) _Float32x;
pub extern fn __coshf32x(__x: _Float32x) _Float32x;
pub extern fn sinhf32x(__x: _Float32x) _Float32x;
pub extern fn __sinhf32x(__x: _Float32x) _Float32x;
pub extern fn tanhf32x(__x: _Float32x) _Float32x;
pub extern fn __tanhf32x(__x: _Float32x) _Float32x;
pub extern fn sincosf32x(__x: _Float32x, __sinx: [*c]_Float32x, __cosx: [*c]_Float32x) void;
pub extern fn __sincosf32x(__x: _Float32x, __sinx: [*c]_Float32x, __cosx: [*c]_Float32x) void;
pub extern fn acoshf32x(__x: _Float32x) _Float32x;
pub extern fn __acoshf32x(__x: _Float32x) _Float32x;
pub extern fn asinhf32x(__x: _Float32x) _Float32x;
pub extern fn __asinhf32x(__x: _Float32x) _Float32x;
pub extern fn atanhf32x(__x: _Float32x) _Float32x;
pub extern fn __atanhf32x(__x: _Float32x) _Float32x;
pub extern fn expf32x(__x: _Float32x) _Float32x;
pub extern fn __expf32x(__x: _Float32x) _Float32x;
pub extern fn frexpf32x(__x: _Float32x, __exponent: [*c]c_int) _Float32x;
pub extern fn __frexpf32x(__x: _Float32x, __exponent: [*c]c_int) _Float32x;
pub extern fn ldexpf32x(__x: _Float32x, __exponent: c_int) _Float32x;
pub extern fn __ldexpf32x(__x: _Float32x, __exponent: c_int) _Float32x;
pub extern fn logf32x(__x: _Float32x) _Float32x;
pub extern fn __logf32x(__x: _Float32x) _Float32x;
pub extern fn log10f32x(__x: _Float32x) _Float32x;
pub extern fn __log10f32x(__x: _Float32x) _Float32x;
pub extern fn modff32x(__x: _Float32x, __iptr: [*c]_Float32x) _Float32x;
pub extern fn __modff32x(__x: _Float32x, __iptr: [*c]_Float32x) _Float32x;
pub extern fn exp10f32x(__x: _Float32x) _Float32x;
pub extern fn __exp10f32x(__x: _Float32x) _Float32x;
pub extern fn expm1f32x(__x: _Float32x) _Float32x;
pub extern fn __expm1f32x(__x: _Float32x) _Float32x;
pub extern fn log1pf32x(__x: _Float32x) _Float32x;
pub extern fn __log1pf32x(__x: _Float32x) _Float32x;
pub extern fn logbf32x(__x: _Float32x) _Float32x;
pub extern fn __logbf32x(__x: _Float32x) _Float32x;
pub extern fn exp2f32x(__x: _Float32x) _Float32x;
pub extern fn __exp2f32x(__x: _Float32x) _Float32x;
pub extern fn log2f32x(__x: _Float32x) _Float32x;
pub extern fn __log2f32x(__x: _Float32x) _Float32x;
pub extern fn powf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __powf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn sqrtf32x(__x: _Float32x) _Float32x;
pub extern fn __sqrtf32x(__x: _Float32x) _Float32x;
pub extern fn hypotf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __hypotf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn cbrtf32x(__x: _Float32x) _Float32x;
pub extern fn __cbrtf32x(__x: _Float32x) _Float32x;
pub extern fn ceilf32x(__x: _Float32x) _Float32x;
pub extern fn __ceilf32x(__x: _Float32x) _Float32x;
pub extern fn fabsf32x(__x: _Float32x) _Float32x;
pub extern fn __fabsf32x(__x: _Float32x) _Float32x;
pub extern fn floorf32x(__x: _Float32x) _Float32x;
pub extern fn __floorf32x(__x: _Float32x) _Float32x;
pub extern fn fmodf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __fmodf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn copysignf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __copysignf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn nanf32x(__tagb: [*c]const u8) _Float32x;
pub extern fn __nanf32x(__tagb: [*c]const u8) _Float32x;
pub extern fn j0f32x(_Float32x) _Float32x;
pub extern fn __j0f32x(_Float32x) _Float32x;
pub extern fn j1f32x(_Float32x) _Float32x;
pub extern fn __j1f32x(_Float32x) _Float32x;
pub extern fn jnf32x(c_int, _Float32x) _Float32x;
pub extern fn __jnf32x(c_int, _Float32x) _Float32x;
pub extern fn y0f32x(_Float32x) _Float32x;
pub extern fn __y0f32x(_Float32x) _Float32x;
pub extern fn y1f32x(_Float32x) _Float32x;
pub extern fn __y1f32x(_Float32x) _Float32x;
pub extern fn ynf32x(c_int, _Float32x) _Float32x;
pub extern fn __ynf32x(c_int, _Float32x) _Float32x;
pub extern fn erff32x(_Float32x) _Float32x;
pub extern fn __erff32x(_Float32x) _Float32x;
pub extern fn erfcf32x(_Float32x) _Float32x;
pub extern fn __erfcf32x(_Float32x) _Float32x;
pub extern fn lgammaf32x(_Float32x) _Float32x;
pub extern fn __lgammaf32x(_Float32x) _Float32x;
pub extern fn tgammaf32x(_Float32x) _Float32x;
pub extern fn __tgammaf32x(_Float32x) _Float32x;
pub extern fn lgammaf32x_r(_Float32x, __signgamp: [*c]c_int) _Float32x;
pub extern fn __lgammaf32x_r(_Float32x, __signgamp: [*c]c_int) _Float32x;
pub extern fn rintf32x(__x: _Float32x) _Float32x;
pub extern fn __rintf32x(__x: _Float32x) _Float32x;
pub extern fn nextafterf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __nextafterf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn nextdownf32x(__x: _Float32x) _Float32x;
pub extern fn __nextdownf32x(__x: _Float32x) _Float32x;
pub extern fn nextupf32x(__x: _Float32x) _Float32x;
pub extern fn __nextupf32x(__x: _Float32x) _Float32x;
pub extern fn remainderf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __remainderf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn scalbnf32x(__x: _Float32x, __n: c_int) _Float32x;
pub extern fn __scalbnf32x(__x: _Float32x, __n: c_int) _Float32x;
pub extern fn ilogbf32x(__x: _Float32x) c_int;
pub extern fn __ilogbf32x(__x: _Float32x) c_int;
pub extern fn llogbf32x(__x: _Float32x) c_long;
pub extern fn __llogbf32x(__x: _Float32x) c_long;
pub extern fn scalblnf32x(__x: _Float32x, __n: c_long) _Float32x;
pub extern fn __scalblnf32x(__x: _Float32x, __n: c_long) _Float32x;
pub extern fn nearbyintf32x(__x: _Float32x) _Float32x;
pub extern fn __nearbyintf32x(__x: _Float32x) _Float32x;
pub extern fn roundf32x(__x: _Float32x) _Float32x;
pub extern fn __roundf32x(__x: _Float32x) _Float32x;
pub extern fn truncf32x(__x: _Float32x) _Float32x;
pub extern fn __truncf32x(__x: _Float32x) _Float32x;
pub extern fn remquof32x(__x: _Float32x, __y: _Float32x, __quo: [*c]c_int) _Float32x;
pub extern fn __remquof32x(__x: _Float32x, __y: _Float32x, __quo: [*c]c_int) _Float32x;
pub extern fn lrintf32x(__x: _Float32x) c_long;
pub extern fn __lrintf32x(__x: _Float32x) c_long;
pub extern fn llrintf32x(__x: _Float32x) c_longlong;
pub extern fn __llrintf32x(__x: _Float32x) c_longlong;
pub extern fn lroundf32x(__x: _Float32x) c_long;
pub extern fn __lroundf32x(__x: _Float32x) c_long;
pub extern fn llroundf32x(__x: _Float32x) c_longlong;
pub extern fn __llroundf32x(__x: _Float32x) c_longlong;
pub extern fn fdimf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __fdimf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn fmaxf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __fmaxf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn fminf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __fminf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn fmaf32x(__x: _Float32x, __y: _Float32x, __z: _Float32x) _Float32x;
pub extern fn __fmaf32x(__x: _Float32x, __y: _Float32x, __z: _Float32x) _Float32x;
pub extern fn roundevenf32x(__x: _Float32x) _Float32x;
pub extern fn __roundevenf32x(__x: _Float32x) _Float32x;
pub extern fn fromfpf32x(__x: _Float32x, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpf32x(__x: _Float32x, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpf32x(__x: _Float32x, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpf32x(__x: _Float32x, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn fromfpxf32x(__x: _Float32x, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpxf32x(__x: _Float32x, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpxf32x(__x: _Float32x, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpxf32x(__x: _Float32x, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn canonicalizef32x(__cx: [*c]_Float32x, __x: [*c]const _Float32x) c_int;
pub extern fn fmaxmagf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __fmaxmagf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn fminmagf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __fminmagf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn fmaximumf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __fmaximumf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn fminimumf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __fminimumf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn fmaximum_numf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __fmaximum_numf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn fminimum_numf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __fminimum_numf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn fmaximum_magf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __fmaximum_magf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn fminimum_magf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __fminimum_magf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn fmaximum_mag_numf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __fmaximum_mag_numf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn fminimum_mag_numf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn __fminimum_mag_numf32x(__x: _Float32x, __y: _Float32x) _Float32x;
pub extern fn totalorderf32x(__x: [*c]const _Float32x, __y: [*c]const _Float32x) c_int;
pub extern fn totalordermagf32x(__x: [*c]const _Float32x, __y: [*c]const _Float32x) c_int;
pub extern fn getpayloadf32x(__x: [*c]const _Float32x) _Float32x;
pub extern fn __getpayloadf32x(__x: [*c]const _Float32x) _Float32x;
pub extern fn setpayloadf32x(__x: [*c]_Float32x, __payload: _Float32x) c_int;
pub extern fn setpayloadsigf32x(__x: [*c]_Float32x, __payload: _Float32x) c_int;
pub extern fn acosf64x(__x: _Float64x) _Float64x;
pub extern fn __acosf64x(__x: _Float64x) _Float64x;
pub extern fn asinf64x(__x: _Float64x) _Float64x;
pub extern fn __asinf64x(__x: _Float64x) _Float64x;
pub extern fn atanf64x(__x: _Float64x) _Float64x;
pub extern fn __atanf64x(__x: _Float64x) _Float64x;
pub extern fn atan2f64x(__y: _Float64x, __x: _Float64x) _Float64x;
pub extern fn __atan2f64x(__y: _Float64x, __x: _Float64x) _Float64x;
pub extern fn cosf64x(__x: _Float64x) _Float64x;
pub extern fn __cosf64x(__x: _Float64x) _Float64x;
pub extern fn sinf64x(__x: _Float64x) _Float64x;
pub extern fn __sinf64x(__x: _Float64x) _Float64x;
pub extern fn tanf64x(__x: _Float64x) _Float64x;
pub extern fn __tanf64x(__x: _Float64x) _Float64x;
pub extern fn coshf64x(__x: _Float64x) _Float64x;
pub extern fn __coshf64x(__x: _Float64x) _Float64x;
pub extern fn sinhf64x(__x: _Float64x) _Float64x;
pub extern fn __sinhf64x(__x: _Float64x) _Float64x;
pub extern fn tanhf64x(__x: _Float64x) _Float64x;
pub extern fn __tanhf64x(__x: _Float64x) _Float64x;
pub extern fn sincosf64x(__x: _Float64x, __sinx: [*c]_Float64x, __cosx: [*c]_Float64x) void;
pub extern fn __sincosf64x(__x: _Float64x, __sinx: [*c]_Float64x, __cosx: [*c]_Float64x) void;
pub extern fn acoshf64x(__x: _Float64x) _Float64x;
pub extern fn __acoshf64x(__x: _Float64x) _Float64x;
pub extern fn asinhf64x(__x: _Float64x) _Float64x;
pub extern fn __asinhf64x(__x: _Float64x) _Float64x;
pub extern fn atanhf64x(__x: _Float64x) _Float64x;
pub extern fn __atanhf64x(__x: _Float64x) _Float64x;
pub extern fn expf64x(__x: _Float64x) _Float64x;
pub extern fn __expf64x(__x: _Float64x) _Float64x;
pub extern fn frexpf64x(__x: _Float64x, __exponent: [*c]c_int) _Float64x;
pub extern fn __frexpf64x(__x: _Float64x, __exponent: [*c]c_int) _Float64x;
pub extern fn ldexpf64x(__x: _Float64x, __exponent: c_int) _Float64x;
pub extern fn __ldexpf64x(__x: _Float64x, __exponent: c_int) _Float64x;
pub extern fn logf64x(__x: _Float64x) _Float64x;
pub extern fn __logf64x(__x: _Float64x) _Float64x;
pub extern fn log10f64x(__x: _Float64x) _Float64x;
pub extern fn __log10f64x(__x: _Float64x) _Float64x;
pub extern fn modff64x(__x: _Float64x, __iptr: [*c]_Float64x) _Float64x;
pub extern fn __modff64x(__x: _Float64x, __iptr: [*c]_Float64x) _Float64x;
pub extern fn exp10f64x(__x: _Float64x) _Float64x;
pub extern fn __exp10f64x(__x: _Float64x) _Float64x;
pub extern fn expm1f64x(__x: _Float64x) _Float64x;
pub extern fn __expm1f64x(__x: _Float64x) _Float64x;
pub extern fn log1pf64x(__x: _Float64x) _Float64x;
pub extern fn __log1pf64x(__x: _Float64x) _Float64x;
pub extern fn logbf64x(__x: _Float64x) _Float64x;
pub extern fn __logbf64x(__x: _Float64x) _Float64x;
pub extern fn exp2f64x(__x: _Float64x) _Float64x;
pub extern fn __exp2f64x(__x: _Float64x) _Float64x;
pub extern fn log2f64x(__x: _Float64x) _Float64x;
pub extern fn __log2f64x(__x: _Float64x) _Float64x;
pub extern fn powf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __powf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn sqrtf64x(__x: _Float64x) _Float64x;
pub extern fn __sqrtf64x(__x: _Float64x) _Float64x;
pub extern fn hypotf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __hypotf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn cbrtf64x(__x: _Float64x) _Float64x;
pub extern fn __cbrtf64x(__x: _Float64x) _Float64x;
pub extern fn ceilf64x(__x: _Float64x) _Float64x;
pub extern fn __ceilf64x(__x: _Float64x) _Float64x;
pub extern fn fabsf64x(__x: _Float64x) _Float64x;
pub extern fn __fabsf64x(__x: _Float64x) _Float64x;
pub extern fn floorf64x(__x: _Float64x) _Float64x;
pub extern fn __floorf64x(__x: _Float64x) _Float64x;
pub extern fn fmodf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __fmodf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn copysignf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __copysignf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn nanf64x(__tagb: [*c]const u8) _Float64x;
pub extern fn __nanf64x(__tagb: [*c]const u8) _Float64x;
pub extern fn j0f64x(_Float64x) _Float64x;
pub extern fn __j0f64x(_Float64x) _Float64x;
pub extern fn j1f64x(_Float64x) _Float64x;
pub extern fn __j1f64x(_Float64x) _Float64x;
pub extern fn jnf64x(c_int, _Float64x) _Float64x;
pub extern fn __jnf64x(c_int, _Float64x) _Float64x;
pub extern fn y0f64x(_Float64x) _Float64x;
pub extern fn __y0f64x(_Float64x) _Float64x;
pub extern fn y1f64x(_Float64x) _Float64x;
pub extern fn __y1f64x(_Float64x) _Float64x;
pub extern fn ynf64x(c_int, _Float64x) _Float64x;
pub extern fn __ynf64x(c_int, _Float64x) _Float64x;
pub extern fn erff64x(_Float64x) _Float64x;
pub extern fn __erff64x(_Float64x) _Float64x;
pub extern fn erfcf64x(_Float64x) _Float64x;
pub extern fn __erfcf64x(_Float64x) _Float64x;
pub extern fn lgammaf64x(_Float64x) _Float64x;
pub extern fn __lgammaf64x(_Float64x) _Float64x;
pub extern fn tgammaf64x(_Float64x) _Float64x;
pub extern fn __tgammaf64x(_Float64x) _Float64x;
pub extern fn lgammaf64x_r(_Float64x, __signgamp: [*c]c_int) _Float64x;
pub extern fn __lgammaf64x_r(_Float64x, __signgamp: [*c]c_int) _Float64x;
pub extern fn rintf64x(__x: _Float64x) _Float64x;
pub extern fn __rintf64x(__x: _Float64x) _Float64x;
pub extern fn nextafterf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __nextafterf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn nextdownf64x(__x: _Float64x) _Float64x;
pub extern fn __nextdownf64x(__x: _Float64x) _Float64x;
pub extern fn nextupf64x(__x: _Float64x) _Float64x;
pub extern fn __nextupf64x(__x: _Float64x) _Float64x;
pub extern fn remainderf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __remainderf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn scalbnf64x(__x: _Float64x, __n: c_int) _Float64x;
pub extern fn __scalbnf64x(__x: _Float64x, __n: c_int) _Float64x;
pub extern fn ilogbf64x(__x: _Float64x) c_int;
pub extern fn __ilogbf64x(__x: _Float64x) c_int;
pub extern fn llogbf64x(__x: _Float64x) c_long;
pub extern fn __llogbf64x(__x: _Float64x) c_long;
pub extern fn scalblnf64x(__x: _Float64x, __n: c_long) _Float64x;
pub extern fn __scalblnf64x(__x: _Float64x, __n: c_long) _Float64x;
pub extern fn nearbyintf64x(__x: _Float64x) _Float64x;
pub extern fn __nearbyintf64x(__x: _Float64x) _Float64x;
pub extern fn roundf64x(__x: _Float64x) _Float64x;
pub extern fn __roundf64x(__x: _Float64x) _Float64x;
pub extern fn truncf64x(__x: _Float64x) _Float64x;
pub extern fn __truncf64x(__x: _Float64x) _Float64x;
pub extern fn remquof64x(__x: _Float64x, __y: _Float64x, __quo: [*c]c_int) _Float64x;
pub extern fn __remquof64x(__x: _Float64x, __y: _Float64x, __quo: [*c]c_int) _Float64x;
pub extern fn lrintf64x(__x: _Float64x) c_long;
pub extern fn __lrintf64x(__x: _Float64x) c_long;
pub extern fn llrintf64x(__x: _Float64x) c_longlong;
pub extern fn __llrintf64x(__x: _Float64x) c_longlong;
pub extern fn lroundf64x(__x: _Float64x) c_long;
pub extern fn __lroundf64x(__x: _Float64x) c_long;
pub extern fn llroundf64x(__x: _Float64x) c_longlong;
pub extern fn __llroundf64x(__x: _Float64x) c_longlong;
pub extern fn fdimf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __fdimf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn fmaxf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __fmaxf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn fminf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __fminf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn fmaf64x(__x: _Float64x, __y: _Float64x, __z: _Float64x) _Float64x;
pub extern fn __fmaf64x(__x: _Float64x, __y: _Float64x, __z: _Float64x) _Float64x;
pub extern fn roundevenf64x(__x: _Float64x) _Float64x;
pub extern fn __roundevenf64x(__x: _Float64x) _Float64x;
pub extern fn fromfpf64x(__x: _Float64x, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpf64x(__x: _Float64x, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpf64x(__x: _Float64x, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpf64x(__x: _Float64x, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn fromfpxf64x(__x: _Float64x, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpxf64x(__x: _Float64x, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpxf64x(__x: _Float64x, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpxf64x(__x: _Float64x, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn canonicalizef64x(__cx: [*c]_Float64x, __x: [*c]const _Float64x) c_int;
pub extern fn fmaxmagf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __fmaxmagf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn fminmagf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __fminmagf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn fmaximumf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __fmaximumf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn fminimumf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __fminimumf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn fmaximum_numf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __fmaximum_numf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn fminimum_numf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __fminimum_numf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn fmaximum_magf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __fmaximum_magf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn fminimum_magf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __fminimum_magf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn fmaximum_mag_numf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __fmaximum_mag_numf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn fminimum_mag_numf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn __fminimum_mag_numf64x(__x: _Float64x, __y: _Float64x) _Float64x;
pub extern fn totalorderf64x(__x: [*c]const _Float64x, __y: [*c]const _Float64x) c_int;
pub extern fn totalordermagf64x(__x: [*c]const _Float64x, __y: [*c]const _Float64x) c_int;
pub extern fn getpayloadf64x(__x: [*c]const _Float64x) _Float64x;
pub extern fn __getpayloadf64x(__x: [*c]const _Float64x) _Float64x;
pub extern fn setpayloadf64x(__x: [*c]_Float64x, __payload: _Float64x) c_int;
pub extern fn setpayloadsigf64x(__x: [*c]_Float64x, __payload: _Float64x) c_int;
pub extern fn fadd(__x: f64, __y: f64) f32;
pub extern fn fdiv(__x: f64, __y: f64) f32;
pub extern fn ffma(__x: f64, __y: f64, __z: f64) f32;
pub extern fn fmul(__x: f64, __y: f64) f32;
pub extern fn fsqrt(__x: f64) f32;
pub extern fn fsub(__x: f64, __y: f64) f32;
pub extern fn faddl(__x: c_longdouble, __y: c_longdouble) f32;
pub extern fn fdivl(__x: c_longdouble, __y: c_longdouble) f32;
pub extern fn ffmal(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) f32;
pub extern fn fmull(__x: c_longdouble, __y: c_longdouble) f32;
pub extern fn fsqrtl(__x: c_longdouble) f32;
pub extern fn fsubl(__x: c_longdouble, __y: c_longdouble) f32;
pub extern fn daddl(__x: c_longdouble, __y: c_longdouble) f64;
pub extern fn ddivl(__x: c_longdouble, __y: c_longdouble) f64;
pub extern fn dfmal(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) f64;
pub extern fn dmull(__x: c_longdouble, __y: c_longdouble) f64;
pub extern fn dsqrtl(__x: c_longdouble) f64;
pub extern fn dsubl(__x: c_longdouble, __y: c_longdouble) f64;
pub extern fn f32addf32x(__x: _Float32x, __y: _Float32x) _Float32;
pub extern fn f32divf32x(__x: _Float32x, __y: _Float32x) _Float32;
pub extern fn f32fmaf32x(__x: _Float32x, __y: _Float32x, __z: _Float32x) _Float32;
pub extern fn f32mulf32x(__x: _Float32x, __y: _Float32x) _Float32;
pub extern fn f32sqrtf32x(__x: _Float32x) _Float32;
pub extern fn f32subf32x(__x: _Float32x, __y: _Float32x) _Float32;
pub extern fn f32addf64(__x: _Float64, __y: _Float64) _Float32;
pub extern fn f32divf64(__x: _Float64, __y: _Float64) _Float32;
pub extern fn f32fmaf64(__x: _Float64, __y: _Float64, __z: _Float64) _Float32;
pub extern fn f32mulf64(__x: _Float64, __y: _Float64) _Float32;
pub extern fn f32sqrtf64(__x: _Float64) _Float32;
pub extern fn f32subf64(__x: _Float64, __y: _Float64) _Float32;
pub extern fn f32addf64x(__x: _Float64x, __y: _Float64x) _Float32;
pub extern fn f32divf64x(__x: _Float64x, __y: _Float64x) _Float32;
pub extern fn f32fmaf64x(__x: _Float64x, __y: _Float64x, __z: _Float64x) _Float32;
pub extern fn f32mulf64x(__x: _Float64x, __y: _Float64x) _Float32;
pub extern fn f32sqrtf64x(__x: _Float64x) _Float32;
pub extern fn f32subf64x(__x: _Float64x, __y: _Float64x) _Float32;
pub extern fn f32xaddf64(__x: _Float64, __y: _Float64) _Float32x;
pub extern fn f32xdivf64(__x: _Float64, __y: _Float64) _Float32x;
pub extern fn f32xfmaf64(__x: _Float64, __y: _Float64, __z: _Float64) _Float32x;
pub extern fn f32xmulf64(__x: _Float64, __y: _Float64) _Float32x;
pub extern fn f32xsqrtf64(__x: _Float64) _Float32x;
pub extern fn f32xsubf64(__x: _Float64, __y: _Float64) _Float32x;
pub extern fn f32xaddf64x(__x: _Float64x, __y: _Float64x) _Float32x;
pub extern fn f32xdivf64x(__x: _Float64x, __y: _Float64x) _Float32x;
pub extern fn f32xfmaf64x(__x: _Float64x, __y: _Float64x, __z: _Float64x) _Float32x;
pub extern fn f32xmulf64x(__x: _Float64x, __y: _Float64x) _Float32x;
pub extern fn f32xsqrtf64x(__x: _Float64x) _Float32x;
pub extern fn f32xsubf64x(__x: _Float64x, __y: _Float64x) _Float32x;
pub extern fn f64addf64x(__x: _Float64x, __y: _Float64x) _Float64;
pub extern fn f64divf64x(__x: _Float64x, __y: _Float64x) _Float64;
pub extern fn f64fmaf64x(__x: _Float64x, __y: _Float64x, __z: _Float64x) _Float64;
pub extern fn f64mulf64x(__x: _Float64x, __y: _Float64x) _Float64;
pub extern fn f64sqrtf64x(__x: _Float64x) _Float64;
pub extern fn f64subf64x(__x: _Float64x, __y: _Float64x) _Float64;
pub extern var signgam: c_int;
pub const FP_NAN: c_int = 0;
pub const FP_INFINITE: c_int = 1;
pub const FP_ZERO: c_int = 2;
pub const FP_SUBNORMAL: c_int = 3;
pub const FP_NORMAL: c_int = 4;
const enum_unnamed_9 = c_uint;
pub extern fn __iscanonicall(__x: c_longdouble) c_int;
// /usr/include/x86_64-linux-gnu/bits/timex.h:81:3: warning: struct demoted to opaque type - has bitfield
pub const struct_timex = opaque {};
pub extern fn clock_adjtime(__clock_id: __clockid_t, __utx: ?*struct_timex) c_int;
pub const struct_tm = extern struct {
    tm_sec: c_int = @import("std").mem.zeroes(c_int),
    tm_min: c_int = @import("std").mem.zeroes(c_int),
    tm_hour: c_int = @import("std").mem.zeroes(c_int),
    tm_mday: c_int = @import("std").mem.zeroes(c_int),
    tm_mon: c_int = @import("std").mem.zeroes(c_int),
    tm_year: c_int = @import("std").mem.zeroes(c_int),
    tm_wday: c_int = @import("std").mem.zeroes(c_int),
    tm_yday: c_int = @import("std").mem.zeroes(c_int),
    tm_isdst: c_int = @import("std").mem.zeroes(c_int),
    tm_gmtoff: c_long = @import("std").mem.zeroes(c_long),
    tm_zone: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const struct_itimerspec = extern struct {
    it_interval: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    it_value: struct_timespec = @import("std").mem.zeroes(struct_timespec),
};
pub const struct_sigevent = opaque {};
pub extern fn clock() clock_t;
pub extern fn time(__timer: [*c]time_t) time_t;
pub extern fn difftime(__time1: time_t, __time0: time_t) f64;
pub extern fn mktime(__tp: [*c]struct_tm) time_t;
pub extern fn strftime(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm) usize;
pub extern fn strptime(noalias __s: [*c]const u8, noalias __fmt: [*c]const u8, __tp: [*c]struct_tm) [*c]u8;
pub extern fn strftime_l(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm, __loc: locale_t) usize;
pub extern fn strptime_l(noalias __s: [*c]const u8, noalias __fmt: [*c]const u8, __tp: [*c]struct_tm, __loc: locale_t) [*c]u8;
pub extern fn gmtime(__timer: [*c]const time_t) [*c]struct_tm;
pub extern fn localtime(__timer: [*c]const time_t) [*c]struct_tm;
pub extern fn gmtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
pub extern fn localtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
pub extern fn asctime(__tp: [*c]const struct_tm) [*c]u8;
pub extern fn ctime(__timer: [*c]const time_t) [*c]u8;
pub extern fn asctime_r(noalias __tp: [*c]const struct_tm, noalias __buf: [*c]u8) [*c]u8;
pub extern fn ctime_r(noalias __timer: [*c]const time_t, noalias __buf: [*c]u8) [*c]u8;
pub extern var __tzname: [2][*c]u8;
pub extern var __daylight: c_int;
pub extern var __timezone: c_long;
pub extern var tzname: [2][*c]u8;
pub extern fn tzset() void;
pub extern var daylight: c_int;
pub extern var timezone: c_long;
pub extern fn timegm(__tp: [*c]struct_tm) time_t;
pub extern fn timelocal(__tp: [*c]struct_tm) time_t;
pub extern fn dysize(__year: c_int) c_int;
pub extern fn nanosleep(__requested_time: [*c]const struct_timespec, __remaining: [*c]struct_timespec) c_int;
pub extern fn clock_getres(__clock_id: clockid_t, __res: [*c]struct_timespec) c_int;
pub extern fn clock_gettime(__clock_id: clockid_t, __tp: [*c]struct_timespec) c_int;
pub extern fn clock_settime(__clock_id: clockid_t, __tp: [*c]const struct_timespec) c_int;
pub extern fn clock_nanosleep(__clock_id: clockid_t, __flags: c_int, __req: [*c]const struct_timespec, __rem: [*c]struct_timespec) c_int;
pub extern fn clock_getcpuclockid(__pid: pid_t, __clock_id: [*c]clockid_t) c_int;
pub extern fn timer_create(__clock_id: clockid_t, noalias __evp: ?*struct_sigevent, noalias __timerid: [*c]timer_t) c_int;
pub extern fn timer_delete(__timerid: timer_t) c_int;
pub extern fn timer_settime(__timerid: timer_t, __flags: c_int, noalias __value: [*c]const struct_itimerspec, noalias __ovalue: [*c]struct_itimerspec) c_int;
pub extern fn timer_gettime(__timerid: timer_t, __value: [*c]struct_itimerspec) c_int;
pub extern fn timer_getoverrun(__timerid: timer_t) c_int;
pub extern fn timespec_get(__ts: [*c]struct_timespec, __base: c_int) c_int;
pub extern fn timespec_getres(__ts: [*c]struct_timespec, __base: c_int) c_int;
pub extern var getdate_err: c_int;
pub extern fn getdate(__string: [*c]const u8) [*c]struct_tm;
pub extern fn getdate_r(noalias __string: [*c]const u8, noalias __resbufp: [*c]struct_tm) c_int;
pub const struct_timezone = extern struct {
    tz_minuteswest: c_int = @import("std").mem.zeroes(c_int),
    tz_dsttime: c_int = @import("std").mem.zeroes(c_int),
};
pub extern fn gettimeofday(noalias __tv: [*c]struct_timeval, noalias __tz: ?*anyopaque) c_int;
pub extern fn settimeofday(__tv: [*c]const struct_timeval, __tz: [*c]const struct_timezone) c_int;
pub extern fn adjtime(__delta: [*c]const struct_timeval, __olddelta: [*c]struct_timeval) c_int;
pub const ITIMER_REAL: c_int = 0;
pub const ITIMER_VIRTUAL: c_int = 1;
pub const ITIMER_PROF: c_int = 2;
pub const enum___itimer_which = c_uint;
pub const struct_itimerval = extern struct {
    it_interval: struct_timeval = @import("std").mem.zeroes(struct_timeval),
    it_value: struct_timeval = @import("std").mem.zeroes(struct_timeval),
};
pub const __itimer_which_t = enum___itimer_which;
pub extern fn getitimer(__which: __itimer_which_t, __value: [*c]struct_itimerval) c_int;
pub extern fn setitimer(__which: __itimer_which_t, noalias __new: [*c]const struct_itimerval, noalias __old: [*c]struct_itimerval) c_int;
pub extern fn utimes(__file: [*c]const u8, __tvp: [*c]const struct_timeval) c_int;
pub extern fn lutimes(__file: [*c]const u8, __tvp: [*c]const struct_timeval) c_int;
pub extern fn futimes(__fd: c_int, __tvp: [*c]const struct_timeval) c_int;
pub extern fn futimesat(__fd: c_int, __file: [*c]const u8, __tvp: [*c]const struct_timeval) c_int;
pub extern fn setproctitle(fmt: [*c]const u8, ...) void;
pub extern fn __sysconf(__name: c_int) c_long;
pub const VALUE = c_ulong;
pub const ID = c_ulong;
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/static_assert.h:49:46: warning: ignoring StaticAssert declaration

// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/static_assert.h:49:46: warning: ignoring StaticAssert declaration

// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/static_assert.h:49:46: warning: ignoring StaticAssert declaration

// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/static_assert.h:49:46: warning: ignoring StaticAssert declaration
pub extern fn rb_class_new(super: VALUE) VALUE;
pub extern fn rb_mod_init_copy(clone: VALUE, orig: VALUE) VALUE;
pub extern fn rb_check_inheritable(super: VALUE) void;
pub extern fn rb_define_class_id(id: ID, super: VALUE) VALUE;
pub extern fn rb_define_class_id_under(outer: VALUE, id: ID, super: VALUE) VALUE;
pub extern fn rb_module_new() VALUE;
pub extern fn rb_refinement_new() VALUE;
pub extern fn rb_define_module_id(id: ID) VALUE;
pub extern fn rb_define_module_id_under(outer: VALUE, id: ID) VALUE;
pub extern fn rb_mod_included_modules(mod: VALUE) VALUE;
pub extern fn rb_mod_include_p(child: VALUE, parent: VALUE) VALUE;
pub extern fn rb_mod_ancestors(mod: VALUE) VALUE;
pub extern fn rb_class_descendants(klass: VALUE) VALUE;
pub extern fn rb_class_subclasses(klass: VALUE) VALUE;
pub extern fn rb_class_attached_object(klass: VALUE) VALUE;
pub extern fn rb_class_instance_methods(argc: c_int, argv: [*c]const VALUE, mod: VALUE) VALUE;
pub extern fn rb_class_public_instance_methods(argc: c_int, argv: [*c]const VALUE, mod: VALUE) VALUE;
pub extern fn rb_class_protected_instance_methods(argc: c_int, argv: [*c]const VALUE, mod: VALUE) VALUE;
pub extern fn rb_class_private_instance_methods(argc: c_int, argv: [*c]const VALUE, mod: VALUE) VALUE;
pub extern fn rb_obj_singleton_methods(argc: c_int, argv: [*c]const VALUE, obj: VALUE) VALUE;
pub extern fn rb_define_method_id(klass: VALUE, mid: ID, func: ?*const fn (...) callconv(.c) VALUE, arity: c_int) void;
pub extern fn rb_undef(mod: VALUE, mid: ID) void;
pub extern fn rb_define_protected_method(klass: VALUE, mid: [*c]const u8, func: ?*const fn (...) callconv(.c) VALUE, arity: c_int) void;
pub extern fn rb_define_private_method(klass: VALUE, mid: [*c]const u8, func: ?*const fn (...) callconv(.c) VALUE, arity: c_int) void;
pub extern fn rb_define_singleton_method(obj: VALUE, mid: [*c]const u8, func: ?*const fn (...) callconv(.c) VALUE, arity: c_int) void;
pub extern fn rb_singleton_class(obj: VALUE) VALUE;
pub extern fn rb_sourceline() c_int;
pub extern fn rb_sourcefile() [*c]const u8;
pub extern fn rb_frame_method_id_and_class(idp: [*c]ID, klassp: [*c]VALUE) c_int;
pub extern fn rb_check_funcall(recv: VALUE, mid: ID, argc: c_int, argv: [*c]const VALUE) VALUE;
pub extern fn rb_check_funcall_kw(recv: VALUE, mid: ID, argc: c_int, argv: [*c]const VALUE, kw_splat: c_int) VALUE;
pub extern fn rb_eval_cmd_kw(cmd: VALUE, arg: VALUE, kw_splat: c_int) VALUE;
pub extern fn rb_apply(recv: VALUE, mid: ID, args: VALUE) VALUE;
pub extern fn rb_obj_instance_eval(argc: c_int, argv: [*c]const VALUE, recv: VALUE) VALUE;
pub extern fn rb_obj_instance_exec(argc: c_int, argv: [*c]const VALUE, recv: VALUE) VALUE;
pub extern fn rb_mod_module_eval(argc: c_int, argv: [*c]const VALUE, mod: VALUE) VALUE;
pub extern fn rb_mod_module_exec(argc: c_int, argv: [*c]const VALUE, mod: VALUE) VALUE;
pub const rb_alloc_func_t = ?*const fn (VALUE) callconv(.c) VALUE;
pub extern fn rb_define_alloc_func(klass: VALUE, func: rb_alloc_func_t) void;
pub extern fn rb_undef_alloc_func(klass: VALUE) void;
pub extern fn rb_get_alloc_func(klass: VALUE) rb_alloc_func_t;
pub extern fn rb_clear_constant_cache_for_id(id: ID) void;
pub extern fn rb_alias(klass: VALUE, dst: ID, src: ID) void;
pub extern fn rb_attr(klass: VALUE, name: ID, need_reader: c_int, need_writer: c_int, honour_visibility: c_int) void;
pub extern fn rb_remove_method(klass: VALUE, name: [*c]const u8) void;
pub extern fn rb_remove_method_id(klass: VALUE, mid: ID) void;
pub extern fn rb_method_boundp(klass: VALUE, id: ID, ex: c_int) c_int;
pub extern fn rb_method_basic_definition_p(klass: VALUE, mid: ID) c_int;
pub extern fn rb_obj_respond_to(obj: VALUE, mid: ID, private_p: c_int) c_int;
pub extern fn rb_respond_to(obj: VALUE, mid: ID) c_int;
pub extern fn rb_f_notimplement(argc: c_int, argv: [*c]const VALUE, obj: VALUE, marker: VALUE) noreturn;
pub extern fn rb_backtrace() void;
pub extern fn rb_make_backtrace() VALUE;
pub extern fn rb_define_method(klass: VALUE, mid: [*c]const u8, func: ?*const fn (...) callconv(.c) VALUE, arity: c_int) void;
pub extern fn rb_define_module_function(klass: VALUE, mid: [*c]const u8, func: ?*const fn (...) callconv(.c) VALUE, arity: c_int) void;
pub extern fn rb_define_global_function(mid: [*c]const u8, func: ?*const fn (...) callconv(.c) VALUE, arity: c_int) void;
pub extern fn rb_undef_method(klass: VALUE, name: [*c]const u8) void;
pub extern fn rb_define_alias(klass: VALUE, dst: [*c]const u8, src: [*c]const u8) void;
pub extern fn rb_define_attr(klass: VALUE, name: [*c]const u8, read: c_int, write: c_int) void;
pub extern fn rb_define_singleton_method_notimpl(VALUE, [*c]const u8, ?*const fn (c_int, [*c]const VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_singleton_method_m3(VALUE, [*c]const u8, ?*const fn (...) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_singleton_method_m2(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE) callconv(.c) VALUE, c_int) void;
const union_unnamed_10 = extern union {
    x: [*c]VALUE,
    y: [*c]const VALUE,
};
pub extern fn rb_define_singleton_method_m1(VALUE, [*c]const u8, ?*const fn (c_int, union_unnamed_10, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_singleton_method_00(VALUE, [*c]const u8, ?*const fn (VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_singleton_method_01(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_singleton_method_02(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_singleton_method_03(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_singleton_method_04(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_singleton_method_05(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_singleton_method_06(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_singleton_method_07(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_singleton_method_08(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_singleton_method_09(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_singleton_method_10(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_singleton_method_11(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_singleton_method_12(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_singleton_method_13(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_singleton_method_14(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_singleton_method_15(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_notimpl(VALUE, [*c]const u8, ?*const fn (c_int, [*c]const VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_m3(VALUE, [*c]const u8, ?*const fn (...) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_m2(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE) callconv(.c) VALUE, c_int) void;
const union_unnamed_11 = extern union {
    x: [*c]VALUE,
    y: [*c]const VALUE,
};
pub extern fn rb_define_protected_method_m1(VALUE, [*c]const u8, ?*const fn (c_int, union_unnamed_11, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_00(VALUE, [*c]const u8, ?*const fn (VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_01(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_02(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_03(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_04(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_05(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_06(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_07(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_08(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_09(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_10(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_11(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_12(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_13(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_14(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_protected_method_15(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_notimpl(VALUE, [*c]const u8, ?*const fn (c_int, [*c]const VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_m3(VALUE, [*c]const u8, ?*const fn (...) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_m2(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE) callconv(.c) VALUE, c_int) void;
const union_unnamed_12 = extern union {
    x: [*c]VALUE,
    y: [*c]const VALUE,
};
pub extern fn rb_define_private_method_m1(VALUE, [*c]const u8, ?*const fn (c_int, union_unnamed_12, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_00(VALUE, [*c]const u8, ?*const fn (VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_01(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_02(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_03(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_04(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_05(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_06(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_07(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_08(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_09(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_10(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_11(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_12(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_13(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_14(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_private_method_15(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_notimpl(VALUE, [*c]const u8, ?*const fn (c_int, [*c]const VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_m3(VALUE, [*c]const u8, ?*const fn (...) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_m2(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE) callconv(.c) VALUE, c_int) void;
const union_unnamed_13 = extern union {
    x: [*c]VALUE,
    y: [*c]const VALUE,
};
pub extern fn rb_define_module_function_m1(VALUE, [*c]const u8, ?*const fn (c_int, union_unnamed_13, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_00(VALUE, [*c]const u8, ?*const fn (VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_01(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_02(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_03(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_04(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_05(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_06(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_07(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_08(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_09(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_10(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_11(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_12(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_13(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_14(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_module_function_15(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_notimpl([*c]const u8, ?*const fn (c_int, [*c]const VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_m3([*c]const u8, ?*const fn (...) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_m2([*c]const u8, ?*const fn (VALUE, VALUE) callconv(.c) VALUE, c_int) void;
const union_unnamed_14 = extern union {
    x: [*c]VALUE,
    y: [*c]const VALUE,
};
pub extern fn rb_define_global_function_m1([*c]const u8, ?*const fn (c_int, union_unnamed_14, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_00([*c]const u8, ?*const fn (VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_01([*c]const u8, ?*const fn (VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_02([*c]const u8, ?*const fn (VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_03([*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_04([*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_05([*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_06([*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_07([*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_08([*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_09([*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_10([*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_11([*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_12([*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_13([*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_14([*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_global_function_15([*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_notimpl(VALUE, ID, ?*const fn (c_int, [*c]const VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_m3(VALUE, ID, ?*const fn (...) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_m2(VALUE, ID, ?*const fn (VALUE, VALUE) callconv(.c) VALUE, c_int) void;
const union_unnamed_15 = extern union {
    x: [*c]VALUE,
    y: [*c]const VALUE,
};
pub extern fn rb_define_method_id_m1(VALUE, ID, ?*const fn (c_int, union_unnamed_15, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_00(VALUE, ID, ?*const fn (VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_01(VALUE, ID, ?*const fn (VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_02(VALUE, ID, ?*const fn (VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_03(VALUE, ID, ?*const fn (VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_04(VALUE, ID, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_05(VALUE, ID, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_06(VALUE, ID, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_07(VALUE, ID, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_08(VALUE, ID, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_09(VALUE, ID, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_10(VALUE, ID, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_11(VALUE, ID, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_12(VALUE, ID, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_13(VALUE, ID, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_14(VALUE, ID, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_id_15(VALUE, ID, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_notimpl(VALUE, [*c]const u8, ?*const fn (c_int, [*c]const VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_m3(VALUE, [*c]const u8, ?*const fn (...) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_m2(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE) callconv(.c) VALUE, c_int) void;
const union_unnamed_16 = extern union {
    x: [*c]VALUE,
    y: [*c]const VALUE,
};
pub extern fn rb_define_method_m1(VALUE, [*c]const u8, ?*const fn (c_int, union_unnamed_16, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_00(VALUE, [*c]const u8, ?*const fn (VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_01(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_02(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_03(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_04(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_05(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_06(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_07(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_08(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_09(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_10(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_11(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_12(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_13(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_14(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_define_method_15(VALUE, [*c]const u8, ?*const fn (VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE) callconv(.c) VALUE, c_int) void;
pub extern fn rb_int2big(i: isize) VALUE;
pub extern fn rb_int2inum(i: isize) VALUE;
pub extern fn rb_uint2big(i: usize) VALUE;
pub extern fn rb_uint2inum(i: usize) VALUE;
pub const RUBY_Qfalse: c_int = 0;
pub const RUBY_Qnil: c_int = 4;
pub const RUBY_Qtrue: c_int = 20;
pub const RUBY_Qundef: c_int = 36;
pub const RUBY_IMMEDIATE_MASK: c_int = 7;
pub const RUBY_FIXNUM_FLAG: c_int = 1;
pub const RUBY_FLONUM_MASK: c_int = 3;
pub const RUBY_FLONUM_FLAG: c_int = 2;
pub const RUBY_SYMBOL_FLAG: c_int = 12;
pub const RUBY_SPECIAL_SHIFT: c_int = 8;
pub const enum_ruby_special_consts = c_uint;
pub fn RB_TEST(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    return (obj & @as(VALUE, @bitCast(@as(c_long, ~RUBY_Qnil)))) != 0;
}
pub fn RB_NIL_P(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    return obj == @as(VALUE, @bitCast(@as(c_long, RUBY_Qnil)));
}
pub fn RB_UNDEF_P(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    return obj == @as(VALUE, @bitCast(@as(c_long, RUBY_Qundef)));
}
pub fn RB_NIL_OR_UNDEF_P(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    const mask: VALUE = @as(VALUE, @bitCast(@as(c_long, ~(RUBY_Qundef ^ RUBY_Qnil))));
    _ = &mask;
    const common_bits: VALUE = @as(VALUE, @bitCast(@as(c_long, RUBY_Qundef & RUBY_Qnil)));
    _ = &common_bits;
    return (obj & mask) == common_bits;
}
pub fn RB_FIXNUM_P(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    return (obj & @as(VALUE, @bitCast(@as(c_long, RUBY_FIXNUM_FLAG)))) != 0;
}
pub fn RB_STATIC_SYM_P(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    const mask: VALUE = ~(((@as(c_ulong, @bitCast(@as(c_long, 9223372036854775807))) *% @as(c_ulong, 2)) +% @as(c_ulong, 1)) << @intCast(RUBY_SPECIAL_SHIFT));
    _ = &mask;
    return (obj & mask) == @as(VALUE, @bitCast(@as(c_long, RUBY_SYMBOL_FLAG)));
}
pub fn RB_FLONUM_P(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    return (obj & @as(VALUE, @bitCast(@as(c_long, RUBY_FLONUM_MASK)))) == @as(VALUE, @bitCast(@as(c_long, RUBY_FLONUM_FLAG)));
}
pub fn RB_IMMEDIATE_P(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    return (obj & @as(VALUE, @bitCast(@as(c_long, RUBY_IMMEDIATE_MASK)))) != 0;
}
pub fn RB_SPECIAL_CONST_P(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    return (obj == @as(VALUE, @bitCast(@as(c_long, RUBY_Qfalse)))) or (@as(c_int, @intFromBool(RB_IMMEDIATE_P(obj))) != 0);
}
pub fn rb_special_const_p(arg_obj: VALUE) callconv(.c) VALUE {
    var obj = arg_obj;
    _ = &obj;
    return @as(VALUE, @bitCast(@as(c_ulong, @as(c_uint, @intFromBool(RB_SPECIAL_CONST_P(obj))) *% @as(c_uint, @bitCast(RUBY_Qtrue)))));
}
pub extern fn rb_out_of_int(num: c_long) noreturn;
pub extern fn rb_num2long(num: VALUE) c_long;
pub extern fn rb_num2ulong(num: VALUE) c_ulong;
pub fn RB_INT2FIX(arg_i: c_long) callconv(.c) VALUE {
    var i = arg_i;
    _ = &i;
    _ = @as(c_int, 0);
    const j: c_ulong = @as(c_ulong, @bitCast(i));
    _ = &j;
    const k: c_ulong = (j << @intCast(1)) +% @as(c_ulong, @bitCast(@as(c_long, RUBY_FIXNUM_FLAG)));
    _ = &k;
    const l: c_long = @as(c_long, @bitCast(k));
    _ = &l;
    const m: c_long = l;
    _ = &m;
    const n: VALUE = @as(VALUE, @bitCast(m));
    _ = &n;
    _ = @as(c_int, 0);
    return n;
}
pub fn rb_long2int_inline(arg_n: c_long) callconv(.c) c_int {
    var n = arg_n;
    _ = &n;
    var i: c_int = @as(c_int, @bitCast(@as(c_int, @truncate(n))));
    _ = &i;
    if (@sizeOf(c_long) <= @sizeOf(c_int)) {
        __builtin_assume(@as(c_long, @bitCast(@as(c_long, i))) == n);
    }
    if (@as(c_long, @bitCast(@as(c_long, i))) != n) {
        rb_out_of_int(n);
    }
    return i;
}
pub fn rbimpl_fix2long_by_idiv(arg_x: VALUE) callconv(.c) c_long {
    var x = arg_x;
    _ = &x;
    _ = @as(c_int, 0);
    const y: c_long = @as(c_long, @bitCast(x -% @as(VALUE, @bitCast(@as(c_long, RUBY_FIXNUM_FLAG)))));
    _ = &y;
    const z: c_long = @divTrunc(y, @as(c_long, @bitCast(@as(c_long, @as(c_int, 2)))));
    _ = &z;
    const w: c_long = z;
    _ = &w;
    _ = @as(c_int, 0);
    return w;
}
pub fn rbimpl_fix2long_by_shift(arg_x: VALUE) callconv(.c) c_long {
    var x = arg_x;
    _ = &x;
    _ = @as(c_int, 0);
    const y: c_long = @as(c_long, @bitCast(x));
    _ = &y;
    const z: c_long = y >> @intCast(1);
    _ = &z;
    const w: c_long = z;
    _ = &w;
    _ = @as(c_int, 0);
    return w;
}
pub fn rbimpl_right_shift_is_arithmetic_p() callconv(.c) bool {
    return (-@as(c_int, 1) >> @intCast(1)) == -@as(c_int, 1);
}
pub fn rb_fix2long(arg_x: VALUE) callconv(.c) c_long {
    var x = arg_x;
    _ = &x;
    if (rbimpl_right_shift_is_arithmetic_p()) {
        return rbimpl_fix2long_by_shift(x);
    } else {
        return rbimpl_fix2long_by_idiv(x);
    }
    return 0;
}
pub fn rb_fix2ulong(arg_x: VALUE) callconv(.c) c_ulong {
    var x = arg_x;
    _ = &x;
    _ = @as(c_int, 0);
    return @as(c_ulong, @bitCast(rb_fix2long(x)));
}
pub fn rb_num2long_inline(arg_x: VALUE) callconv(.c) c_long {
    var x = arg_x;
    _ = &x;
    if (RB_FIXNUM_P(x)) return rb_fix2long(x) else return rb_num2long(x);
    return 0;
}
pub fn rb_num2ulong_inline(arg_x: VALUE) callconv(.c) c_ulong {
    var x = arg_x;
    _ = &x;
    if (RB_FIXNUM_P(x)) return rb_fix2ulong(x) else return rb_num2ulong(x);
    return 0;
}
pub fn rb_long2num_inline(arg_v: c_long) callconv(.c) VALUE {
    var v = arg_v;
    _ = &v;
    if ((v < (@divTrunc(@as(c_long, 9223372036854775807), @as(c_long, @bitCast(@as(c_long, @as(c_int, 2))))) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1)))))) and (v >= @divTrunc(-@as(c_long, 9223372036854775807) - @as(c_long, 1), @as(c_long, @bitCast(@as(c_long, @as(c_int, 2))))))) return RB_INT2FIX(v) else return rb_int2big(v);
    return @import("std").mem.zeroes(VALUE);
}
pub fn rb_ulong2num_inline(arg_v: c_ulong) callconv(.c) VALUE {
    var v = arg_v;
    _ = &v;
    if (v < @as(c_ulong, @bitCast(@divTrunc(@as(c_long, 9223372036854775807), @as(c_long, @bitCast(@as(c_long, @as(c_int, 2))))) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))))) return RB_INT2FIX(@as(c_long, @bitCast(v))) else return rb_uint2big(v);
    return @import("std").mem.zeroes(VALUE);
}
pub extern fn rb_num2int(num: VALUE) c_long;
pub extern fn rb_fix2int(num: VALUE) c_long;
pub extern fn rb_num2uint(num: VALUE) c_ulong;
pub extern fn rb_fix2uint(num: VALUE) c_ulong;
pub fn RB_FIX2INT(arg_x: VALUE) callconv(.c) c_int {
    var x = arg_x;
    _ = &x;
    var ret: c_long = undefined;
    _ = &ret;
    if (@sizeOf(c_int) < @sizeOf(c_long)) {
        ret = rb_fix2int(x);
    } else {
        ret = rb_fix2long(x);
    }
    return @as(c_int, @bitCast(@as(c_int, @truncate(ret))));
}
pub fn rb_num2int_inline(arg_x: VALUE) callconv(.c) c_int {
    var x = arg_x;
    _ = &x;
    var ret: c_long = undefined;
    _ = &ret;
    if (@sizeOf(c_int) == @sizeOf(c_long)) {
        ret = rb_num2long_inline(x);
    } else if (RB_FIXNUM_P(x)) {
        ret = rb_fix2int(x);
    } else {
        ret = rb_num2int(x);
    }
    return @as(c_int, @bitCast(@as(c_int, @truncate(ret))));
}
pub fn RB_NUM2UINT(arg_x: VALUE) callconv(.c) c_uint {
    var x = arg_x;
    _ = &x;
    var ret: c_ulong = undefined;
    _ = &ret;
    if (@sizeOf(c_int) < @sizeOf(c_long)) {
        ret = rb_num2uint(x);
    } else {
        ret = rb_num2ulong_inline(x);
    }
    return @as(c_uint, @bitCast(@as(c_uint, @truncate(ret))));
}
pub fn RB_FIX2UINT(arg_x: VALUE) callconv(.c) c_uint {
    var x = arg_x;
    _ = &x;
    var ret: c_ulong = undefined;
    _ = &ret;
    if (@sizeOf(c_int) < @sizeOf(c_long)) {
        ret = rb_fix2uint(x);
    } else {
        ret = rb_fix2ulong(x);
    }
    return @as(c_uint, @bitCast(@as(c_uint, @truncate(ret))));
}
pub fn rb_int2num_inline(arg_v: c_int) callconv(.c) VALUE {
    var v = arg_v;
    _ = &v;
    if ((@as(c_long, @bitCast(@as(c_long, v))) < (@divTrunc(@as(c_long, 9223372036854775807), @as(c_long, @bitCast(@as(c_long, @as(c_int, 2))))) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1)))))) and (@as(c_long, @bitCast(@as(c_long, v))) >= @divTrunc(-@as(c_long, 9223372036854775807) - @as(c_long, 1), @as(c_long, @bitCast(@as(c_long, @as(c_int, 2))))))) return RB_INT2FIX(@as(c_long, @bitCast(@as(c_long, v)))) else return rb_int2big(@as(isize, @bitCast(@as(c_long, v))));
    return @import("std").mem.zeroes(VALUE);
}
pub fn rb_uint2num_inline(arg_v: c_uint) callconv(.c) VALUE {
    var v = arg_v;
    _ = &v;
    if (@as(c_long, @bitCast(@as(c_ulong, v))) < (@divTrunc(@as(c_long, 9223372036854775807), @as(c_long, @bitCast(@as(c_long, @as(c_int, 2))))) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1)))))) return RB_INT2FIX(@as(c_long, @bitCast(@as(c_ulong, v)))) else return rb_uint2big(@as(usize, @bitCast(@as(c_ulong, v))));
    return @import("std").mem.zeroes(VALUE);
}
pub const RVALUE_EMBED_LEN_MAX: c_int = 3;
pub const enum_ruby_rvalue_flags = c_uint;
pub const struct_RBasic = extern struct {
    flags: VALUE = @import("std").mem.zeroes(VALUE),
    klass: VALUE = @import("std").mem.zeroes(VALUE),
};
pub extern fn rb_obj_hide(obj: VALUE) VALUE;
pub extern fn rb_obj_reveal(obj: VALUE, klass: VALUE) VALUE;
pub fn RBASIC_CLASS(arg_obj: VALUE) callconv(.c) VALUE {
    var obj = arg_obj;
    _ = &obj;
    _ = @as(c_int, 0);
    return @as([*c]struct_RBasic, @ptrFromInt(obj)).*.klass;
}
pub const RB_WARN_CATEGORY_NONE: c_int = 0;
pub const RB_WARN_CATEGORY_DEPRECATED: c_int = 1;
pub const RB_WARN_CATEGORY_EXPERIMENTAL: c_int = 2;
pub const RB_WARN_CATEGORY_PERFORMANCE: c_int = 3;
pub const RB_WARN_CATEGORY_STRICT_UNUSED_BLOCK: c_int = 4;
pub const RB_WARN_CATEGORY_DEFAULT_BITS: c_int = 6;
pub const RB_WARN_CATEGORY_ALL_BITS: c_int = 30;
pub const rb_warning_category_t = c_uint;
pub const RB_IO_WAIT_READABLE: c_int = 0;
pub const RB_IO_WAIT_WRITABLE: c_int = 1;
pub const enum_rb_io_wait_readwrite = c_uint;
pub extern fn rb_errinfo() VALUE;
pub extern fn rb_set_errinfo(err: VALUE) void;
pub extern fn rb_raise(exc: VALUE, fmt: [*c]const u8, ...) noreturn;
pub extern fn rb_fatal(fmt: [*c]const u8, ...) noreturn;
pub extern fn rb_bug(fmt: [*c]const u8, ...) noreturn;
pub extern fn rb_bug_errno(msg: [*c]const u8, err: c_int) noreturn;
pub extern fn rb_sys_fail(msg: [*c]const u8) noreturn;
pub extern fn rb_sys_fail_str(msg: VALUE) noreturn;
pub extern fn rb_mod_sys_fail(mod: VALUE, msg: [*c]const u8) noreturn;
pub extern fn rb_mod_sys_fail_str(mod: VALUE, msg: VALUE) noreturn;
pub extern fn rb_readwrite_sys_fail(waiting: enum_rb_io_wait_readwrite, msg: [*c]const u8) noreturn;
pub extern fn rb_iter_break() noreturn;
pub extern fn rb_iter_break_value(val: VALUE) noreturn;
pub extern fn rb_exit(status: c_int) noreturn;
pub extern fn rb_notimplement() noreturn;
pub extern fn rb_syserr_new(err: c_int, msg: [*c]const u8) VALUE;
pub extern fn rb_syserr_new_str(n: c_int, arg: VALUE) VALUE;
pub extern fn rb_syserr_fail(err: c_int, msg: [*c]const u8) noreturn;
pub extern fn rb_syserr_fail_str(err: c_int, msg: VALUE) noreturn;
pub extern fn rb_mod_syserr_fail(mod: VALUE, err: c_int, msg: [*c]const u8) noreturn;
pub extern fn rb_mod_syserr_fail_str(mod: VALUE, err: c_int, msg: VALUE) noreturn;
pub extern fn rb_readwrite_syserr_fail(waiting: enum_rb_io_wait_readwrite, err: c_int, msg: [*c]const u8) noreturn;
pub extern fn rb_unexpected_type(self: VALUE, t: c_int) noreturn;
pub extern fn rb_ruby_verbose_ptr() [*c]VALUE;
pub extern fn rb_ruby_debug_ptr() [*c]VALUE;
pub extern fn rb_warning(fmt: [*c]const u8, ...) void;
pub extern fn rb_category_warning(cat: rb_warning_category_t, fmt: [*c]const u8, ...) void;
pub extern fn rb_compile_warning(file: [*c]const u8, line: c_int, fmt: [*c]const u8, ...) void;
pub extern fn rb_sys_warning(fmt: [*c]const u8, ...) void;
pub extern fn rb_warn(fmt: [*c]const u8, ...) void;
pub extern fn rb_category_warn(cat: rb_warning_category_t, fmt: [*c]const u8, ...) void;
pub extern fn rb_compile_warn(file: [*c]const u8, line: c_int, fmt: [*c]const u8, ...) void;
pub extern fn rb_category_compile_warn(cat: rb_warning_category_t, file: [*c]const u8, line: c_int, fmt: [*c]const u8, ...) void;
pub const RUBY_T_NONE: c_int = 0;
pub const RUBY_T_OBJECT: c_int = 1;
pub const RUBY_T_CLASS: c_int = 2;
pub const RUBY_T_MODULE: c_int = 3;
pub const RUBY_T_FLOAT: c_int = 4;
pub const RUBY_T_STRING: c_int = 5;
pub const RUBY_T_REGEXP: c_int = 6;
pub const RUBY_T_ARRAY: c_int = 7;
pub const RUBY_T_HASH: c_int = 8;
pub const RUBY_T_STRUCT: c_int = 9;
pub const RUBY_T_BIGNUM: c_int = 10;
pub const RUBY_T_FILE: c_int = 11;
pub const RUBY_T_DATA: c_int = 12;
pub const RUBY_T_MATCH: c_int = 13;
pub const RUBY_T_COMPLEX: c_int = 14;
pub const RUBY_T_RATIONAL: c_int = 15;
pub const RUBY_T_NIL: c_int = 17;
pub const RUBY_T_TRUE: c_int = 18;
pub const RUBY_T_FALSE: c_int = 19;
pub const RUBY_T_SYMBOL: c_int = 20;
pub const RUBY_T_FIXNUM: c_int = 21;
pub const RUBY_T_UNDEF: c_int = 22;
pub const RUBY_T_IMEMO: c_int = 26;
pub const RUBY_T_NODE: c_int = 27;
pub const RUBY_T_ICLASS: c_int = 28;
pub const RUBY_T_ZOMBIE: c_int = 29;
pub const RUBY_T_MOVED: c_int = 30;
pub const RUBY_T_MASK: c_int = 31;
pub const enum_ruby_value_type = c_uint;
pub extern fn rb_check_type(obj: VALUE, t: c_int) void;
pub fn RB_BUILTIN_TYPE(arg_obj: VALUE) callconv(.c) enum_ruby_value_type {
    var obj = arg_obj;
    _ = &obj;
    _ = @as(c_int, 0);
    var ret: VALUE = @as([*c]struct_RBasic, @ptrFromInt(obj)).*.flags & @as(VALUE, @bitCast(@as(c_long, RUBY_T_MASK)));
    _ = &ret;
    return @as(c_uint, @bitCast(@as(c_uint, @truncate(ret))));
}
pub fn rb_integer_type_p(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    if (RB_FIXNUM_P(obj)) {
        return @as(c_int, 1) != 0;
    } else if (RB_SPECIAL_CONST_P(obj)) {
        return @as(c_int, 0) != 0;
    } else {
        return RB_BUILTIN_TYPE(obj) == @as(c_uint, @bitCast(RUBY_T_BIGNUM));
    }
    return false;
}
pub fn rb_type(arg_obj: VALUE) callconv(.c) enum_ruby_value_type {
    var obj = arg_obj;
    _ = &obj;
    if (!RB_SPECIAL_CONST_P(obj)) {
        return RB_BUILTIN_TYPE(obj);
    } else if (obj == @as(VALUE, @bitCast(@as(c_long, RUBY_Qfalse)))) {
        return @as(c_uint, @bitCast(RUBY_T_FALSE));
    } else if (obj == @as(VALUE, @bitCast(@as(c_long, RUBY_Qnil)))) {
        return @as(c_uint, @bitCast(RUBY_T_NIL));
    } else if (obj == @as(VALUE, @bitCast(@as(c_long, RUBY_Qtrue)))) {
        return @as(c_uint, @bitCast(RUBY_T_TRUE));
    } else if (obj == @as(VALUE, @bitCast(@as(c_long, RUBY_Qundef)))) {
        return @as(c_uint, @bitCast(RUBY_T_UNDEF));
    } else if (RB_FIXNUM_P(obj)) {
        return @as(c_uint, @bitCast(RUBY_T_FIXNUM));
    } else if (RB_STATIC_SYM_P(obj)) {
        return @as(c_uint, @bitCast(RUBY_T_SYMBOL));
    } else {
        __builtin_assume(RB_FLONUM_P(obj));
        return @as(c_uint, @bitCast(RUBY_T_FLOAT));
    }
    return @import("std").mem.zeroes(enum_ruby_value_type);
}
pub fn RB_FLOAT_TYPE_P(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    if (RB_FLONUM_P(obj)) {
        return @as(c_int, 1) != 0;
    } else if (RB_SPECIAL_CONST_P(obj)) {
        return @as(c_int, 0) != 0;
    } else {
        return RB_BUILTIN_TYPE(obj) == @as(c_uint, @bitCast(RUBY_T_FLOAT));
    }
    return false;
}
pub fn RB_DYNAMIC_SYM_P(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    if (RB_SPECIAL_CONST_P(obj)) {
        return @as(c_int, 0) != 0;
    } else {
        return RB_BUILTIN_TYPE(obj) == @as(c_uint, @bitCast(RUBY_T_SYMBOL));
    }
    return false;
}
pub fn RB_SYMBOL_P(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    return (@as(c_int, @intFromBool(RB_STATIC_SYM_P(obj))) != 0) or (@as(c_int, @intFromBool(RB_DYNAMIC_SYM_P(obj))) != 0);
}
pub inline fn rbimpl_RB_TYPE_P_fastpath(arg_obj: VALUE, arg_t: enum_ruby_value_type) bool {
    var obj = arg_obj;
    _ = &obj;
    var t = arg_t;
    _ = &t;
    if (t == @as(c_uint, @bitCast(RUBY_T_TRUE))) {
        return obj == @as(VALUE, @bitCast(@as(c_long, RUBY_Qtrue)));
    } else if (t == @as(c_uint, @bitCast(RUBY_T_FALSE))) {
        return obj == @as(VALUE, @bitCast(@as(c_long, RUBY_Qfalse)));
    } else if (t == @as(c_uint, @bitCast(RUBY_T_NIL))) {
        return obj == @as(VALUE, @bitCast(@as(c_long, RUBY_Qnil)));
    } else if (t == @as(c_uint, @bitCast(RUBY_T_UNDEF))) {
        return obj == @as(VALUE, @bitCast(@as(c_long, RUBY_Qundef)));
    } else if (t == @as(c_uint, @bitCast(RUBY_T_FIXNUM))) {
        return RB_FIXNUM_P(obj);
    } else if (t == @as(c_uint, @bitCast(RUBY_T_SYMBOL))) {
        return RB_SYMBOL_P(obj);
    } else if (t == @as(c_uint, @bitCast(RUBY_T_FLOAT))) {
        return RB_FLOAT_TYPE_P(obj);
    } else if (RB_SPECIAL_CONST_P(obj)) {
        return @as(c_int, 0) != 0;
    } else if (t == RB_BUILTIN_TYPE(obj)) {
        return @as(c_int, 1) != 0;
    } else {
        return @as(c_int, 0) != 0;
    }
    return false;
}
pub fn RB_TYPE_P(arg_obj: VALUE, arg_t: enum_ruby_value_type) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    var t = arg_t;
    _ = &t;
    if (__builtin_constant_p(t) != 0) {
        return rbimpl_RB_TYPE_P_fastpath(obj, t);
    } else {
        return t == rb_type(obj);
    }
    return false;
}
pub fn rbimpl_rtypeddata_p(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    return RB_FL_TEST_RAW(obj, @as(VALUE, @bitCast(@as(c_long, RUBY_TYPED_FL_IS_TYPED_DATA)))) != 0;
}
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/value_type.h:436:9: warning: TODO implement translation of stmt class GotoStmtClass

// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/value_type.h:97:27: warning: unable to translate function, demoted to extern
pub extern fn Check_Type(arg_v: VALUE, arg_t: enum_ruby_value_type) callconv(.c) void;
pub const RUBY_FL_USHIFT: c_int = 12;
pub const enum_ruby_fl_ushift = c_uint;
pub const RUBY_FL_WB_PROTECTED: c_int = 32;
pub const RUBY_FL_PROMOTED: c_int = 32;
pub const RUBY_FL_USERPRIV0: c_int = 64;
pub const RUBY_FL_FINALIZE: c_int = 128;
pub const RUBY_FL_TAINT: c_int = 0;
pub const RUBY_FL_EXIVAR: c_int = 0;
pub const RUBY_FL_SHAREABLE: c_int = 256;
pub const RUBY_FL_UNTRUSTED: c_int = 0;
pub const RUBY_FL_UNUSED9: c_int = 512;
pub const RUBY_FL_UNUSED10: c_int = 1024;
pub const RUBY_FL_FREEZE: c_int = 2048;
pub const RUBY_FL_USER0: c_int = 4096;
pub const RUBY_FL_USER1: c_int = 8192;
pub const RUBY_FL_USER2: c_int = 16384;
pub const RUBY_FL_USER3: c_int = 32768;
pub const RUBY_FL_USER4: c_int = 65536;
pub const RUBY_FL_USER5: c_int = 131072;
pub const RUBY_FL_USER6: c_int = 262144;
pub const RUBY_FL_USER7: c_int = 524288;
pub const RUBY_FL_USER8: c_int = 1048576;
pub const RUBY_FL_USER9: c_int = 2097152;
pub const RUBY_FL_USER10: c_int = 4194304;
pub const RUBY_FL_USER11: c_int = 8388608;
pub const RUBY_FL_USER12: c_int = 16777216;
pub const RUBY_FL_USER13: c_int = 33554432;
pub const RUBY_FL_USER14: c_int = 67108864;
pub const RUBY_FL_USER15: c_int = 134217728;
pub const RUBY_FL_USER16: c_int = 268435456;
pub const RUBY_FL_USER17: c_int = 536870912;
pub const RUBY_FL_USER18: c_int = 1073741824;
pub const RUBY_FL_USER19: c_int = -2147483648;
pub const RUBY_ELTS_SHARED: c_int = 4096;
pub const RUBY_FL_SINGLETON: c_int = 8192;
pub const enum_ruby_fl_type = c_int;
pub const RUBY_FL_DUPPED: c_int = 31;
const enum_unnamed_17 = c_uint;
pub extern fn rb_freeze_singleton_class(klass: VALUE) void;
pub inline fn RB_FL_ABLE(arg_obj: VALUE) bool {
    var obj = arg_obj;
    _ = &obj;
    if (RB_SPECIAL_CONST_P(obj)) {
        return @as(c_int, 0) != 0;
    } else {
        _ = @as(c_int, 0);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn RB_FL_TEST_RAW(arg_obj: VALUE, arg_flags: VALUE) callconv(.c) VALUE {
    var obj = arg_obj;
    _ = &obj;
    var flags = arg_flags;
    _ = &flags;
    _ = @as(c_int, 0);
    return @as([*c]struct_RBasic, @ptrFromInt(obj)).*.flags & flags;
}
pub fn RB_FL_TEST(arg_obj: VALUE, arg_flags: VALUE) callconv(.c) VALUE {
    var obj = arg_obj;
    _ = &obj;
    var flags = arg_flags;
    _ = &flags;
    if (RB_FL_ABLE(obj)) {
        return RB_FL_TEST_RAW(obj, flags);
    } else {
        return 0;
    }
    return @import("std").mem.zeroes(VALUE);
}
pub fn RB_FL_ANY_RAW(arg_obj: VALUE, arg_flags: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    var flags = arg_flags;
    _ = &flags;
    return RB_FL_TEST_RAW(obj, flags) != 0;
}
pub fn RB_FL_ANY(arg_obj: VALUE, arg_flags: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    var flags = arg_flags;
    _ = &flags;
    return RB_FL_TEST(obj, flags) != 0;
}
pub fn RB_FL_ALL_RAW(arg_obj: VALUE, arg_flags: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    var flags = arg_flags;
    _ = &flags;
    return RB_FL_TEST_RAW(obj, flags) == flags;
}
pub fn RB_FL_ALL(arg_obj: VALUE, arg_flags: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    var flags = arg_flags;
    _ = &flags;
    return RB_FL_TEST(obj, flags) == flags;
}
pub fn rbimpl_fl_set_raw_raw(arg_obj: [*c]struct_RBasic, arg_flags: VALUE) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
    var flags = arg_flags;
    _ = &flags;
    obj.*.flags |= flags;
}
pub fn RB_FL_SET_RAW(arg_obj: VALUE, arg_flags: VALUE) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
    var flags = arg_flags;
    _ = &flags;
    _ = @as(c_int, 0);
    rbimpl_fl_set_raw_raw(@as([*c]struct_RBasic, @ptrFromInt(obj)), flags);
}
pub fn RB_FL_SET(arg_obj: VALUE, arg_flags: VALUE) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
    var flags = arg_flags;
    _ = &flags;
    if (RB_FL_ABLE(obj)) {
        RB_FL_SET_RAW(obj, flags);
    }
}
pub fn rbimpl_fl_unset_raw_raw(arg_obj: [*c]struct_RBasic, arg_flags: VALUE) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
    var flags = arg_flags;
    _ = &flags;
    obj.*.flags &= ~flags;
}
pub fn RB_FL_UNSET_RAW(arg_obj: VALUE, arg_flags: VALUE) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
    var flags = arg_flags;
    _ = &flags;
    _ = @as(c_int, 0);
    rbimpl_fl_unset_raw_raw(@as([*c]struct_RBasic, @ptrFromInt(obj)), flags);
}
pub fn RB_FL_UNSET(arg_obj: VALUE, arg_flags: VALUE) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
    var flags = arg_flags;
    _ = &flags;
    if (RB_FL_ABLE(obj)) {
        RB_FL_UNSET_RAW(obj, flags);
    }
}
pub fn rbimpl_fl_reverse_raw_raw(arg_obj: [*c]struct_RBasic, arg_flags: VALUE) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
    var flags = arg_flags;
    _ = &flags;
    obj.*.flags ^= flags;
}
pub fn RB_FL_REVERSE_RAW(arg_obj: VALUE, arg_flags: VALUE) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
    var flags = arg_flags;
    _ = &flags;
    _ = @as(c_int, 0);
    rbimpl_fl_reverse_raw_raw(@as([*c]struct_RBasic, @ptrFromInt(obj)), flags);
}
pub fn RB_FL_REVERSE(arg_obj: VALUE, arg_flags: VALUE) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
    var flags = arg_flags;
    _ = &flags;
    if (RB_FL_ABLE(obj)) {
        RB_FL_REVERSE_RAW(obj, flags);
    }
}
pub fn RB_OBJ_TAINTABLE(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    _ = &obj;
    return @as(c_int, 0) != 0;
}
pub fn RB_OBJ_TAINTED_RAW(arg_obj: VALUE) callconv(.c) VALUE {
    var obj = arg_obj;
    _ = &obj;
    _ = &obj;
    return 0;
}
pub fn RB_OBJ_TAINTED(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    _ = &obj;
    return @as(c_int, 0) != 0;
}
pub fn RB_OBJ_TAINT_RAW(arg_obj: VALUE) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
    _ = &obj;
    return;
}
pub fn RB_OBJ_TAINT(arg_obj: VALUE) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
    _ = &obj;
    return;
}
pub fn RB_OBJ_INFECT_RAW(arg_dst: VALUE, arg_src: VALUE) callconv(.c) void {
    var dst = arg_dst;
    _ = &dst;
    var src = arg_src;
    _ = &src;
    _ = &dst;
    _ = &src;
    return;
}
pub fn RB_OBJ_INFECT(arg_dst: VALUE, arg_src: VALUE) callconv(.c) void {
    var dst = arg_dst;
    _ = &dst;
    var src = arg_src;
    _ = &src;
    _ = &dst;
    _ = &src;
    return;
}
pub fn RB_OBJ_FROZEN_RAW(arg_obj: VALUE) callconv(.c) VALUE {
    var obj = arg_obj;
    _ = &obj;
    return RB_FL_TEST_RAW(obj, @as(VALUE, @bitCast(@as(c_long, RUBY_FL_FREEZE))));
}
pub fn RB_OBJ_FROZEN(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    if (!RB_FL_ABLE(obj)) {
        return @as(c_int, 1) != 0;
    } else {
        return RB_OBJ_FROZEN_RAW(obj) != 0;
    }
    return false;
}
pub extern fn rb_obj_freeze_inline(obj: VALUE) void;
pub fn RB_OBJ_FREEZE_RAW(arg_obj: VALUE) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
    rb_obj_freeze_inline(obj);
}
pub const RSTRING_NOEMBED: c_int = 8192;
pub const RSTRING_FSTR: c_int = 536870912;
pub const enum_ruby_rstring_flags = c_uint;
const union_unnamed_20 = extern union {
    capa: c_long,
    shared: VALUE,
};
const struct_unnamed_19 = extern struct {
    ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    aux: union_unnamed_20 = @import("std").mem.zeroes(union_unnamed_20),
};
const struct_unnamed_21 = extern struct {
    ary: [1]u8 = @import("std").mem.zeroes([1]u8),
};
const union_unnamed_18 = extern union {
    heap: struct_unnamed_19,
    embed: struct_unnamed_21,
};
pub const struct_RString = extern struct {
    basic: struct_RBasic = @import("std").mem.zeroes(struct_RBasic),
    len: c_long = @import("std").mem.zeroes(c_long),
    as: union_unnamed_18 = @import("std").mem.zeroes(union_unnamed_18),
};
pub extern fn rb_str_to_str(obj: VALUE) VALUE;
pub extern fn rb_string_value(ptr: [*c]volatile VALUE) VALUE;
pub extern fn rb_string_value_ptr(ptr: [*c]volatile VALUE) [*c]u8;
pub extern fn rb_string_value_cstr(ptr: [*c]volatile VALUE) [*c]u8;
pub extern fn rb_str_export(obj: VALUE) VALUE;
pub extern fn rb_str_export_locale(obj: VALUE) VALUE;
pub extern fn rb_check_safe_str(VALUE) void;
pub extern fn rb_debug_rstring_null_ptr(func: [*c]const u8) void;
pub fn RSTRING_LEN(arg_str: VALUE) callconv(.c) c_long {
    var str = arg_str;
    _ = &str;
    return @as([*c]struct_RString, @ptrFromInt(str)).*.len;
}
pub fn RSTRING_PTR(arg_str: VALUE) callconv(.c) [*c]u8 {
    var str = arg_str;
    _ = &str;
    var ptr: [*c]u8 = if (RB_FL_TEST_RAW(str, @as(VALUE, @bitCast(@as(c_long, RSTRING_NOEMBED)))) != 0) @as([*c]struct_RString, @ptrFromInt(str)).*.as.heap.ptr else @as([*c]u8, @ptrCast(@alignCast(&@as([*c]struct_RString, @ptrFromInt(str)).*.as.embed.ary[@as(usize, @intCast(0))])));
    _ = &ptr;
    if (false and (__builtin_expect(@as(c_long, @intFromBool(!!!(ptr != null))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0)) {
        rb_debug_rstring_null_ptr("RSTRING_PTR");
    }
    return ptr;
}
pub fn RSTRING_END(arg_str: VALUE) callconv(.c) [*c]u8 {
    var str = arg_str;
    _ = &str;
    var ptr: [*c]u8 = if (RB_FL_TEST_RAW(str, @as(VALUE, @bitCast(@as(c_long, RSTRING_NOEMBED)))) != 0) @as([*c]struct_RString, @ptrFromInt(str)).*.as.heap.ptr else @as([*c]u8, @ptrCast(@alignCast(&@as([*c]struct_RString, @ptrFromInt(str)).*.as.embed.ary[@as(usize, @intCast(0))])));
    _ = &ptr;
    var len: c_long = RSTRING_LEN(str);
    _ = &len;
    if (false and (__builtin_expect(@as(c_long, @intFromBool(!!!(ptr != null))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0)) {
        rb_debug_rstring_null_ptr("RSTRING_END");
    }
    return &(blk: {
        const tmp = len;
        if (tmp >= 0) break :blk ptr + @as(usize, @intCast(tmp)) else break :blk ptr - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*;
}
pub fn RSTRING_LENINT(arg_str: VALUE) callconv(.c) c_int {
    var str = arg_str;
    _ = &str;
    return rb_long2int_inline(RSTRING_LEN(str));
}
pub fn RB_CHR2FIX(arg_c: u8) callconv(.c) VALUE {
    var c = arg_c;
    _ = &c;
    return RB_INT2FIX(@as(c_long, @bitCast(@as(c_ulong, c))));
}
pub fn rb_num2char_inline(arg_x: VALUE) callconv(.c) u8 {
    var x = arg_x;
    _ = &x;
    if (((if (__builtin_constant_p(RUBY_T_STRING) != 0) @as(c_int, @intFromBool(rbimpl_RB_TYPE_P_fastpath(x, @as(c_uint, @bitCast(RUBY_T_STRING))))) else @as(c_int, @intFromBool(RB_TYPE_P(x, @as(c_uint, @bitCast(RUBY_T_STRING)))))) != 0) and (RSTRING_LEN(x) >= @as(c_long, @bitCast(@as(c_long, @as(c_int, 1)))))) return RSTRING_PTR(x)[@as(c_uint, @intCast(@as(c_int, 0)))] else return @as(u8, @bitCast(@as(i8, @truncate(rb_num2int_inline(x)))));
    return 0;
}
pub extern fn rb_num2dbl(num: VALUE) f64;
pub extern fn rb_float_value(num: VALUE) f64;
pub extern fn rb_float_new(d: f64) VALUE;
pub extern fn rb_float_new_in_heap(d: f64) VALUE;
pub extern fn rb_ll2inum(num: c_longlong) VALUE;
pub extern fn rb_ull2inum(num: c_ulonglong) VALUE;
pub extern fn rb_num2ll(num: VALUE) c_longlong;
pub extern fn rb_num2ull(num: VALUE) c_ulonglong;
pub fn rb_ll2num_inline(arg_n: c_longlong) callconv(.c) VALUE {
    var n = arg_n;
    _ = &n;
    if ((n < @as(c_longlong, @bitCast(@as(c_longlong, @divTrunc(@as(c_long, 9223372036854775807), @as(c_long, @bitCast(@as(c_long, @as(c_int, 2))))) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1)))))))) and (n >= @as(c_longlong, @bitCast(@as(c_longlong, @divTrunc(-@as(c_long, 9223372036854775807) - @as(c_long, 1), @as(c_long, @bitCast(@as(c_long, @as(c_int, 2)))))))))) return RB_INT2FIX(@as(c_long, @bitCast(@as(c_long, @truncate(n)))));
    return rb_ll2inum(n);
}
pub fn rb_ull2num_inline(arg_n: c_ulonglong) callconv(.c) VALUE {
    var n = arg_n;
    _ = &n;
    if (n < @as(c_ulonglong, @bitCast(@as(c_longlong, @divTrunc(@as(c_long, 9223372036854775807), @as(c_long, @bitCast(@as(c_long, @as(c_int, 2))))) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1)))))))) return RB_INT2FIX(@as(c_long, @bitCast(@as(c_ulong, @truncate(n)))));
    return rb_ull2inum(n);
}
pub fn rb_num2ll_inline(arg_x: VALUE) callconv(.c) c_longlong {
    var x = arg_x;
    _ = &x;
    if (RB_FIXNUM_P(x)) return @as(c_longlong, @bitCast(@as(c_longlong, rb_fix2long(x)))) else return rb_num2ll(x);
    return 0;
}
pub fn rb_num2ull_inline(arg_x: VALUE) callconv(.c) c_ulonglong {
    var x = arg_x;
    _ = &x;
    if (RB_FIXNUM_P(x)) return @as(c_ulonglong, @bitCast(@as(c_longlong, rb_fix2long(x)))) else return rb_num2ull(x);
    return 0;
}
pub extern fn rb_num2short(num: VALUE) c_short;
pub extern fn rb_num2ushort(num: VALUE) c_ushort;
pub extern fn rb_fix2short(num: VALUE) c_short;
pub extern fn rb_fix2ushort(num: VALUE) c_ushort;
pub fn rb_num2short_inline(arg_x: VALUE) callconv(.c) c_short {
    var x = arg_x;
    _ = &x;
    if (RB_FIXNUM_P(x)) return rb_fix2short(x) else return rb_num2short(x);
    return 0;
}
pub const st_data_t = c_ulong;
pub const st_index_t = st_data_t;
pub const struct_st_hash_type = extern struct {
    compare: ?*const fn (st_data_t, st_data_t) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (st_data_t, st_data_t) callconv(.c) c_int),
    hash: ?*const fn (st_data_t) callconv(.c) st_index_t = @import("std").mem.zeroes(?*const fn (st_data_t) callconv(.c) st_index_t),
};
pub const struct_st_table_entry = opaque {};
pub const st_table_entry = struct_st_table_entry;
pub const struct_st_table = extern struct {
    entry_power: u8 = @import("std").mem.zeroes(u8),
    bin_power: u8 = @import("std").mem.zeroes(u8),
    size_ind: u8 = @import("std").mem.zeroes(u8),
    rebuilds_num: c_uint = @import("std").mem.zeroes(c_uint),
    type: [*c]const struct_st_hash_type = @import("std").mem.zeroes([*c]const struct_st_hash_type),
    num_entries: st_index_t = @import("std").mem.zeroes(st_index_t),
    bins: [*c]st_index_t = @import("std").mem.zeroes([*c]st_index_t),
    entries_start: st_index_t = @import("std").mem.zeroes(st_index_t),
    entries_bound: st_index_t = @import("std").mem.zeroes(st_index_t),
    entries: ?*st_table_entry = @import("std").mem.zeroes(?*st_table_entry),
};
pub const st_table = struct_st_table;
pub const st_compare_func = fn (st_data_t, st_data_t) callconv(.c) c_int;
pub const st_hash_func = fn (st_data_t) callconv(.c) st_index_t;
pub const st_check_for_sizeof_st_index_t = [1]u8;
pub const ST_CONTINUE: c_int = 0;
pub const ST_STOP: c_int = 1;
pub const ST_DELETE: c_int = 2;
pub const ST_CHECK: c_int = 3;
pub const ST_REPLACE: c_int = 4;
pub const enum_st_retval = c_uint;
pub extern fn rb_st_table_size(tbl: [*c]const struct_st_table) usize;
pub extern fn rb_st_init_table([*c]const struct_st_hash_type) [*c]st_table;
pub extern fn rb_st_init_table_with_size([*c]const struct_st_hash_type, st_index_t) [*c]st_table;
pub extern fn rb_st_init_numtable() [*c]st_table;
pub extern fn rb_st_init_numtable_with_size(st_index_t) [*c]st_table;
pub extern fn rb_st_init_strtable() [*c]st_table;
pub extern fn rb_st_init_strtable_with_size(st_index_t) [*c]st_table;
pub extern fn rb_st_init_strcasetable() [*c]st_table;
pub extern fn rb_st_init_strcasetable_with_size(st_index_t) [*c]st_table;
pub extern fn rb_st_delete([*c]st_table, [*c]st_data_t, [*c]st_data_t) c_int;
pub extern fn rb_st_delete_safe([*c]st_table, [*c]st_data_t, [*c]st_data_t, st_data_t) c_int;
pub extern fn rb_st_shift([*c]st_table, [*c]st_data_t, [*c]st_data_t) c_int;
pub extern fn rb_st_insert([*c]st_table, st_data_t, st_data_t) c_int;
pub extern fn rb_st_insert2([*c]st_table, st_data_t, st_data_t, ?*const fn (st_data_t) callconv(.c) st_data_t) c_int;
pub extern fn rb_st_lookup([*c]st_table, st_data_t, [*c]st_data_t) c_int;
pub extern fn rb_st_get_key([*c]st_table, st_data_t, [*c]st_data_t) c_int;
pub const st_update_callback_func = fn ([*c]st_data_t, [*c]st_data_t, st_data_t, c_int) callconv(.c) c_int;
pub extern fn rb_st_update(table: [*c]st_table, key: st_data_t, func: ?*const st_update_callback_func, arg: st_data_t) c_int;
pub const st_foreach_callback_func = fn (st_data_t, st_data_t, st_data_t) callconv(.c) c_int;
pub const st_foreach_check_callback_func = fn (st_data_t, st_data_t, st_data_t, c_int) callconv(.c) c_int;
pub extern fn rb_st_foreach_with_replace(tab: [*c]st_table, func: ?*const st_foreach_check_callback_func, replace: ?*const st_update_callback_func, arg: st_data_t) c_int;
pub extern fn rb_st_foreach([*c]st_table, ?*const st_foreach_callback_func, st_data_t) c_int;
pub extern fn rb_st_foreach_check([*c]st_table, ?*const st_foreach_check_callback_func, st_data_t, st_data_t) c_int;
pub extern fn rb_st_keys(table: [*c]st_table, keys: [*c]st_data_t, size: st_index_t) st_index_t;
pub extern fn rb_st_keys_check(table: [*c]st_table, keys: [*c]st_data_t, size: st_index_t, never: st_data_t) st_index_t;
pub extern fn rb_st_values(table: [*c]st_table, values: [*c]st_data_t, size: st_index_t) st_index_t;
pub extern fn rb_st_values_check(table: [*c]st_table, values: [*c]st_data_t, size: st_index_t, never: st_data_t) st_index_t;
pub extern fn rb_st_add_direct([*c]st_table, st_data_t, st_data_t) void;
pub extern fn rb_st_free_table([*c]st_table) void;
pub extern fn rb_st_cleanup_safe([*c]st_table, st_data_t) void;
pub extern fn rb_st_clear([*c]st_table) void;
pub extern fn rb_st_copy([*c]st_table) [*c]st_table;
pub extern fn rb_st_numcmp(st_data_t, st_data_t) c_int;
pub extern fn rb_st_numhash(st_data_t) st_index_t;
pub extern fn rb_st_locale_insensitive_strcasecmp(s1: [*c]const u8, s2: [*c]const u8) c_int;
pub extern fn rb_st_locale_insensitive_strncasecmp(s1: [*c]const u8, s2: [*c]const u8, n: usize) c_int;
pub extern fn rb_st_memsize([*c]const st_table) usize;
pub extern fn rb_st_hash(ptr: ?*const anyopaque, len: usize, h: st_index_t) st_index_t;
pub extern fn rb_st_hash_uint32(h: st_index_t, i: u32) st_index_t;
pub extern fn rb_st_hash_uint(h: st_index_t, i: st_index_t) st_index_t;
pub extern fn rb_st_hash_end(h: st_index_t) st_index_t;
pub extern fn rb_st_hash_start(h: st_index_t) st_index_t;
pub extern fn rb_hash_bulk_insert_into_st_table(c_long, [*c]const VALUE, VALUE) void;
pub fn RB_ST2FIX(arg_i: st_data_t) callconv(.c) VALUE {
    var i = arg_i;
    _ = &i;
    var x: c_long = @as(c_long, @bitCast(i));
    _ = &x;
    if (x >= @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) {
        x &= @divTrunc(@as(c_long, 9223372036854775807), @as(c_long, @bitCast(@as(c_long, @as(c_int, 2)))));
    } else {
        x |= @divTrunc(-@as(c_long, 9223372036854775807) - @as(c_long, 1), @as(c_long, @bitCast(@as(c_long, @as(c_int, 2)))));
    }
    _ = @as(c_int, 0);
    var y: c_ulong = @as(c_ulong, @bitCast(x));
    _ = &y;
    return RB_INT2FIX(@as(c_long, @bitCast(y)));
}
pub extern fn rb_memerror() noreturn;
pub extern fn rb_during_gc() c_int;
pub extern fn rb_gc_mark_locations(start: [*c]const VALUE, end: [*c]const VALUE) void;
pub extern fn rb_mark_tbl(tbl: [*c]struct_st_table) void;
pub extern fn rb_mark_tbl_no_pin(tbl: [*c]struct_st_table) void;
pub extern fn rb_mark_set(tbl: [*c]struct_st_table) void;
pub extern fn rb_mark_hash(tbl: [*c]struct_st_table) void;
pub extern fn rb_gc_update_tbl_refs(ptr: [*c]st_table) void;
pub extern fn rb_gc_mark_maybe(obj: VALUE) void;
pub extern fn rb_gc_mark(obj: VALUE) void;
pub extern fn rb_gc_mark_movable(obj: VALUE) void;
pub extern fn rb_gc_location(obj: VALUE) VALUE;
pub extern fn rb_gc() void;
pub extern fn rb_gc_copy_finalizer(dst: VALUE, src: VALUE) void;
pub extern fn rb_gc_enable() VALUE;
pub extern fn rb_gc_disable() VALUE;
pub extern fn rb_gc_start() VALUE;
pub extern fn rb_define_finalizer(obj: VALUE, block: VALUE) VALUE;
pub extern fn rb_undefine_finalizer(obj: VALUE) VALUE;
pub extern fn rb_gc_count() usize;
pub extern fn rb_gc_stat(key_or_buf: VALUE) usize;
pub extern fn rb_gc_latest_gc_info(key_or_buf: VALUE) VALUE;
pub extern fn rb_gc_adjust_memory_usage(diff: isize) void;
pub extern fn rb_gc_register_address(valptr: [*c]VALUE) void;
pub extern fn rb_global_variable([*c]VALUE) void;
pub extern fn rb_gc_unregister_address(valptr: [*c]VALUE) void;
pub extern fn rb_gc_register_mark_object(object: VALUE) void;
pub extern fn rb_gc_writebarrier(old: VALUE, young: VALUE) void;
pub extern fn rb_gc_writebarrier_unprotect(obj: VALUE) void;
pub fn RB_OBJ_PROMOTED_RAW(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    _ = @as(c_int, 0);
    return RB_FL_ANY_RAW(obj, @as(VALUE, @bitCast(@as(c_long, RUBY_FL_PROMOTED))));
}
pub fn RB_OBJ_PROMOTED(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    if (!RB_FL_ABLE(obj)) {
        return @as(c_int, 0) != 0;
    } else {
        return RB_OBJ_PROMOTED_RAW(obj);
    }
    return false;
}
pub fn rb_obj_wb_unprotect(arg_x: VALUE, arg_filename: [*c]const u8, arg_line: c_int) callconv(.c) VALUE {
    var x = arg_x;
    _ = &x;
    var filename = arg_filename;
    _ = &filename;
    var line = arg_line;
    _ = &line;
    rb_gc_writebarrier_unprotect(x);
    return x;
}
pub fn rb_obj_written(arg_a: VALUE, arg_oldv: VALUE, arg_b: VALUE, arg_filename: [*c]const u8, arg_line: c_int) callconv(.c) VALUE {
    var a = arg_a;
    _ = &a;
    var oldv = arg_oldv;
    _ = &oldv;
    var b = arg_b;
    _ = &b;
    var filename = arg_filename;
    _ = &filename;
    var line = arg_line;
    _ = &line;
    if (!RB_SPECIAL_CONST_P(b)) {
        rb_gc_writebarrier(a, b);
    }
    return a;
}
pub fn rb_obj_write(arg_a: VALUE, arg_slot: [*c]VALUE, arg_b: VALUE, arg_filename: [*c]const u8, arg_line: c_int) callconv(.c) VALUE {
    var a = arg_a;
    _ = &a;
    var slot = arg_slot;
    _ = &slot;
    var b = arg_b;
    _ = &b;
    var filename = arg_filename;
    _ = &filename;
    var line = arg_line;
    _ = &line;
    slot.* = b;
    _ = rb_obj_written(a, @as(VALUE, @bitCast(@as(c_long, RUBY_Qundef))), b, filename, line);
    return a;
}
pub fn rb_gc_force_recycle(arg_obj: VALUE) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
}
pub const RARRAY_EMBED_FLAG: c_int = 8192;
pub const RARRAY_EMBED_LEN_MASK: c_int = 4161536;
pub const enum_ruby_rarray_flags = c_uint;
pub const RARRAY_EMBED_LEN_SHIFT: c_int = 15;
pub const enum_ruby_rarray_consts = c_uint;
const union_unnamed_24 = extern union {
    capa: c_long,
    shared_root: VALUE,
};
const struct_unnamed_23 = extern struct {
    len: c_long = @import("std").mem.zeroes(c_long),
    aux: union_unnamed_24 = @import("std").mem.zeroes(union_unnamed_24),
    ptr: [*c]const VALUE = @import("std").mem.zeroes([*c]const VALUE),
};
const union_unnamed_22 = extern union {
    heap: struct_unnamed_23,
    ary: [1]VALUE,
};
pub const struct_RArray = extern struct {
    basic: struct_RBasic = @import("std").mem.zeroes(struct_RBasic),
    as: union_unnamed_22 = @import("std").mem.zeroes(union_unnamed_22),
};
pub extern fn rb_ary_ptr_use_start(ary: VALUE) [*c]VALUE;
pub extern fn rb_ary_ptr_use_end(a: VALUE) void;
pub fn RARRAY_EMBED_LEN(arg_ary: VALUE) callconv(.c) c_long {
    var ary = arg_ary;
    _ = &ary;
    _ = @as(c_int, 0);
    _ = @as(c_int, 0);
    var f: VALUE = @as([*c]struct_RBasic, @ptrFromInt(ary)).*.flags;
    _ = &f;
    f &= @as(VALUE, @bitCast(@as(c_long, RARRAY_EMBED_LEN_MASK)));
    f >>= @intCast(RARRAY_EMBED_LEN_SHIFT);
    return @as(c_long, @bitCast(f));
}
pub fn rb_array_len(arg_a: VALUE) callconv(.c) c_long {
    var a = arg_a;
    _ = &a;
    _ = @as(c_int, 0);
    if (RB_FL_ANY_RAW(a, @as(VALUE, @bitCast(@as(c_long, RARRAY_EMBED_FLAG))))) {
        return RARRAY_EMBED_LEN(a);
    } else {
        return @as([*c]struct_RArray, @ptrFromInt(a)).*.as.heap.len;
    }
    return 0;
}
pub fn RARRAY_LENINT(arg_ary: VALUE) callconv(.c) c_int {
    var ary = arg_ary;
    _ = &ary;
    return rb_long2int_inline(rb_array_len(ary));
}
pub fn rb_array_const_ptr(arg_a: VALUE) callconv(.c) [*c]const VALUE {
    var a = arg_a;
    _ = &a;
    _ = @as(c_int, 0);
    if (RB_FL_ANY_RAW(a, @as(VALUE, @bitCast(@as(c_long, RARRAY_EMBED_FLAG))))) {
        return @as([*c]const VALUE, @ptrCast(@alignCast(&@as([*c]struct_RArray, @ptrFromInt(a)).*.as.ary[@as(usize, @intCast(0))])));
    } else {
        return @as([*c]struct_RArray, @ptrFromInt(a)).*.as.heap.ptr;
    }
    return null;
}
pub fn RARRAY_PTR(arg_ary: VALUE) callconv(.c) [*c]VALUE {
    var ary = arg_ary;
    _ = &ary;
    _ = @as(c_int, 0);
    var tmp: VALUE = if (true) rb_obj_wb_unprotect(ary, "/home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rarray.h", @as(c_int, 370)) else ary;
    _ = &tmp;
    return @as([*c]VALUE, @ptrCast(@constCast(@volatileCast(rb_array_const_ptr(tmp)))));
}
pub fn RARRAY_ASET(arg_ary: VALUE, arg_i: c_long, arg_v: VALUE) callconv(.c) void {
    var ary = arg_ary;
    _ = &ary;
    var i = arg_i;
    _ = &i;
    var v = arg_v;
    _ = &v;
    while (true) {
        _ = @as(c_int, 0);
        const rbimpl_ary: VALUE = ary;
        _ = &rbimpl_ary;
        var ptr: [*c]VALUE = rb_ary_ptr_use_start(rbimpl_ary);
        _ = &ptr;
        _ = rb_obj_write(ary, &(blk: {
            const tmp = i;
            if (tmp >= 0) break :blk ptr + @as(usize, @intCast(tmp)) else break :blk ptr - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*, v, "/home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rarray.h", @as(c_int, 389));
        rb_ary_ptr_use_end(rbimpl_ary);
        if (!false) break;
    }
}
pub extern fn rb_big_sign(num: VALUE) c_int;
pub fn RBIGNUM_POSITIVE_P(arg_b: VALUE) callconv(.c) bool {
    var b = arg_b;
    _ = &b;
    _ = @as(c_int, 0);
    return rb_big_sign(b) != 0;
}
pub fn RBIGNUM_NEGATIVE_P(arg_b: VALUE) callconv(.c) bool {
    var b = arg_b;
    _ = &b;
    _ = @as(c_int, 0);
    return !RBIGNUM_POSITIVE_P(b);
}
pub const RMODULE_IS_REFINEMENT: c_int = 8192;
pub const enum_ruby_rmodule_flags = c_uint;
pub const struct_RClass = opaque {};
pub extern fn rb_class_get_superclass(klass: VALUE) VALUE;
pub const RUBY_DATA_FUNC = ?*const fn (?*anyopaque) callconv(.c) void;
pub const struct_RData = extern struct {
    basic: struct_RBasic = @import("std").mem.zeroes(struct_RBasic),
    dmark: RUBY_DATA_FUNC = @import("std").mem.zeroes(RUBY_DATA_FUNC),
    dfree: RUBY_DATA_FUNC = @import("std").mem.zeroes(RUBY_DATA_FUNC),
    data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub extern fn rb_data_object_wrap(klass: VALUE, datap: ?*anyopaque, dmark: RUBY_DATA_FUNC, dfree: RUBY_DATA_FUNC) VALUE;
pub extern fn rb_data_object_zalloc(klass: VALUE, size: usize, dmark: RUBY_DATA_FUNC, dfree: RUBY_DATA_FUNC) VALUE;
pub extern var rb_cObject: VALUE;
pub fn rb_data_object_wrap_warning(arg_klass: VALUE, arg_ptr: ?*anyopaque, arg_mark: RUBY_DATA_FUNC, arg_free_1: RUBY_DATA_FUNC) callconv(.c) VALUE {
    var klass = arg_klass;
    _ = &klass;
    var ptr = arg_ptr;
    _ = &ptr;
    var mark = arg_mark;
    _ = &mark;
    var free_1 = arg_free_1;
    _ = &free_1;
    return rb_data_object_wrap(klass, ptr, mark, free_1);
}
pub fn rb_data_object_get(arg_obj: VALUE) callconv(.c) ?*anyopaque {
    var obj = arg_obj;
    _ = &obj;
    Check_Type(obj, @as(c_uint, @bitCast(RUBY_T_DATA)));
    return @as([*c]struct_RData, @ptrFromInt(obj)).*.data;
}
pub fn rb_data_object_get_warning(arg_obj: VALUE) callconv(.c) ?*anyopaque {
    var obj = arg_obj;
    _ = &obj;
    return rb_data_object_get(obj);
}
pub fn rb_data_object_make(arg_klass: VALUE, arg_mark_func: RUBY_DATA_FUNC, arg_free_func: RUBY_DATA_FUNC, arg_datap: [*c]?*anyopaque, arg_size: usize) callconv(.c) VALUE {
    var klass = arg_klass;
    _ = &klass;
    var mark_func = arg_mark_func;
    _ = &mark_func;
    var free_func = arg_free_func;
    _ = &free_func;
    var datap = arg_datap;
    _ = &datap;
    var size = arg_size;
    _ = &size;
    var result: VALUE = rb_data_object_zalloc(klass, size, @as(?*const fn (?*anyopaque) callconv(.c) void, @ptrCast(@alignCast(mark_func))), @as(?*const fn (?*anyopaque) callconv(.c) void, @ptrCast(@alignCast(free_func))));
    _ = &result;
    datap.* = @as([*c]struct_RData, @ptrFromInt(result)).*.data;
    _ = datap.*;
    return result;
}
pub fn rb_data_object_alloc(arg_klass: VALUE, arg_data: ?*anyopaque, arg_dmark: RUBY_DATA_FUNC, arg_dfree: RUBY_DATA_FUNC) callconv(.c) VALUE {
    var klass = arg_klass;
    _ = &klass;
    var data = arg_data;
    _ = &data;
    var dmark = arg_dmark;
    _ = &dmark;
    var dfree = arg_dfree;
    _ = &dfree;
    return rb_data_object_wrap(klass, data, dmark, dfree);
}
pub const struct_rb_io = opaque {};
pub const struct_RFile = extern struct {
    basic: struct_RBasic = @import("std").mem.zeroes(struct_RBasic),
    fptr: ?*struct_rb_io = @import("std").mem.zeroes(?*struct_rb_io),
};
pub extern fn ruby_sysinit(argc: [*c]c_int, argv: [*c][*c][*c]u8) void;
pub extern fn ruby_init() void;
pub extern fn ruby_options(argc: c_int, argv: [*c][*c]u8) ?*anyopaque;
pub extern fn ruby_executable_node(n: ?*anyopaque, status: [*c]c_int) c_int;
pub extern fn ruby_run_node(n: ?*anyopaque) c_int;
pub extern fn ruby_show_version() void;
pub extern fn ruby_show_copyright() void;
pub extern fn ruby_init_stack(addr: ?*anyopaque) void;
pub extern fn ruby_setup() c_int;
pub extern fn ruby_cleanup(ex: c_int) c_int;
pub extern fn ruby_finalize() void;
pub extern fn ruby_stop(c_int) noreturn;
pub extern fn ruby_stack_check() c_int;
pub extern fn ruby_stack_length(topnotch: [*c][*c]VALUE) usize;
pub extern fn ruby_exec_node(n: ?*anyopaque) c_int;
pub extern fn ruby_script(name: [*c]const u8) void;
pub extern fn ruby_set_script_name(name: VALUE) void;
pub extern fn ruby_prog_init() void;
pub extern fn ruby_set_argv(argc: c_int, argv: [*c][*c]u8) void;
pub extern fn ruby_process_options(argc: c_int, argv: [*c][*c]u8) ?*anyopaque;
pub extern fn ruby_init_loadpath() void;
pub extern fn ruby_incpush(path: [*c]const u8) void;
pub extern fn ruby_sig_finalize() void;
pub extern fn rb_clear_constant_cache() void;
pub extern fn rb_hash_size_num(hash: VALUE) usize;
pub extern fn rb_hash_tbl(hash: VALUE, file: [*c]const u8, line: c_int) [*c]struct_st_table;
pub extern fn rb_hash_set_ifnone(hash: VALUE, ifnone: VALUE) VALUE;
pub const ROBJECT_HEAP: c_int = 65536;
pub const enum_ruby_robject_flags = c_uint;
const struct_unnamed_26 = extern struct {
    fields: [*c]VALUE = @import("std").mem.zeroes([*c]VALUE),
};
const union_unnamed_25 = extern union {
    heap: struct_unnamed_26,
    ary: [1]VALUE,
};
pub const struct_RObject = extern struct {
    basic: struct_RBasic = @import("std").mem.zeroes(struct_RBasic),
    as: union_unnamed_25 = @import("std").mem.zeroes(union_unnamed_25),
};
pub fn ROBJECT_FIELDS(arg_obj: VALUE) callconv(.c) [*c]VALUE {
    var obj = arg_obj;
    _ = &obj;
    _ = @as(c_int, 0);
    const ptr: [*c]struct_RObject = @as([*c]struct_RObject, @ptrFromInt(obj));
    _ = &ptr;
    if (__builtin_expect(@as(c_long, @intFromBool(!!RB_FL_ANY_RAW(obj, @as(VALUE, @bitCast(@as(c_long, ROBJECT_HEAP)))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
        return ptr.*.as.heap.fields;
    } else {
        return @as([*c]VALUE, @ptrCast(@alignCast(&ptr.*.as.ary[@as(usize, @intCast(0))])));
    }
    return null;
}
pub const struct_re_patter_buffer = opaque {};
pub const OnigOptionType = c_uint;
pub const OnigUChar = u8;
pub const OnigCodePoint = c_uint;
pub const OnigCaseFoldType = c_uint;
pub const OnigApplyAllCaseFoldFunc = ?*const fn (OnigCodePoint, [*c]OnigCodePoint, c_int, ?*anyopaque) callconv(.c) c_int;
pub const OnigCtype = c_uint;
pub const struct_OnigEncodingTypeST = extern struct {
    precise_mbc_enc_len: ?*const fn ([*c]const OnigUChar, [*c]const OnigUChar, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn ([*c]const OnigUChar, [*c]const OnigUChar, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    max_enc_len: c_int = @import("std").mem.zeroes(c_int),
    min_enc_len: c_int = @import("std").mem.zeroes(c_int),
    is_mbc_newline: ?*const fn ([*c]const OnigUChar, [*c]const OnigUChar, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn ([*c]const OnigUChar, [*c]const OnigUChar, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int),
    mbc_to_code: ?*const fn ([*c]const OnigUChar, [*c]const OnigUChar, [*c]const struct_OnigEncodingTypeST) callconv(.c) OnigCodePoint = @import("std").mem.zeroes(?*const fn ([*c]const OnigUChar, [*c]const OnigUChar, [*c]const struct_OnigEncodingTypeST) callconv(.c) OnigCodePoint),
    code_to_mbclen: ?*const fn (OnigCodePoint, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (OnigCodePoint, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int),
    code_to_mbc: ?*const fn (OnigCodePoint, [*c]OnigUChar, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (OnigCodePoint, [*c]OnigUChar, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int),
    mbc_case_fold: ?*const fn (OnigCaseFoldType, [*c][*c]const OnigUChar, [*c]const OnigUChar, [*c]OnigUChar, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (OnigCaseFoldType, [*c][*c]const OnigUChar, [*c]const OnigUChar, [*c]OnigUChar, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int),
    apply_all_case_fold: ?*const fn (OnigCaseFoldType, OnigApplyAllCaseFoldFunc, ?*anyopaque, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (OnigCaseFoldType, OnigApplyAllCaseFoldFunc, ?*anyopaque, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int),
    get_case_fold_codes_by_str: ?*const fn (OnigCaseFoldType, [*c]const OnigUChar, [*c]const OnigUChar, [*c]OnigCaseFoldCodeItem, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (OnigCaseFoldType, [*c]const OnigUChar, [*c]const OnigUChar, [*c]OnigCaseFoldCodeItem, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int),
    property_name_to_ctype: ?*const fn ([*c]const struct_OnigEncodingTypeST, [*c]const OnigUChar, [*c]const OnigUChar) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn ([*c]const struct_OnigEncodingTypeST, [*c]const OnigUChar, [*c]const OnigUChar) callconv(.c) c_int),
    is_code_ctype: ?*const fn (OnigCodePoint, OnigCtype, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (OnigCodePoint, OnigCtype, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int),
    get_ctype_code_range: ?*const fn (OnigCtype, [*c]OnigCodePoint, [*c][*c]const OnigCodePoint, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (OnigCtype, [*c]OnigCodePoint, [*c][*c]const OnigCodePoint, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int),
    left_adjust_char_head: ?*const fn ([*c]const OnigUChar, [*c]const OnigUChar, [*c]const OnigUChar, [*c]const struct_OnigEncodingTypeST) callconv(.c) [*c]OnigUChar = @import("std").mem.zeroes(?*const fn ([*c]const OnigUChar, [*c]const OnigUChar, [*c]const OnigUChar, [*c]const struct_OnigEncodingTypeST) callconv(.c) [*c]OnigUChar),
    is_allowed_reverse_match: ?*const fn ([*c]const OnigUChar, [*c]const OnigUChar, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn ([*c]const OnigUChar, [*c]const OnigUChar, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int),
    case_map: ?*const fn ([*c]OnigCaseFoldType, [*c][*c]const OnigUChar, [*c]const OnigUChar, [*c]OnigUChar, [*c]OnigUChar, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn ([*c]OnigCaseFoldType, [*c][*c]const OnigUChar, [*c]const OnigUChar, [*c]OnigUChar, [*c]OnigUChar, [*c]const struct_OnigEncodingTypeST) callconv(.c) c_int),
    ruby_encoding_index: c_int = @import("std").mem.zeroes(c_int),
    flags: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const OnigEncodingType = struct_OnigEncodingTypeST;
pub const OnigEncoding = [*c]const OnigEncodingType;
pub const OnigDistance = usize;
pub const struct_re_pattern_buffer = extern struct {
    p: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    used: c_uint = @import("std").mem.zeroes(c_uint),
    alloc: c_uint = @import("std").mem.zeroes(c_uint),
    num_mem: c_int = @import("std").mem.zeroes(c_int),
    num_repeat: c_int = @import("std").mem.zeroes(c_int),
    num_null_check: c_int = @import("std").mem.zeroes(c_int),
    num_comb_exp_check: c_int = @import("std").mem.zeroes(c_int),
    num_call: c_int = @import("std").mem.zeroes(c_int),
    capture_history: c_uint = @import("std").mem.zeroes(c_uint),
    bt_mem_start: c_uint = @import("std").mem.zeroes(c_uint),
    bt_mem_end: c_uint = @import("std").mem.zeroes(c_uint),
    stack_pop_level: c_int = @import("std").mem.zeroes(c_int),
    repeat_range_alloc: c_int = @import("std").mem.zeroes(c_int),
    options: OnigOptionType = @import("std").mem.zeroes(OnigOptionType),
    repeat_range: [*c]OnigRepeatRange = @import("std").mem.zeroes([*c]OnigRepeatRange),
    enc: OnigEncoding = @import("std").mem.zeroes(OnigEncoding),
    syntax: [*c]const OnigSyntaxType = @import("std").mem.zeroes([*c]const OnigSyntaxType),
    name_table: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    case_fold_flag: OnigCaseFoldType = @import("std").mem.zeroes(OnigCaseFoldType),
    optimize: c_int = @import("std").mem.zeroes(c_int),
    threshold_len: c_int = @import("std").mem.zeroes(c_int),
    anchor: c_int = @import("std").mem.zeroes(c_int),
    anchor_dmin: OnigDistance = @import("std").mem.zeroes(OnigDistance),
    anchor_dmax: OnigDistance = @import("std").mem.zeroes(OnigDistance),
    sub_anchor: c_int = @import("std").mem.zeroes(c_int),
    exact: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    exact_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    map: [256]u8 = @import("std").mem.zeroes([256]u8),
    int_map: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
    int_map_backward: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
    dmin: OnigDistance = @import("std").mem.zeroes(OnigDistance),
    dmax: OnigDistance = @import("std").mem.zeroes(OnigDistance),
    timelimit: u64 = @import("std").mem.zeroes(u64),
    chain: [*c]struct_re_pattern_buffer = @import("std").mem.zeroes([*c]struct_re_pattern_buffer),
};
pub const struct_RRegexp = extern struct {
    basic: struct_RBasic = @import("std").mem.zeroes(struct_RBasic),
    ptr: [*c]struct_re_pattern_buffer = @import("std").mem.zeroes([*c]struct_re_pattern_buffer),
    src: VALUE = @import("std").mem.zeroes(VALUE),
    usecnt: c_ulong = @import("std").mem.zeroes(c_ulong),
};
pub fn RREGEXP_SRC(arg_rexp: VALUE) callconv(.c) VALUE {
    var rexp = arg_rexp;
    _ = &rexp;
    _ = @as(c_int, 0);
    var ret: VALUE = @as([*c]struct_RRegexp, @ptrFromInt(rexp)).*.src;
    _ = &ret;
    _ = @as(c_int, 0);
    return ret;
}
pub fn RREGEXP_SRC_PTR(arg_rexp: VALUE) callconv(.c) [*c]u8 {
    var rexp = arg_rexp;
    _ = &rexp;
    return RSTRING_PTR(RREGEXP_SRC(rexp));
}
pub fn RREGEXP_SRC_LEN(arg_rexp: VALUE) callconv(.c) c_long {
    var rexp = arg_rexp;
    _ = &rexp;
    return RSTRING_LEN(RREGEXP_SRC(rexp));
}
pub fn RREGEXP_SRC_END(arg_rexp: VALUE) callconv(.c) [*c]u8 {
    var rexp = arg_rexp;
    _ = &rexp;
    return RSTRING_END(RREGEXP_SRC(rexp));
}
pub extern fn rb_struct_size(st: VALUE) VALUE;
pub extern fn rb_struct_aref(st: VALUE, k: VALUE) VALUE;
pub extern fn rb_struct_aset(st: VALUE, k: VALUE, v: VALUE) VALUE;
pub fn RSTRUCT_LEN(arg_st: VALUE) callconv(.c) c_long {
    var st = arg_st;
    _ = &st;
    _ = @as(c_int, 0);
    return rb_num2long_inline(rb_struct_size(st));
}
pub fn RSTRUCT_SET(arg_st: VALUE, arg_k: c_int, arg_v: VALUE) callconv(.c) VALUE {
    var st = arg_st;
    _ = &st;
    var k = arg_k;
    _ = &k;
    var v = arg_v;
    _ = &v;
    _ = @as(c_int, 0);
    return rb_struct_aset(st, rb_int2num_inline(k), v);
}
pub fn RSTRUCT_GET(arg_st: VALUE, arg_k: c_int) callconv(.c) VALUE {
    var st = arg_st;
    _ = &st;
    var k = arg_k;
    _ = &k;
    _ = @as(c_int, 0);
    return rb_struct_aref(st, rb_int2num_inline(k));
}
pub const RUBY_TYPED_FREE_IMMEDIATELY: c_int = 1;
pub const RUBY_TYPED_EMBEDDABLE: c_int = 2;
pub const RUBY_TYPED_FROZEN_SHAREABLE: c_int = 256;
pub const RUBY_TYPED_WB_PROTECTED: c_int = 32;
pub const RUBY_TYPED_FL_IS_TYPED_DATA: c_int = 64;
pub const RUBY_TYPED_DECL_MARKING: c_int = 16384;
pub const enum_rbimpl_typeddata_flags = c_uint;
const struct_unnamed_27 = extern struct {
    dmark: RUBY_DATA_FUNC = @import("std").mem.zeroes(RUBY_DATA_FUNC),
    dfree: RUBY_DATA_FUNC = @import("std").mem.zeroes(RUBY_DATA_FUNC),
    dsize: ?*const fn (?*const anyopaque) callconv(.c) usize = @import("std").mem.zeroes(?*const fn (?*const anyopaque) callconv(.c) usize),
    dcompact: RUBY_DATA_FUNC = @import("std").mem.zeroes(RUBY_DATA_FUNC),
    reserved: [1]?*anyopaque = @import("std").mem.zeroes([1]?*anyopaque),
};
pub const rb_data_type_t = struct_rb_data_type_struct;
pub const struct_rb_data_type_struct = extern struct {
    wrap_struct_name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    function: struct_unnamed_27 = @import("std").mem.zeroes(struct_unnamed_27),
    parent: [*c]const rb_data_type_t = @import("std").mem.zeroes([*c]const rb_data_type_t),
    data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    flags: VALUE = @import("std").mem.zeroes(VALUE),
};
pub const struct_RTypedData = extern struct {
    basic: struct_RBasic = @import("std").mem.zeroes(struct_RBasic),
    fields_obj: VALUE = @import("std").mem.zeroes(VALUE),
    type: VALUE = @import("std").mem.zeroes(VALUE),
    data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/static_assert.h:49:46: warning: ignoring StaticAssert declaration
pub extern fn rb_data_typed_object_wrap(klass: VALUE, datap: ?*anyopaque, @"type": [*c]const rb_data_type_t) VALUE;
pub extern fn rb_data_typed_object_zalloc(klass: VALUE, size: usize, @"type": [*c]const rb_data_type_t) VALUE;
pub extern fn rb_typeddata_inherited_p(child: [*c]const rb_data_type_t, parent: [*c]const rb_data_type_t) c_int;
pub extern fn rb_typeddata_is_kind_of(obj: VALUE, data_type: [*c]const rb_data_type_t) c_int;
pub extern fn rb_check_typeddata(obj: VALUE, data_type: [*c]const rb_data_type_t) ?*anyopaque;
pub fn RTYPEDDATA_EMBEDDED_P(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    return (@as([*c]struct_RTypedData, @ptrFromInt(obj)).*.type & @as(VALUE, @bitCast(@as(c_long, @as(c_int, 1))))) != 0;
}
pub fn RTYPEDDATA_GET_DATA(arg_obj: VALUE) callconv(.c) ?*anyopaque {
    var obj = arg_obj;
    _ = &obj;
    return if (@as(c_int, @intFromBool(RTYPEDDATA_EMBEDDED_P(obj))) != 0) @as(?*anyopaque, @ptrCast(&@as([*c]struct_RTypedData, @ptrFromInt(obj)).*.data)) else @as([*c]struct_RTypedData, @ptrFromInt(obj)).*.data;
}
pub fn RTYPEDDATA_P(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    return rbimpl_rtypeddata_p(obj);
}
pub fn RTYPEDDATA_TYPE(arg_obj: VALUE) callconv(.c) [*c]const struct_rb_data_type_struct {
    var obj = arg_obj;
    _ = &obj;
    return @as([*c]const struct_rb_data_type_struct, @ptrFromInt(@as([*c]struct_RTypedData, @ptrFromInt(obj)).*.type & ~@as(VALUE, @bitCast(@as(c_long, @as(c_int, 1))))));
}
pub fn rbimpl_check_typeddata(arg_obj: VALUE, arg_expected_type: [*c]const rb_data_type_t) callconv(.c) ?*anyopaque {
    var obj = arg_obj;
    _ = &obj;
    var expected_type = arg_expected_type;
    _ = &expected_type;
    if (__builtin_expect(@as(c_long, @intFromBool(!!(((if (__builtin_constant_p(RUBY_T_DATA) != 0) @as(c_int, @intFromBool(rbimpl_RB_TYPE_P_fastpath(obj, @as(c_uint, @bitCast(RUBY_T_DATA))))) else @as(c_int, @intFromBool(RB_TYPE_P(obj, @as(c_uint, @bitCast(RUBY_T_DATA)))))) != 0) and (@as(c_int, @intFromBool(RTYPEDDATA_P(obj))) != 0)))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        var actual_type: [*c]const rb_data_type_t = RTYPEDDATA_TYPE(obj);
        _ = &actual_type;
        var data: ?*anyopaque = RTYPEDDATA_GET_DATA(obj);
        _ = &data;
        if (__builtin_expect(@as(c_long, @intFromBool(!!(actual_type == expected_type))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
            return data;
        }
        while (actual_type != null) {
            actual_type = actual_type.*.parent;
            if (actual_type == expected_type) {
                return data;
            }
        }
    }
    return rb_check_typeddata(obj, expected_type);
}
pub fn rb_data_typed_object_make(arg_klass: VALUE, arg_type: [*c]const rb_data_type_t, arg_datap: [*c]?*anyopaque, arg_size: usize) callconv(.c) VALUE {
    var klass = arg_klass;
    _ = &klass;
    var @"type" = arg_type;
    _ = &@"type";
    var datap = arg_datap;
    _ = &datap;
    var size = arg_size;
    _ = &size;
    var result: VALUE = rb_data_typed_object_zalloc(klass, size, @"type");
    _ = &result;
    datap.* = RTYPEDDATA_GET_DATA(result);
    _ = datap.*;
    return result;
}
pub fn rb_data_typed_object_alloc(arg_klass: VALUE, arg_datap: ?*anyopaque, arg_type: [*c]const rb_data_type_t) callconv(.c) VALUE {
    var klass = arg_klass;
    _ = &klass;
    var datap = arg_datap;
    _ = &datap;
    var @"type" = arg_type;
    _ = &@"type";
    return rb_data_typed_object_wrap(klass, datap, @"type");
}
pub const _ISupper: c_int = 256;
pub const _ISlower: c_int = 512;
pub const _ISalpha: c_int = 1024;
pub const _ISdigit: c_int = 2048;
pub const _ISxdigit: c_int = 4096;
pub const _ISspace: c_int = 8192;
pub const _ISprint: c_int = 16384;
pub const _ISgraph: c_int = 32768;
pub const _ISblank: c_int = 1;
pub const _IScntrl: c_int = 2;
pub const _ISpunct: c_int = 4;
pub const _ISalnum: c_int = 8;
const enum_unnamed_28 = c_uint;
pub extern fn __ctype_b_loc() [*c][*c]const c_ushort;
pub extern fn __ctype_tolower_loc() [*c][*c]const __int32_t;
pub extern fn __ctype_toupper_loc() [*c][*c]const __int32_t;
pub extern fn isalnum(c_int) c_int;
pub extern fn isalpha(c_int) c_int;
pub extern fn iscntrl(c_int) c_int;
pub extern fn isdigit(c_int) c_int;
pub extern fn islower(c_int) c_int;
pub extern fn isgraph(c_int) c_int;
pub extern fn isprint(c_int) c_int;
pub extern fn ispunct(c_int) c_int;
pub extern fn isspace(c_int) c_int;
pub extern fn isupper(c_int) c_int;
pub extern fn isxdigit(c_int) c_int;
pub extern fn tolower(__c: c_int) c_int;
pub extern fn toupper(__c: c_int) c_int;
pub extern fn isblank(c_int) c_int;
pub extern fn isctype(__c: c_int, __mask: c_int) c_int;
pub extern fn isascii(__c: c_int) c_int;
pub extern fn toascii(__c: c_int) c_int;
pub extern fn _toupper(c_int) c_int;
pub extern fn _tolower(c_int) c_int;
pub extern fn isalnum_l(c_int, locale_t) c_int;
pub extern fn isalpha_l(c_int, locale_t) c_int;
pub extern fn iscntrl_l(c_int, locale_t) c_int;
pub extern fn isdigit_l(c_int, locale_t) c_int;
pub extern fn islower_l(c_int, locale_t) c_int;
pub extern fn isgraph_l(c_int, locale_t) c_int;
pub extern fn isprint_l(c_int, locale_t) c_int;
pub extern fn ispunct_l(c_int, locale_t) c_int;
pub extern fn isspace_l(c_int, locale_t) c_int;
pub extern fn isupper_l(c_int, locale_t) c_int;
pub extern fn isxdigit_l(c_int, locale_t) c_int;
pub extern fn isblank_l(c_int, locale_t) c_int;
pub extern fn __tolower_l(__c: c_int, __l: locale_t) c_int;
pub extern fn tolower_l(__c: c_int, __l: locale_t) c_int;
pub extern fn __toupper_l(__c: c_int, __l: locale_t) c_int;
pub extern fn toupper_l(__c: c_int, __l: locale_t) c_int;
pub extern fn ruby_strtoul(str: [*c]const u8, endptr: [*c][*c]u8, base: c_int) c_ulong;
pub fn rb_isascii(arg_c: c_int) callconv(.c) c_int {
    var c = arg_c;
    _ = &c;
    return @intFromBool((@as(c_int, '\x00') <= c) and (c <= @as(c_int, '\x7f')));
}
pub fn rb_isupper(arg_c: c_int) callconv(.c) c_int {
    var c = arg_c;
    _ = &c;
    return @intFromBool((@as(c_int, 'A') <= c) and (c <= @as(c_int, 'Z')));
}
pub fn rb_islower(arg_c: c_int) callconv(.c) c_int {
    var c = arg_c;
    _ = &c;
    return @intFromBool((@as(c_int, 'a') <= c) and (c <= @as(c_int, 'z')));
}
pub fn rb_isalpha(arg_c: c_int) callconv(.c) c_int {
    var c = arg_c;
    _ = &c;
    return @intFromBool((rb_isupper(c) != 0) or (rb_islower(c) != 0));
}
pub fn rb_isdigit(arg_c: c_int) callconv(.c) c_int {
    var c = arg_c;
    _ = &c;
    return @intFromBool((@as(c_int, '0') <= c) and (c <= @as(c_int, '9')));
}
pub fn rb_isalnum(arg_c: c_int) callconv(.c) c_int {
    var c = arg_c;
    _ = &c;
    return @intFromBool((rb_isalpha(c) != 0) or (rb_isdigit(c) != 0));
}
pub fn rb_isxdigit(arg_c: c_int) callconv(.c) c_int {
    var c = arg_c;
    _ = &c;
    return @intFromBool(((rb_isdigit(c) != 0) or ((@as(c_int, 'A') <= c) and (c <= @as(c_int, 'F')))) or ((@as(c_int, 'a') <= c) and (c <= @as(c_int, 'f'))));
}
pub fn rb_isblank(arg_c: c_int) callconv(.c) c_int {
    var c = arg_c;
    _ = &c;
    return @intFromBool((c == @as(c_int, ' ')) or (c == @as(c_int, '\t')));
}
pub fn rb_isspace(arg_c: c_int) callconv(.c) c_int {
    var c = arg_c;
    _ = &c;
    return @intFromBool((c == @as(c_int, ' ')) or ((@as(c_int, '\t') <= c) and (c <= @as(c_int, '\r'))));
}
pub fn rb_iscntrl(arg_c: c_int) callconv(.c) c_int {
    var c = arg_c;
    _ = &c;
    return @intFromBool(((@as(c_int, '\x00') <= c) and (c < @as(c_int, ' '))) or (c == @as(c_int, '\x7f')));
}
pub fn rb_isprint(arg_c: c_int) callconv(.c) c_int {
    var c = arg_c;
    _ = &c;
    return @intFromBool((@as(c_int, ' ') <= c) and (c <= @as(c_int, '~')));
}
pub fn rb_ispunct(arg_c: c_int) callconv(.c) c_int {
    var c = arg_c;
    _ = &c;
    return @intFromBool(!(rb_isalnum(c) != 0));
}
pub fn rb_isgraph(arg_c: c_int) callconv(.c) c_int {
    var c = arg_c;
    _ = &c;
    return @intFromBool((@as(c_int, '!') <= c) and (c <= @as(c_int, '~')));
}
pub fn rb_tolower(arg_c: c_int) callconv(.c) c_int {
    var c = arg_c;
    _ = &c;
    return if (rb_isupper(c) != 0) c | @as(c_int, 32) else c;
}
pub fn rb_toupper(arg_c: c_int) callconv(.c) c_int {
    var c = arg_c;
    _ = &c;
    return if (rb_islower(c) != 0) c & @as(c_int, 95) else c;
}
pub extern fn rb_eval_string(str: [*c]const u8) VALUE;
pub extern fn rb_eval_string_protect(str: [*c]const u8, state: [*c]c_int) VALUE;
pub extern fn rb_eval_string_wrap(str: [*c]const u8, state: [*c]c_int) VALUE;
pub extern fn rb_funcall(recv: VALUE, mid: ID, n: c_int, ...) VALUE;
pub extern fn rb_funcallv(recv: VALUE, mid: ID, argc: c_int, argv: [*c]const VALUE) VALUE;
pub extern fn rb_funcallv_kw(recv: VALUE, mid: ID, argc: c_int, argv: [*c]const VALUE, kw_splat: c_int) VALUE;
pub extern fn rb_funcallv_public(recv: VALUE, mid: ID, argc: c_int, argv: [*c]const VALUE) VALUE;
pub extern fn rb_funcallv_public_kw(recv: VALUE, mid: ID, argc: c_int, argv: [*c]const VALUE, kw_splat: c_int) VALUE;
pub extern fn rb_funcall_passing_block(recv: VALUE, mid: ID, argc: c_int, argv: [*c]const VALUE) VALUE;
pub extern fn rb_funcall_passing_block_kw(recv: VALUE, mid: ID, argc: c_int, argv: [*c]const VALUE, kw_splat: c_int) VALUE;
pub extern fn rb_funcall_with_block(recv: VALUE, mid: ID, argc: c_int, argv: [*c]const VALUE, procval: VALUE) VALUE;
pub extern fn rb_funcall_with_block_kw(recv: VALUE, mid: ID, argc: c_int, argv: [*c]const VALUE, procval: VALUE, kw_splat: c_int) VALUE;
pub extern fn rb_call_super(argc: c_int, argv: [*c]const VALUE) VALUE;
pub extern fn rb_call_super_kw(argc: c_int, argv: [*c]const VALUE, kw_splat: c_int) VALUE;
pub extern fn rb_current_receiver() VALUE;
pub extern fn rb_get_kwargs(keyword_hash: VALUE, table: [*c]const ID, required: c_int, optional: c_int, values: [*c]VALUE) c_int;
pub extern fn rb_extract_keywords(orighash: [*c]VALUE) VALUE;
pub const rb_event_flag_t = u32;
pub const rb_event_hook_func_t = ?*const fn (rb_event_flag_t, VALUE, VALUE, ID, VALUE) callconv(.c) void;
pub extern fn rb_add_event_hook(func: rb_event_hook_func_t, events: rb_event_flag_t, data: VALUE) void;
pub extern fn rb_remove_event_hook(func: rb_event_hook_func_t) c_int;
pub const ruby_glob_func = fn ([*c]const u8, VALUE, ?*anyopaque) callconv(.c) c_int;
pub extern fn rb_glob(pattern: [*c]const u8, func: ?*const fn ([*c]const u8, VALUE, ?*anyopaque) callconv(.c) void, arg: VALUE) void;
pub extern fn ruby_glob(pattern: [*c]const u8, flags: c_int, func: ?*const ruby_glob_func, arg: VALUE) c_int;
pub extern fn ruby_brace_glob(pattern: [*c]const u8, flags: c_int, func: ?*const ruby_glob_func, arg: VALUE) c_int;
pub extern var rb_mKernel: VALUE;
pub extern var rb_mComparable: VALUE;
pub extern var rb_mEnumerable: VALUE;
pub extern var rb_mErrno: VALUE;
pub extern var rb_mFileTest: VALUE;
pub extern var rb_mGC: VALUE;
pub extern var rb_mMath: VALUE;
pub extern var rb_mProcess: VALUE;
pub extern var rb_mWaitReadable: VALUE;
pub extern var rb_mWaitWritable: VALUE;
pub extern var rb_cBasicObject: VALUE;
pub extern var rb_cArray: VALUE;
pub extern var rb_cBinding: VALUE;
pub extern var rb_cBox: VALUE;
pub extern var rb_cClass: VALUE;
pub extern var rb_cDir: VALUE;
pub extern var rb_cEncoding: VALUE;
pub extern var rb_cEnumerator: VALUE;
pub extern var rb_cFalseClass: VALUE;
pub extern var rb_cFile: VALUE;
pub extern var rb_cComplex: VALUE;
pub extern var rb_cFloat: VALUE;
pub extern var rb_cHash: VALUE;
pub extern var rb_cIO: VALUE;
pub extern var rb_cInteger: VALUE;
pub extern var rb_cMatch: VALUE;
pub extern var rb_cMethod: VALUE;
pub extern var rb_cModule: VALUE;
pub extern var rb_cRefinement: VALUE;
pub extern var rb_cNameErrorMesg: VALUE;
pub extern var rb_cNilClass: VALUE;
pub extern var rb_cNumeric: VALUE;
pub extern var rb_cProc: VALUE;
pub extern var rb_cRandom: VALUE;
pub extern var rb_cRange: VALUE;
pub extern var rb_cRational: VALUE;
pub extern var rb_cRegexp: VALUE;
pub extern var rb_cSet: VALUE;
pub extern var rb_cStat: VALUE;
pub extern var rb_cString: VALUE;
pub extern var rb_cStruct: VALUE;
pub extern var rb_cSymbol: VALUE;
pub extern var rb_cThread: VALUE;
pub extern var rb_cTime: VALUE;
pub extern var rb_cTrueClass: VALUE;
pub extern var rb_cUnboundMethod: VALUE;
pub extern var rb_eException: VALUE;
pub extern var rb_eStandardError: VALUE;
pub extern var rb_eSystemExit: VALUE;
pub extern var rb_eInterrupt: VALUE;
pub extern var rb_eSignal: VALUE;
pub extern var rb_eFatal: VALUE;
pub extern var rb_eArgError: VALUE;
pub extern var rb_eEOFError: VALUE;
pub extern var rb_eIndexError: VALUE;
pub extern var rb_eStopIteration: VALUE;
pub extern var rb_eKeyError: VALUE;
pub extern var rb_eRangeError: VALUE;
pub extern var rb_eIOError: VALUE;
pub extern var rb_eRuntimeError: VALUE;
pub extern var rb_eFrozenError: VALUE;
pub extern var rb_eSecurityError: VALUE;
pub extern var rb_eSystemCallError: VALUE;
pub extern var rb_eThreadError: VALUE;
pub extern var rb_eTypeError: VALUE;
pub extern var rb_eZeroDivError: VALUE;
pub extern var rb_eNotImpError: VALUE;
pub extern var rb_eNoMemError: VALUE;
pub extern var rb_eNoMethodError: VALUE;
pub extern var rb_eFloatDomainError: VALUE;
pub extern var rb_eLocalJumpError: VALUE;
pub extern var rb_eSysStackError: VALUE;
pub extern var rb_eRegexpError: VALUE;
pub extern var rb_eEncodingError: VALUE;
pub extern var rb_eEncCompatError: VALUE;
pub extern var rb_eNoMatchingPatternError: VALUE;
pub extern var rb_eNoMatchingPatternKeyError: VALUE;
pub extern var rb_eScriptError: VALUE;
pub extern var rb_eNameError: VALUE;
pub extern var rb_eSyntaxError: VALUE;
pub extern var rb_eLoadError: VALUE;
pub extern var rb_eMathDomainError: VALUE;
pub extern var rb_stdin: VALUE;
pub extern var rb_stdout: VALUE;
pub extern var rb_stderr: VALUE;
pub fn rb_class_of(arg_obj: VALUE) callconv(.c) VALUE {
    var obj = arg_obj;
    _ = &obj;
    if (!RB_SPECIAL_CONST_P(obj)) {
        return RBASIC_CLASS(obj);
    } else if (obj == @as(VALUE, @bitCast(@as(c_long, RUBY_Qfalse)))) {
        return rb_cFalseClass;
    } else if (obj == @as(VALUE, @bitCast(@as(c_long, RUBY_Qnil)))) {
        return rb_cNilClass;
    } else if (obj == @as(VALUE, @bitCast(@as(c_long, RUBY_Qtrue)))) {
        return rb_cTrueClass;
    } else if (RB_FIXNUM_P(obj)) {
        return rb_cInteger;
    } else if (RB_STATIC_SYM_P(obj)) {
        return rb_cSymbol;
    } else if (RB_FLONUM_P(obj)) {
        return rb_cFloat;
    }
    __builtin_unreachable();
    return @import("std").mem.zeroes(VALUE);
}
pub const rb_block_call_func = fn (VALUE, VALUE, c_int, [*c]const VALUE, VALUE) callconv(.c) VALUE;
pub const rb_block_call_func_t = ?*const rb_block_call_func;
pub extern fn rb_each(obj: VALUE) VALUE;
pub extern fn rb_yield(val: VALUE) VALUE;
pub extern fn rb_yield_values(n: c_int, ...) VALUE;
pub extern fn rb_yield_values2(n: c_int, argv: [*c]const VALUE) VALUE;
pub extern fn rb_yield_values_kw(n: c_int, argv: [*c]const VALUE, kw_splat: c_int) VALUE;
pub extern fn rb_yield_splat(ary: VALUE) VALUE;
pub extern fn rb_yield_splat_kw(ary: VALUE, kw_splat: c_int) VALUE;
pub extern fn rb_yield_block(yielded_arg: VALUE, callback_arg: VALUE, argc: c_int, argv: [*c]const VALUE, blockarg: VALUE) VALUE;
pub extern fn rb_keyword_given_p() c_int;
pub extern fn rb_block_given_p() c_int;
pub extern fn rb_need_block() void;
pub extern fn rb_iterate(func1: ?*const fn (VALUE) callconv(.c) VALUE, data1: VALUE, proc: rb_block_call_func_t, data2: VALUE) VALUE;
pub extern fn rb_block_call(obj: VALUE, mid: ID, argc: c_int, argv: [*c]const VALUE, proc: rb_block_call_func_t, data2: VALUE) VALUE;
pub extern fn rb_block_call_kw(obj: VALUE, mid: ID, argc: c_int, argv: [*c]const VALUE, proc: rb_block_call_func_t, data2: VALUE, kw_splat: c_int) VALUE;
pub extern fn rb_rescue(b_proc: ?*const fn (VALUE) callconv(.c) VALUE, data1: VALUE, r_proc: ?*const fn (VALUE, VALUE) callconv(.c) VALUE, data2: VALUE) VALUE;
pub extern fn rb_rescue2(b_proc: ?*const fn (VALUE) callconv(.c) VALUE, data1: VALUE, r_proc: ?*const fn (VALUE, VALUE) callconv(.c) VALUE, data2: VALUE, ...) VALUE;
pub extern fn rb_vrescue2(b_proc: ?*const fn (VALUE) callconv(.c) VALUE, data1: VALUE, r_proc: ?*const fn (VALUE, VALUE) callconv(.c) VALUE, data2: VALUE, ap: [*c]struct___va_list_tag_1) VALUE;
pub extern fn rb_ensure(b_proc: ?*const fn (VALUE) callconv(.c) VALUE, data1: VALUE, e_proc: ?*const fn (VALUE) callconv(.c) VALUE, data2: VALUE) VALUE;
pub extern fn rb_catch(tag: [*c]const u8, func: rb_block_call_func_t, data: VALUE) VALUE;
pub extern fn rb_catch_obj(tag: VALUE, func: rb_block_call_func_t, data: VALUE) VALUE;
pub extern fn rb_throw(tag: [*c]const u8, val: VALUE) noreturn;
pub extern fn rb_throw_obj(tag: VALUE, val: VALUE) noreturn;
pub const struct_rbimpl_size_overflow_tag = extern struct {
    overflowed: bool = @import("std").mem.zeroes(bool),
    result: usize = @import("std").mem.zeroes(usize),
};
pub extern fn rb_alloc_tmp_buffer(store: [*c]volatile VALUE, len: c_long) ?*anyopaque;
pub extern fn rb_alloc_tmp_buffer_with_count(store: [*c]volatile VALUE, len: usize, count: usize) ?*anyopaque;
pub extern fn rb_free_tmp_buffer(store: [*c]volatile VALUE) void;
pub extern fn ruby_malloc_size_overflow(x: usize, y: usize) noreturn;
pub extern fn ruby_malloc_add_size_overflow(x: usize, y: usize) noreturn;
pub fn rb_mul_size_overflow(arg_a: usize, arg_b: usize, arg_max: usize, arg_c: [*c]usize) callconv(.c) c_int {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    var max = arg_max;
    _ = &max;
    var c = arg_c;
    _ = &c;
    var da: u128 = undefined;
    _ = &da;
    var db: u128 = undefined;
    _ = &db;
    var c2: u128 = undefined;
    _ = &c2;
    da = @as(u128, @bitCast(@as(u128, a)));
    db = @as(u128, @bitCast(@as(u128, b)));
    c2 = da *% db;
    if (c2 > @as(u128, @bitCast(@as(u128, max)))) return 1;
    c.* = @as(usize, @bitCast(@as(c_ulong, @truncate(c2))));
    return 0;
}
pub fn rbimpl_size_mul_overflow(arg_x: usize, arg_y: usize) callconv(.c) struct_rbimpl_size_overflow_tag {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    var ret: struct_rbimpl_size_overflow_tag = struct_rbimpl_size_overflow_tag{
        .overflowed = @as(c_int, 0) != 0,
        .result = @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))),
    };
    _ = &ret;
    ret.overflowed = __builtin_mul_overflow(x, y, &ret.result);
    return ret;
}
pub fn rbimpl_size_mul_or_raise(arg_x: usize, arg_y: usize) callconv(.c) usize {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    var size: struct_rbimpl_size_overflow_tag = rbimpl_size_mul_overflow(x, y);
    _ = &size;
    if (__builtin_expect(@as(c_long, @intFromBool(!!!size.overflowed)), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        return size.result;
    } else {
        ruby_malloc_size_overflow(x, y);
        __builtin_unreachable();
    }
    return @import("std").mem.zeroes(usize);
}
// /home/user/.config/Windsurf/User/globalStorage/ziglang.vscode-zig/zig/x86_64-linux-0.15.2/lib/include/stdckdint.h:37:26: warning: TODO implement function '__builtin_add_overflow' in std.zig.c_builtins

// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/memory.h:673:1: warning: unable to translate function, demoted to extern
pub extern fn rbimpl_size_add_overflow(arg_x: usize, arg_y: usize) callconv(.c) struct_rbimpl_size_overflow_tag;
pub fn rbimpl_size_add_or_raise(arg_x: usize, arg_y: usize) callconv(.c) usize {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    var size: struct_rbimpl_size_overflow_tag = rbimpl_size_add_overflow(x, y);
    _ = &size;
    if (__builtin_expect(@as(c_long, @intFromBool(!!!size.overflowed)), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        return size.result;
    } else {
        ruby_malloc_add_size_overflow(x, y);
        __builtin_unreachable();
    }
    return @import("std").mem.zeroes(usize);
}
pub fn rb_alloc_tmp_buffer2(arg_store: [*c]volatile VALUE, arg_count: c_long, arg_elsize: usize) callconv(.c) ?*anyopaque {
    var store = arg_store;
    _ = &store;
    var count = arg_count;
    _ = &count;
    var elsize = arg_elsize;
    _ = &elsize;
    const total_size: usize = rbimpl_size_mul_or_raise(@as(usize, @bitCast(count)), elsize);
    _ = &total_size;
    const cnt: usize = ((total_size +% @sizeOf(VALUE)) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) / @sizeOf(VALUE);
    _ = &cnt;
    return rb_alloc_tmp_buffer_with_count(store, total_size, cnt);
}
pub fn ruby_nonempty_memcpy(arg_dest: ?*anyopaque, arg_src: ?*const anyopaque, arg_n: usize) callconv(.c) ?*anyopaque {
    var dest = arg_dest;
    _ = &dest;
    var src = arg_src;
    _ = &src;
    var n = arg_n;
    _ = &n;
    if (n != 0) {
        return memcpy(dest, src, n);
    } else {
        return dest;
    }
    return null;
}
pub extern fn rb_define_class(name: [*c]const u8, super: VALUE) VALUE;
pub extern fn rb_define_module(name: [*c]const u8) VALUE;
pub extern fn rb_define_class_under(outer: VALUE, name: [*c]const u8, super: VALUE) VALUE;
pub extern fn rb_define_module_under(outer: VALUE, name: [*c]const u8) VALUE;
pub extern fn rb_include_module(klass: VALUE, module: VALUE) void;
pub extern fn rb_extend_object(obj: VALUE, mod: VALUE) void;
pub extern fn rb_prepend_module(klass: VALUE, module: VALUE) void;
pub extern fn rb_obj_setup(obj: VALUE, klass: VALUE, @"type": VALUE) VALUE;
pub extern fn rb_obj_class(obj: VALUE) VALUE;
pub extern fn rb_singleton_class_clone(obj: VALUE) VALUE;
pub extern fn rb_singleton_class_attached(klass: VALUE, obj: VALUE) void;
pub extern fn rb_copy_generic_ivar(clone: VALUE, obj: VALUE) void;
pub fn rb_clone_setup(arg_clone: VALUE, arg_obj: VALUE) callconv(.c) void {
    var clone = arg_clone;
    _ = &clone;
    var obj = arg_obj;
    _ = &obj;
    _ = &clone;
    _ = &obj;
    return;
}
pub fn rb_dup_setup(arg_dup_1: VALUE, arg_obj: VALUE) callconv(.c) void {
    var dup_1 = arg_dup_1;
    _ = &dup_1;
    var obj = arg_obj;
    _ = &obj;
    _ = &dup_1;
    _ = &obj;
    return;
}
pub extern fn rb_mem_clear(buf: [*c]VALUE, len: c_long) void;
pub extern fn rb_assoc_new(car: VALUE, cdr: VALUE) VALUE;
pub extern fn rb_check_array_type(obj: VALUE) VALUE;
pub extern fn rb_ary_new() VALUE;
pub extern fn rb_ary_new_capa(capa: c_long) VALUE;
pub extern fn rb_ary_new_from_args(n: c_long, ...) VALUE;
pub extern fn rb_ary_new_from_values(n: c_long, elts: [*c]const VALUE) VALUE;
pub extern fn rb_ary_hidden_new(capa: c_long) VALUE;
pub extern fn rb_ary_free(ary: VALUE) void;
pub extern fn rb_ary_modify(ary: VALUE) void;
pub extern fn rb_ary_freeze(obj: VALUE) VALUE;
pub extern fn rb_ary_shared_with_p(lhs: VALUE, rhs: VALUE) VALUE;
pub extern fn rb_ary_aref(argc: c_int, argv: [*c]const VALUE, ary: VALUE) VALUE;
pub extern fn rb_ary_subseq(ary: VALUE, beg: c_long, len: c_long) VALUE;
pub extern fn rb_ary_store(ary: VALUE, key: c_long, val: VALUE) void;
pub extern fn rb_ary_dup(ary: VALUE) VALUE;
pub extern fn rb_ary_resurrect(ary: VALUE) VALUE;
pub extern fn rb_ary_to_ary(obj: VALUE) VALUE;
pub extern fn rb_ary_to_s(ary: VALUE) VALUE;
pub extern fn rb_ary_cat(ary: VALUE, train: [*c]const VALUE, len: c_long) VALUE;
pub extern fn rb_ary_push(ary: VALUE, elem: VALUE) VALUE;
pub extern fn rb_ary_pop(ary: VALUE) VALUE;
pub extern fn rb_ary_shift(ary: VALUE) VALUE;
pub extern fn rb_ary_unshift(ary: VALUE, elem: VALUE) VALUE;
pub extern fn rb_ary_entry(ary: VALUE, off: c_long) VALUE;
pub extern fn rb_ary_each(ary: VALUE) VALUE;
pub extern fn rb_ary_join(ary: VALUE, sep: VALUE) VALUE;
pub extern fn rb_ary_reverse(ary: VALUE) VALUE;
pub extern fn rb_ary_rotate(ary: VALUE, rot: c_long) VALUE;
pub extern fn rb_ary_sort(ary: VALUE) VALUE;
pub extern fn rb_ary_sort_bang(ary: VALUE) VALUE;
pub extern fn rb_ary_delete(ary: VALUE, elem: VALUE) VALUE;
pub extern fn rb_ary_delete_at(ary: VALUE, pos: c_long) VALUE;
pub extern fn rb_ary_clear(ary: VALUE) VALUE;
pub extern fn rb_ary_plus(lhs: VALUE, rhs: VALUE) VALUE;
pub extern fn rb_ary_concat(lhs: VALUE, rhs: VALUE) VALUE;
pub extern fn rb_ary_assoc(alist: VALUE, key: VALUE) VALUE;
pub extern fn rb_ary_rassoc(alist: VALUE, key: VALUE) VALUE;
pub extern fn rb_ary_includes(ary: VALUE, elem: VALUE) VALUE;
pub extern fn rb_ary_cmp(lhs: VALUE, rhs: VALUE) VALUE;
pub extern fn rb_ary_replace(copy: VALUE, orig: VALUE) VALUE;
pub extern fn rb_get_values_at(obj: VALUE, olen: c_long, argc: c_int, argv: [*c]const VALUE, func: ?*const fn (VALUE, c_long) callconv(.c) VALUE) VALUE;
pub extern fn rb_ary_resize(ary: VALUE, len: c_long) VALUE;
pub extern fn rb_exc_new(etype: VALUE, ptr: [*c]const u8, len: c_long) VALUE;
pub extern fn rb_exc_new_cstr(etype: VALUE, str: [*c]const u8) VALUE;
pub extern fn rb_exc_new_str(etype: VALUE, str: VALUE) VALUE;
pub extern fn rb_loaderror(fmt: [*c]const u8, ...) noreturn;
pub extern fn rb_loaderror_with_path(path: VALUE, fmt: [*c]const u8, ...) noreturn;
pub extern fn rb_name_error(name: ID, fmt: [*c]const u8, ...) noreturn;
pub extern fn rb_name_error_str(name: VALUE, fmt: [*c]const u8, ...) noreturn;
pub extern fn rb_frozen_error_raise(recv: VALUE, fmt: [*c]const u8, ...) noreturn;
pub extern fn rb_invalid_str(str: [*c]const u8, @"type": [*c]const u8) noreturn;
pub extern fn rb_error_frozen(what: [*c]const u8) noreturn;
pub extern fn rb_error_frozen_object(what: VALUE) noreturn;
pub extern fn rb_check_frozen(obj: VALUE) void;
pub extern fn rb_check_copyable(obj: VALUE, orig: VALUE) void;
pub extern fn rb_error_arity(argc: c_int, min: c_int, max: c_int) noreturn;
pub extern fn rb_str_modify(str: VALUE) void;
pub fn rb_check_frozen_inline(arg_obj: VALUE) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
    if (__builtin_expect(@as(c_long, @intFromBool(!!RB_OBJ_FROZEN(obj))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
        rb_error_frozen_object(obj);
    }
    if (__builtin_expect(@as(c_long, @intFromBool(!!(((if (__builtin_constant_p(RUBY_T_STRING) != 0) @as(c_int, @intFromBool(rbimpl_RB_TYPE_P_fastpath(obj, @as(c_uint, @bitCast(RUBY_T_STRING))))) else @as(c_int, @intFromBool(RB_TYPE_P(obj, @as(c_uint, @bitCast(RUBY_T_STRING)))))) != 0) and (RB_FL_TEST_RAW(obj, @as(VALUE, @bitCast(@as(c_long, RUBY_FL_USER2 | RUBY_FL_USER3)))) != 0)))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
        rb_str_modify(obj);
    }
}
pub fn rb_check_arity(arg_argc: c_int, arg_min: c_int, arg_max: c_int) callconv(.c) c_int {
    var argc = arg_argc;
    _ = &argc;
    var min = arg_min;
    _ = &min;
    var max = arg_max;
    _ = &max;
    if ((argc < min) or ((max != -@as(c_int, 1)) and (argc > max))) {
        rb_error_arity(argc, min, max);
    }
    return argc;
}
pub extern fn rb_st_foreach_safe(st: [*c]struct_st_table, func: ?*const st_foreach_callback_func, arg: st_data_t) void;
pub extern fn rb_check_hash_type(obj: VALUE) VALUE;
pub extern fn rb_hash_foreach(hash: VALUE, func: ?*const fn (VALUE, VALUE, VALUE) callconv(.c) c_int, arg: VALUE) void;
pub extern fn rb_hash(obj: VALUE) VALUE;
pub extern fn rb_hash_new() VALUE;
pub extern fn rb_hash_new_capa(capa: c_long) VALUE;
pub extern fn rb_hash_dup(hash: VALUE) VALUE;
pub extern fn rb_hash_freeze(obj: VALUE) VALUE;
pub extern fn rb_hash_aref(hash: VALUE, key: VALUE) VALUE;
pub extern fn rb_hash_lookup(hash: VALUE, key: VALUE) VALUE;
pub extern fn rb_hash_lookup2(hash: VALUE, key: VALUE, def: VALUE) VALUE;
pub extern fn rb_hash_fetch(hash: VALUE, key: VALUE) VALUE;
pub extern fn rb_hash_aset(hash: VALUE, key: VALUE, val: VALUE) VALUE;
pub extern fn rb_hash_clear(hash: VALUE) VALUE;
pub extern fn rb_hash_delete_if(hash: VALUE) VALUE;
pub extern fn rb_hash_delete(hash: VALUE, key: VALUE) VALUE;
pub extern fn rb_hash_bulk_insert(argc: c_long, argv: [*c]const VALUE, hash: VALUE) void;
pub const rb_hash_update_func = fn (VALUE, VALUE, VALUE) callconv(.c) VALUE;
pub extern fn rb_hash_update_by(hash1: VALUE, hash2: VALUE, func: ?*const rb_hash_update_func) VALUE;
pub extern fn rb_env_clear() VALUE;
pub extern fn rb_hash_size(hash: VALUE) VALUE;
pub extern fn rb_block_proc() VALUE;
pub extern fn rb_block_lambda() VALUE;
pub extern fn rb_proc_new(func: rb_block_call_func_t, callback_arg: VALUE) VALUE;
pub extern fn rb_obj_is_proc(recv: VALUE) VALUE;
pub extern fn rb_proc_call(recv: VALUE, args: VALUE) VALUE;
pub extern fn rb_proc_call_kw(recv: VALUE, args: VALUE, kw_splat: c_int) VALUE;
pub extern fn rb_proc_call_with_block(recv: VALUE, argc: c_int, argv: [*c]const VALUE, proc: VALUE) VALUE;
pub extern fn rb_proc_call_with_block_kw(recv: VALUE, argc: c_int, argv: [*c]const VALUE, proc: VALUE, kw_splat: c_int) VALUE;
pub extern fn rb_proc_arity(recv: VALUE) c_int;
pub extern fn rb_proc_lambda_p(recv: VALUE) VALUE;
pub extern fn rb_binding_new() VALUE;
pub extern fn rb_obj_method(recv: VALUE, mid: VALUE) VALUE;
pub extern fn rb_obj_is_method(recv: VALUE) VALUE;
pub extern fn rb_method_call(argc: c_int, argv: [*c]const VALUE, recv: VALUE) VALUE;
pub extern fn rb_method_call_kw(argc: c_int, argv: [*c]const VALUE, recv: VALUE, kw_splat: c_int) VALUE;
pub extern fn rb_method_call_with_block(argc: c_int, argv: [*c]const VALUE, recv: VALUE, proc: VALUE) VALUE;
pub extern fn rb_method_call_with_block_kw(argc: c_int, argv: [*c]const VALUE, recv: VALUE, proc: VALUE, kw_splat: c_int) VALUE;
pub extern fn rb_mod_method_arity(mod: VALUE, mid: ID) c_int;
pub extern fn rb_obj_method_arity(obj: VALUE, mid: ID) c_int;
pub extern fn rb_protect(func: ?*const fn (VALUE) callconv(.c) VALUE, args: VALUE, state: [*c]c_int) VALUE;
pub extern fn rb_scan_args(argc: c_int, argv: [*c]const VALUE, fmt: [*c]const u8, ...) c_int;
pub extern fn rb_scan_args_kw(kw_splat: c_int, argc: c_int, argv: [*c]const VALUE, fmt: [*c]const u8, ...) c_int;
pub extern fn rb_scan_args_bad_format([*c]const u8) void;
pub extern fn rb_scan_args_length_mismatch([*c]const u8, c_int) void;
pub fn rb_scan_args_keyword_p(arg_kw_flag: c_int, arg_last: VALUE) callconv(.c) bool {
    var kw_flag = arg_kw_flag;
    _ = &kw_flag;
    var last = arg_last;
    _ = &last;
    while (true) {
        switch (kw_flag) {
            @as(c_int, 0) => return !!(rb_keyword_given_p() != 0),
            @as(c_int, 1) => return @as(c_int, 1) != 0,
            @as(c_int, 3) => return (if (__builtin_constant_p(RUBY_T_HASH) != 0) @as(c_int, @intFromBool(rbimpl_RB_TYPE_P_fastpath(last, @as(c_uint, @bitCast(RUBY_T_HASH))))) else @as(c_int, @intFromBool(RB_TYPE_P(last, @as(c_uint, @bitCast(RUBY_T_HASH)))))) != 0,
            else => return @as(c_int, 0) != 0,
        }
        break;
    }
    return false;
}
pub inline fn rb_scan_args_lead_p(arg_fmt: [*c]const u8) bool {
    var fmt = arg_fmt;
    _ = &fmt;
    return @as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, fmt[@as(c_uint, @intCast(@as(c_int, 0)))]))) - @as(c_int, '0')))))))) < @as(c_int, 10);
}
pub inline fn rb_scan_args_n_lead(arg_fmt: [*c]const u8) c_int {
    var fmt = arg_fmt;
    _ = &fmt;
    return if (@as(c_int, @intFromBool(rb_scan_args_lead_p(fmt))) != 0) @as(c_int, @bitCast(@as(c_uint, fmt[@as(c_uint, @intCast(@as(c_int, 0)))]))) - @as(c_int, '0') else @as(c_int, 0);
}
pub inline fn rb_scan_args_opt_p(arg_fmt: [*c]const u8) bool {
    var fmt = arg_fmt;
    _ = &fmt;
    return (@as(c_int, @intFromBool(rb_scan_args_lead_p(fmt))) != 0) and (@as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, fmt[@as(c_uint, @intCast(@as(c_int, 1)))]))) - @as(c_int, '0')))))))) < @as(c_int, 10));
}
pub inline fn rb_scan_args_n_opt(arg_fmt: [*c]const u8) c_int {
    var fmt = arg_fmt;
    _ = &fmt;
    return if (@as(c_int, @intFromBool(rb_scan_args_opt_p(fmt))) != 0) @as(c_int, @bitCast(@as(c_uint, fmt[@as(c_uint, @intCast(@as(c_int, 1)))]))) - @as(c_int, '0') else @as(c_int, 0);
}
pub inline fn rb_scan_args_var_idx(arg_fmt: [*c]const u8) c_int {
    var fmt = arg_fmt;
    _ = &fmt;
    return if (!rb_scan_args_lead_p(fmt)) @as(c_int, 0) else if (!(@as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, fmt[@as(c_uint, @intCast(@as(c_int, 1)))]))) - @as(c_int, '0')))))))) < @as(c_int, 10))) @as(c_int, 1) else @as(c_int, 2);
}
pub inline fn rb_scan_args_f_var(arg_fmt: [*c]const u8) bool {
    var fmt = arg_fmt;
    _ = &fmt;
    return @as(c_int, @bitCast(@as(c_uint, (blk: {
        const tmp = rb_scan_args_var_idx(fmt);
        if (tmp >= 0) break :blk fmt + @as(usize, @intCast(tmp)) else break :blk fmt - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*))) == @as(c_int, '*');
}
pub inline fn rb_scan_args_trail_idx(arg_fmt: [*c]const u8) c_int {
    var fmt = arg_fmt;
    _ = &fmt;
    const idx: c_int = rb_scan_args_var_idx(fmt);
    _ = &idx;
    return idx + @intFromBool(@as(c_int, @bitCast(@as(c_uint, (blk: {
        const tmp = idx;
        if (tmp >= 0) break :blk fmt + @as(usize, @intCast(tmp)) else break :blk fmt - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*))) == @as(c_int, '*'));
}
pub inline fn rb_scan_args_n_trail(arg_fmt: [*c]const u8) c_int {
    var fmt = arg_fmt;
    _ = &fmt;
    const idx: c_int = rb_scan_args_trail_idx(fmt);
    _ = &idx;
    return if (@as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, (blk: {
        const tmp = idx;
        if (tmp >= 0) break :blk fmt + @as(usize, @intCast(tmp)) else break :blk fmt - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*))) - @as(c_int, '0')))))))) < @as(c_int, 10)) @as(c_int, @bitCast(@as(c_uint, (blk: {
        const tmp = idx;
        if (tmp >= 0) break :blk fmt + @as(usize, @intCast(tmp)) else break :blk fmt - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*))) - @as(c_int, '0') else @as(c_int, 0);
}
pub inline fn rb_scan_args_hash_idx(arg_fmt: [*c]const u8) c_int {
    var fmt = arg_fmt;
    _ = &fmt;
    const idx: c_int = rb_scan_args_trail_idx(fmt);
    _ = &idx;
    return idx + @intFromBool(@as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, (blk: {
        const tmp = idx;
        if (tmp >= 0) break :blk fmt + @as(usize, @intCast(tmp)) else break :blk fmt - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*))) - @as(c_int, '0')))))))) < @as(c_int, 10));
}
pub inline fn rb_scan_args_f_hash(arg_fmt: [*c]const u8) bool {
    var fmt = arg_fmt;
    _ = &fmt;
    return @as(c_int, @bitCast(@as(c_uint, (blk: {
        const tmp = rb_scan_args_hash_idx(fmt);
        if (tmp >= 0) break :blk fmt + @as(usize, @intCast(tmp)) else break :blk fmt - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*))) == @as(c_int, ':');
}
pub inline fn rb_scan_args_block_idx(arg_fmt: [*c]const u8) c_int {
    var fmt = arg_fmt;
    _ = &fmt;
    const idx: c_int = rb_scan_args_hash_idx(fmt);
    _ = &idx;
    return idx + @intFromBool(@as(c_int, @bitCast(@as(c_uint, (blk: {
        const tmp = idx;
        if (tmp >= 0) break :blk fmt + @as(usize, @intCast(tmp)) else break :blk fmt - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*))) == @as(c_int, ':'));
}
pub inline fn rb_scan_args_f_block(arg_fmt: [*c]const u8) bool {
    var fmt = arg_fmt;
    _ = &fmt;
    return @as(c_int, @bitCast(@as(c_uint, (blk: {
        const tmp = rb_scan_args_block_idx(fmt);
        if (tmp >= 0) break :blk fmt + @as(usize, @intCast(tmp)) else break :blk fmt - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*))) == @as(c_int, '&');
}
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/scan_args.h:410:9: warning: TODO implement translation of stmt class GotoStmtClass

// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/scan_args.h:388:1: warning: unable to translate function, demoted to extern
pub extern fn rb_scan_args_set(arg_kw_flag: c_int, arg_argc: c_int, arg_argv: [*c]const VALUE, arg_n_lead: c_int, arg_n_opt: c_int, arg_n_trail: c_int, arg_f_var: bool, arg_f_hash: bool, arg_f_block: bool, arg_vars: [*c][*c]VALUE, arg_fmt: [*c]const u8, arg_varc: c_int) c_int;
pub extern fn rb_sym2id(obj: VALUE) ID;
pub extern fn rb_id2sym(id: ID) VALUE;
pub extern fn rb_intern(name: [*c]const u8) ID;
pub extern fn rb_intern2(name: [*c]const u8, len: c_long) ID;
pub extern fn rb_intern_str(str: VALUE) ID;
pub extern fn rb_id2name(id: ID) [*c]const u8;
pub extern fn rb_check_id(namep: [*c]volatile VALUE) ID;
pub extern fn rb_to_id(str: VALUE) ID;
pub extern fn rb_id2str(id: ID) VALUE;
pub extern fn rb_sym2str(symbol: VALUE) VALUE;
pub extern fn rb_to_symbol(name: VALUE) VALUE;
pub extern fn rb_check_symbol(namep: [*c]volatile VALUE) VALUE;
pub fn rb_intern_const(arg_str: [*c]const u8) callconv(.c) ID {
    var str = arg_str;
    _ = &str;
    var len: usize = strlen(str);
    _ = &len;
    return rb_intern2(str, @as(c_long, @bitCast(len)));
}
pub fn rbimpl_intern_const(arg_ptr: [*c]ID, arg_str: [*c]const u8) callconv(.c) ID {
    var ptr = arg_ptr;
    _ = &ptr;
    var str = arg_str;
    _ = &str;
    while (!(ptr.* != 0)) {
        ptr.* = rb_intern_const(str);
    }
    return ptr.*;
}
pub const rb_gvar_getter_t = fn (ID, [*c]VALUE) callconv(.c) VALUE;
pub const rb_gvar_setter_t = fn (VALUE, ID, [*c]VALUE) callconv(.c) void;
pub const rb_gvar_marker_t = fn ([*c]VALUE) callconv(.c) void;
pub const rb_gvar_undef_getter = @compileError("unable to resolve function type .Elaborated");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/variable.h:62:18
pub const rb_gvar_undef_setter = @compileError("unable to resolve function type .Elaborated");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/variable.h:71:18
pub const rb_gvar_undef_marker = @compileError("unable to resolve function type .Elaborated");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/variable.h:80:18
pub const rb_gvar_val_getter = @compileError("unable to resolve function type .Elaborated");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/variable.h:87:18
pub const rb_gvar_val_setter = @compileError("unable to resolve function type .Elaborated");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/variable.h:94:18
pub const rb_gvar_val_marker = @compileError("unable to resolve function type .Elaborated");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/variable.h:101:18
pub const rb_gvar_var_getter = @compileError("unable to resolve function type .Elaborated");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/variable.h:110:18
pub const rb_gvar_var_setter = @compileError("unable to resolve function type .Elaborated");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/variable.h:119:18
pub const rb_gvar_var_marker = @compileError("unable to resolve function type .Elaborated");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/variable.h:128:18
pub extern fn rb_gvar_readonly_setter(VALUE, ID, [*c]VALUE) noreturn;
pub extern fn rb_define_variable(name: [*c]const u8, @"var": [*c]VALUE) void;
pub extern fn rb_define_virtual_variable(name: [*c]const u8, getter: ?*const rb_gvar_getter_t, setter: ?*const rb_gvar_setter_t) void;
pub extern fn rb_define_hooked_variable(name: [*c]const u8, @"var": [*c]VALUE, getter: ?*const rb_gvar_getter_t, setter: ?*const rb_gvar_setter_t) void;
pub extern fn rb_define_readonly_variable(name: [*c]const u8, @"var": [*c]const VALUE) void;
pub extern fn rb_define_const(klass: VALUE, name: [*c]const u8, val: VALUE) void;
pub extern fn rb_define_global_const(name: [*c]const u8, val: VALUE) void;
pub extern fn rb_deprecate_constant(mod: VALUE, name: [*c]const u8) void;
pub extern fn rb_gv_set(name: [*c]const u8, val: VALUE) VALUE;
pub extern fn rb_gv_get(name: [*c]const u8) VALUE;
pub extern fn rb_iv_get(obj: VALUE, name: [*c]const u8) VALUE;
pub extern fn rb_iv_set(obj: VALUE, name: [*c]const u8, val: VALUE) VALUE;
pub extern fn rb_get_path(obj: VALUE) VALUE;
pub extern fn rb_get_path_no_checksafe(VALUE) VALUE;
pub extern fn rb_varargs_bad_length(c_int, c_int) c_int;
pub extern fn rb_class2name(klass: VALUE) [*c]const u8;
pub extern fn rb_obj_classname(obj: VALUE) [*c]const u8;
pub extern fn rb_p(obj: VALUE) void;
pub extern fn rb_equal(lhs: VALUE, rhs: VALUE) VALUE;
pub extern fn rb_require(feature: [*c]const u8) VALUE;
pub extern fn rb_big_new(len: usize, sign: c_int) VALUE;
pub extern fn rb_bigzero_p(x: VALUE) c_int;
pub extern fn rb_big_clone(num: VALUE) VALUE;
pub extern fn rb_big_2comp(num: VALUE) void;
pub extern fn rb_big_norm(x: VALUE) VALUE;
pub extern fn rb_big_resize(big: VALUE, len: usize) void;
pub extern fn rb_cstr_to_inum(str: [*c]const u8, base: c_int, badcheck: c_int) VALUE;
pub extern fn rb_str_to_inum(str: VALUE, base: c_int, badcheck: c_int) VALUE;
pub extern fn rb_cstr2inum(str: [*c]const u8, base: c_int) VALUE;
pub extern fn rb_str2inum(str: VALUE, base: c_int) VALUE;
pub extern fn rb_big2str(x: VALUE, base: c_int) VALUE;
pub extern fn rb_big2long(x: VALUE) c_long;
pub extern fn rb_big2ulong(x: VALUE) c_ulong;
pub extern fn rb_big2ll(VALUE) c_longlong;
pub extern fn rb_big2ull(VALUE) c_ulonglong;
pub extern fn rb_big_pack(val: VALUE, buf: [*c]c_ulong, num_longs: c_long) void;
pub extern fn rb_big_unpack(buf: [*c]c_ulong, num_longs: c_long) VALUE;
pub extern fn rb_uv_to_utf8(buf: [*c]u8, uv: c_ulong) c_int;
pub extern fn rb_dbl2big(d: f64) VALUE;
pub extern fn rb_big2dbl(x: VALUE) f64;
pub extern fn rb_big_cmp(lhs: VALUE, rhs: VALUE) VALUE;
pub extern fn rb_big_eq(lhs: VALUE, rhs: VALUE) VALUE;
pub extern fn rb_big_eql(lhs: VALUE, rhs: VALUE) VALUE;
pub extern fn rb_big_plus(x: VALUE, y: VALUE) VALUE;
pub extern fn rb_big_minus(x: VALUE, y: VALUE) VALUE;
pub extern fn rb_big_mul(x: VALUE, y: VALUE) VALUE;
pub extern fn rb_big_div(x: VALUE, y: VALUE) VALUE;
pub extern fn rb_big_idiv(x: VALUE, y: VALUE) VALUE;
pub extern fn rb_big_modulo(x: VALUE, y: VALUE) VALUE;
pub extern fn rb_big_divmod(x: VALUE, y: VALUE) VALUE;
pub extern fn rb_big_pow(x: VALUE, y: VALUE) VALUE;
pub extern fn rb_big_and(x: VALUE, y: VALUE) VALUE;
pub extern fn rb_big_or(x: VALUE, y: VALUE) VALUE;
pub extern fn rb_big_xor(x: VALUE, y: VALUE) VALUE;
pub extern fn rb_big_lshift(x: VALUE, y: VALUE) VALUE;
pub extern fn rb_big_rshift(x: VALUE, y: VALUE) VALUE;
pub extern fn rb_integer_pack(val: VALUE, words: ?*anyopaque, numwords: usize, wordsize: usize, nails: usize, flags: c_int) c_int;
pub extern fn rb_integer_unpack(words: ?*const anyopaque, numwords: usize, wordsize: usize, nails: usize, flags: c_int) VALUE;
pub extern fn rb_absint_size(val: VALUE, nlz_bits_ret: [*c]c_int) usize;
pub extern fn rb_absint_numwords(val: VALUE, word_numbits: usize, nlz_bits_ret: [*c]usize) usize;
pub extern fn rb_absint_singlebit_p(val: VALUE) c_int;
pub extern fn rb_cmpint(val: VALUE, a: VALUE, b: VALUE) c_int;
pub extern fn rb_cmperr(a: VALUE, b: VALUE) noreturn;
pub extern fn rb_complex_raw(real: VALUE, imag: VALUE) VALUE;
pub extern fn rb_complex_new(real: VALUE, imag: VALUE) VALUE;
pub extern fn rb_complex_new_polar(abs: VALUE, arg: VALUE) VALUE;
pub extern fn rb_complex_polar(abs: VALUE, arg: VALUE) VALUE;
pub extern fn rb_complex_real(z: VALUE) VALUE;
pub extern fn rb_complex_imag(z: VALUE) VALUE;
pub extern fn rb_complex_plus(x: VALUE, y: VALUE) VALUE;
pub extern fn rb_complex_minus(x: VALUE, y: VALUE) VALUE;
pub extern fn rb_complex_mul(x: VALUE, y: VALUE) VALUE;
pub extern fn rb_complex_div(x: VALUE, y: VALUE) VALUE;
pub extern fn rb_complex_uminus(z: VALUE) VALUE;
pub extern fn rb_complex_conjugate(z: VALUE) VALUE;
pub extern fn rb_complex_abs(z: VALUE) VALUE;
pub extern fn rb_complex_arg(z: VALUE) VALUE;
pub extern fn rb_complex_pow(base: VALUE, exp: VALUE) VALUE;
pub extern fn rb_dbl_complex_new(real: f64, imag: f64) VALUE;
pub extern fn rb_Complex(real: VALUE, imag: VALUE) VALUE;
pub extern fn rb_fiber_new(func: rb_block_call_func_t, callback_obj: VALUE) VALUE;
pub extern fn rb_fiber_new_storage(func: rb_block_call_func_t, callback_obj: VALUE, storage: VALUE) VALUE;
pub extern fn rb_fiber_current() VALUE;
pub extern fn rb_fiber_alive_p(fiber: VALUE) VALUE;
pub extern fn rb_obj_is_fiber(obj: VALUE) VALUE;
pub extern fn rb_fiber_resume(fiber: VALUE, argc: c_int, argv: [*c]const VALUE) VALUE;
pub extern fn rb_fiber_resume_kw(fiber: VALUE, argc: c_int, argv: [*c]const VALUE, kw_splat: c_int) VALUE;
pub extern fn rb_fiber_yield(argc: c_int, argv: [*c]const VALUE) VALUE;
pub extern fn rb_fiber_yield_kw(argc: c_int, argv: [*c]const VALUE, kw_splat: c_int) VALUE;
pub extern fn rb_fiber_transfer(fiber: VALUE, argc: c_int, argv: [*c]const VALUE) VALUE;
pub extern fn rb_fiber_transfer_kw(fiber: VALUE, argc: c_int, argv: [*c]const VALUE, kw_splat: c_int) VALUE;
pub extern fn rb_fiber_raise(fiber: VALUE, argc: c_int, argv: [*c]VALUE) VALUE;
pub extern fn rb_dir_getwd() VALUE;
pub extern fn rb_enum_values_pack(argc: c_int, argv: [*c]const VALUE) VALUE;
pub extern fn rb_exc_raise(exc: VALUE) noreturn;
pub extern fn rb_exc_fatal(exc: VALUE) noreturn;
pub extern fn rb_f_exit(argc: c_int, argv: [*c]const VALUE) noreturn;
pub extern fn rb_f_abort(argc: c_int, argv: [*c]const VALUE) noreturn;
pub extern fn rb_interrupt() noreturn;
pub extern fn rb_frame_this_func() ID;
pub extern fn rb_jump_tag(state: c_int) noreturn;
pub extern fn rb_obj_call_init(obj: VALUE, argc: c_int, argv: [*c]const VALUE) void;
pub extern fn rb_obj_call_init_kw(VALUE, c_int, [*c]const VALUE, c_int) void;
pub extern fn rb_frame_callee() ID;
pub extern fn rb_make_exception(argc: c_int, argv: [*c]const VALUE) VALUE;
pub extern fn rb_set_end_proc(func: ?*const fn (VALUE) callconv(.c) void, arg: VALUE) void;
pub const rb_enumerator_size_func = fn (VALUE, VALUE, VALUE) callconv(.c) VALUE;
pub const rb_arithmetic_sequence_components_t = extern struct {
    begin: VALUE = @import("std").mem.zeroes(VALUE),
    end: VALUE = @import("std").mem.zeroes(VALUE),
    step: VALUE = @import("std").mem.zeroes(VALUE),
    exclude_end: c_int = @import("std").mem.zeroes(c_int),
};
pub extern fn rb_enumeratorize(recv: VALUE, meth: VALUE, argc: c_int, argv: [*c]const VALUE) VALUE;
pub extern fn rb_enumeratorize_with_size(recv: VALUE, meth: VALUE, argc: c_int, argv: [*c]const VALUE, func: ?*const rb_enumerator_size_func) VALUE;
pub extern fn rb_enumeratorize_with_size_kw(recv: VALUE, meth: VALUE, argc: c_int, argv: [*c]const VALUE, func: ?*const rb_enumerator_size_func, kw_splat: c_int) VALUE;
pub extern fn rb_arithmetic_sequence_extract(as: VALUE, buf: [*c]rb_arithmetic_sequence_components_t) c_int;
pub extern fn rb_arithmetic_sequence_beg_len_step(as: VALUE, begp: [*c]c_long, lenp: [*c]c_long, stepp: [*c]c_long, len: c_long, err: c_int) VALUE;
pub extern fn rb_file_s_expand_path(argc: c_int, argv: [*c]const VALUE) VALUE;
pub extern fn rb_file_expand_path(fname: VALUE, dname: VALUE) VALUE;
pub extern fn rb_file_s_absolute_path(argc: c_int, argv: [*c]const VALUE) VALUE;
pub extern fn rb_file_absolute_path(fname: VALUE, dname: VALUE) VALUE;
pub extern fn rb_file_dirname(fname: VALUE) VALUE;
pub extern fn rb_find_file_ext(feature: [*c]VALUE, exts: [*c]const [*c]const u8) c_int;
pub extern fn rb_find_file(path: VALUE) VALUE;
pub extern fn rb_file_directory_p(@"_": VALUE, path: VALUE) VALUE;
pub extern fn rb_str_encode_ospath(path: VALUE) VALUE;
pub extern fn rb_is_absolute_path(path: [*c]const u8) c_int;
pub extern fn rb_file_size(file: VALUE) off_t;
pub extern var rb_fs: VALUE;
pub extern var rb_output_fs: VALUE;
pub extern var rb_rs: VALUE;
pub extern var rb_default_rs: VALUE;
pub extern var rb_output_rs: VALUE;
pub extern fn rb_io_write(io: VALUE, str: VALUE) VALUE;
pub extern fn rb_io_gets(io: VALUE) VALUE;
pub extern fn rb_io_getbyte(io: VALUE) VALUE;
pub extern fn rb_io_ungetc(io: VALUE, c: VALUE) VALUE;
pub extern fn rb_io_ungetbyte(io: VALUE, b: VALUE) VALUE;
pub extern fn rb_io_close(io: VALUE) VALUE;
pub extern fn rb_io_flush(io: VALUE) VALUE;
pub extern fn rb_io_eof(io: VALUE) VALUE;
pub extern fn rb_io_binmode(io: VALUE) VALUE;
pub extern fn rb_io_ascii8bit_binmode(io: VALUE) VALUE;
pub extern fn rb_io_addstr(io: VALUE, str: VALUE) VALUE;
pub extern fn rb_io_printf(argc: c_int, argv: [*c]const VALUE, io: VALUE) VALUE;
pub extern fn rb_io_print(argc: c_int, argv: [*c]const VALUE, io: VALUE) VALUE;
pub extern fn rb_io_puts(argc: c_int, argv: [*c]const VALUE, io: VALUE) VALUE;
pub extern fn rb_io_fdopen(fd: c_int, flags: c_int, path: [*c]const u8) VALUE;
pub extern fn rb_file_open(fname: [*c]const u8, fmode: [*c]const u8) VALUE;
pub extern fn rb_file_open_str(fname: VALUE, fmode: [*c]const u8) VALUE;
pub extern fn rb_gets() VALUE;
pub extern fn rb_write_error(str: [*c]const u8) void;
pub extern fn rb_write_error2(str: [*c]const u8, len: c_long) void;
pub extern fn rb_close_before_exec(lowfd: c_int, maxhint: c_int, noclose_fds: VALUE) void;
pub extern fn rb_pipe(pipes: [*c]c_int) c_int;
pub extern fn rb_reserved_fd_p(fd: c_int) c_int;
pub extern fn rb_cloexec_open(pathname: [*c]const u8, flags: c_int, mode: mode_t) c_int;
pub extern fn rb_cloexec_dup(oldfd: c_int) c_int;
pub extern fn rb_cloexec_dup2(oldfd: c_int, newfd: c_int) c_int;
pub extern fn rb_cloexec_pipe(fildes: [*c]c_int) c_int;
pub extern fn rb_cloexec_fcntl_dupfd(fd: c_int, minfd: c_int) c_int;
pub extern fn rb_update_max_fd(fd: c_int) void;
pub extern fn rb_fd_fix_cloexec(fd: c_int) void;
pub extern fn rb_load(path: VALUE, wrap: c_int) void;
pub extern fn rb_load_protect(path: VALUE, wrap: c_int, state: [*c]c_int) void;
pub extern fn rb_provided(feature: [*c]const u8) c_int;
pub extern fn rb_feature_provided(feature: [*c]const u8, loading: [*c][*c]const u8) c_int;
pub extern fn rb_provide(feature: [*c]const u8) void;
pub extern fn rb_f_require(self: VALUE, feature: VALUE) VALUE;
pub extern fn rb_require_string(feature: VALUE) VALUE;
pub extern fn rb_ext_resolve_symbol(feature: [*c]const u8, symbol: [*c]const u8) ?*anyopaque;
pub extern fn rb_ext_ractor_safe(flag: bool) void;
pub extern fn rb_marshal_dump(obj: VALUE, port: VALUE) VALUE;
pub extern fn rb_marshal_load(port: VALUE) VALUE;
pub extern fn rb_marshal_define_compat(newclass: VALUE, oldclass: VALUE, dumper: ?*const fn (VALUE) callconv(.c) VALUE, loader: ?*const fn (VALUE, VALUE) callconv(.c) VALUE) void;
pub extern fn rb_num_zerodiv() noreturn;
pub extern fn rb_num_coerce_bin(lhs: VALUE, rhs: VALUE, op: ID) VALUE;
pub extern fn rb_num_coerce_cmp(lhs: VALUE, rhs: VALUE, op: ID) VALUE;
pub extern fn rb_num_coerce_relop(lhs: VALUE, rhs: VALUE, op: ID) VALUE;
pub extern fn rb_num_coerce_bit(lhs: VALUE, rhs: VALUE, op: ID) VALUE;
pub extern fn rb_num2fix(val: VALUE) VALUE;
pub extern fn rb_fix2str(val: VALUE, base: c_int) VALUE;
pub extern fn rb_dbl_cmp(lhs: f64, rhs: f64) VALUE;
pub extern fn rb_int_positive_pow(x: c_long, y: c_ulong) VALUE;
pub extern fn rb_class_new_instance_pass_kw(argc: c_int, argv: [*c]const VALUE, klass: VALUE) VALUE;
pub extern fn rb_class_new_instance(argc: c_int, argv: [*c]const VALUE, klass: VALUE) VALUE;
pub extern fn rb_class_new_instance_kw(argc: c_int, argv: [*c]const VALUE, klass: VALUE, kw_splat: c_int) VALUE;
pub extern fn rb_eql(lhs: VALUE, rhs: VALUE) c_int;
pub extern fn rb_any_to_s(obj: VALUE) VALUE;
pub extern fn rb_inspect(obj: VALUE) VALUE;
pub extern fn rb_obj_is_instance_of(obj: VALUE, klass: VALUE) VALUE;
pub extern fn rb_obj_is_kind_of(obj: VALUE, klass: VALUE) VALUE;
pub extern fn rb_obj_alloc(klass: VALUE) VALUE;
pub extern fn rb_obj_clone(obj: VALUE) VALUE;
pub extern fn rb_obj_dup(obj: VALUE) VALUE;
pub extern fn rb_obj_init_copy(src: VALUE, dst: VALUE) VALUE;
pub extern fn rb_obj_freeze(obj: VALUE) VALUE;
pub extern fn rb_obj_frozen_p(obj: VALUE) VALUE;
pub extern fn rb_obj_id(obj: VALUE) VALUE;
pub extern fn rb_memory_id(obj: VALUE) VALUE;
pub extern fn rb_class_real(klass: VALUE) VALUE;
pub extern fn rb_class_inherited_p(scion: VALUE, ascendant: VALUE) VALUE;
pub extern fn rb_class_superclass(klass: VALUE) VALUE;
pub extern fn rb_convert_type(val: VALUE, @"type": c_int, name: [*c]const u8, mid: [*c]const u8) VALUE;
pub extern fn rb_check_convert_type(val: VALUE, @"type": c_int, name: [*c]const u8, mid: [*c]const u8) VALUE;
pub extern fn rb_check_to_integer(val: VALUE, mid: [*c]const u8) VALUE;
pub extern fn rb_check_to_float(val: VALUE) VALUE;
pub extern fn rb_to_int(val: VALUE) VALUE;
pub extern fn rb_check_to_int(val: VALUE) VALUE;
pub extern fn rb_Integer(val: VALUE) VALUE;
pub extern fn rb_to_float(val: VALUE) VALUE;
pub extern fn rb_Float(val: VALUE) VALUE;
pub extern fn rb_String(val: VALUE) VALUE;
pub extern fn rb_Array(val: VALUE) VALUE;
pub extern fn rb_Hash(val: VALUE) VALUE;
pub extern fn rb_cstr_to_dbl(str: [*c]const u8, mode: c_int) f64;
pub extern fn rb_str_to_dbl(str: VALUE, mode: c_int) f64;
pub extern fn rb_id_attrset(id: ID) ID;
pub extern fn rb_is_const_id(id: ID) c_int;
pub extern fn rb_is_global_id(id: ID) c_int;
pub extern fn rb_is_instance_id(id: ID) c_int;
pub extern fn rb_is_attrset_id(id: ID) c_int;
pub extern fn rb_is_class_id(id: ID) c_int;
pub extern fn rb_is_local_id(id: ID) c_int;
pub extern fn rb_is_junk_id(ID) c_int;
pub extern fn rb_symname_p(str: [*c]const u8) c_int;
pub extern fn rb_backref_get() VALUE;
pub extern fn rb_backref_set(md: VALUE) void;
pub extern fn rb_lastline_get() VALUE;
pub extern fn rb_lastline_set(str: VALUE) void;
pub extern fn rb_sym_all_symbols() VALUE;
pub extern fn rb_process_status_wait(pid: pid_t, flags: c_int) VALUE;
pub extern fn rb_last_status_set(status: c_int, pid: pid_t) void;
pub extern fn rb_last_status_get() VALUE;
pub extern fn rb_proc_exec(cmd: [*c]const u8) c_int;
pub extern fn rb_f_exec(argc: c_int, argv: [*c]const VALUE) noreturn;
pub extern fn rb_waitpid(pid: pid_t, status: [*c]c_int, flags: c_int) pid_t;
pub extern fn rb_syswait(pid: pid_t) void;
pub extern fn rb_spawn(argc: c_int, argv: [*c]const VALUE) pid_t;
pub extern fn rb_spawn_err(argc: c_int, argv: [*c]const VALUE, errbuf: [*c]u8, buflen: usize) pid_t;
pub extern fn rb_proc_times(@"_": VALUE) VALUE;
pub extern fn rb_detach_process(pid: pid_t) VALUE;
pub extern fn rb_genrand_int32() c_uint;
pub extern fn rb_genrand_real() f64;
pub extern fn rb_reset_random_seed() void;
pub extern fn rb_random_bytes(rnd: VALUE, n: c_long) VALUE;
pub extern fn rb_random_int32(rnd: VALUE) c_uint;
pub extern fn rb_random_real(rnd: VALUE) f64;
pub extern fn rb_random_ulong_limited(rnd: VALUE, limit: c_ulong) c_ulong;
pub extern fn rb_genrand_ulong_limited(i: c_ulong) c_ulong;
pub extern fn rb_range_new(beg: VALUE, end: VALUE, excl: c_int) VALUE;
pub extern fn rb_range_beg_len(range: VALUE, begp: [*c]c_long, lenp: [*c]c_long, len: c_long, err: c_int) VALUE;
pub extern fn rb_range_values(range: VALUE, begp: [*c]VALUE, endp: [*c]VALUE, exclp: [*c]c_int) c_int;
pub extern fn rb_rational_raw(num: VALUE, den: VALUE) VALUE;
pub extern fn rb_rational_new(num: VALUE, den: VALUE) VALUE;
pub extern fn rb_Rational(num: VALUE, den: VALUE) VALUE;
pub extern fn rb_rational_num(rat: VALUE) VALUE;
pub extern fn rb_rational_den(rat: VALUE) VALUE;
pub extern fn rb_flt_rationalize_with_prec(flt: VALUE, prec: VALUE) VALUE;
pub extern fn rb_flt_rationalize(flt: VALUE) VALUE;
pub extern fn rb_memcicmp(s1: ?*const anyopaque, s2: ?*const anyopaque, n: c_long) c_int;
pub extern fn rb_match_busy(md: VALUE) void;
pub extern fn rb_reg_nth_defined(n: c_int, md: VALUE) VALUE;
pub extern fn rb_reg_nth_match(n: c_int, md: VALUE) VALUE;
pub extern fn rb_reg_backref_number(match: VALUE, backref: VALUE) c_int;
pub extern fn rb_reg_last_match(md: VALUE) VALUE;
pub extern fn rb_reg_match_pre(md: VALUE) VALUE;
pub extern fn rb_reg_match_post(md: VALUE) VALUE;
pub extern fn rb_reg_match_last(md: VALUE) VALUE;
pub extern fn rb_reg_new_str(src: VALUE, opts: c_int) VALUE;
pub extern fn rb_reg_new(src: [*c]const u8, len: c_long, opts: c_int) VALUE;
pub extern fn rb_reg_alloc() VALUE;
pub extern fn rb_reg_init_str(re: VALUE, s: VALUE, options: c_int) VALUE;
pub extern fn rb_reg_match(re: VALUE, str: VALUE) VALUE;
pub extern fn rb_reg_match2(re: VALUE) VALUE;
pub extern fn rb_reg_options(re: VALUE) c_int;
pub extern var rb_argv0: VALUE;
pub extern fn rb_get_argv() VALUE;
pub extern fn rb_load_file(file: [*c]const u8) ?*anyopaque;
pub extern fn rb_load_file_str(file: VALUE) ?*anyopaque;
pub const rb_fdset_t = extern struct {
    maxfd: c_int = @import("std").mem.zeroes(c_int),
    fdset: [*c]fd_set = @import("std").mem.zeroes([*c]fd_set),
};
pub extern fn rb_fd_init(f: [*c]rb_fdset_t) void;
pub extern fn rb_fd_term(f: [*c]rb_fdset_t) void;
pub extern fn rb_fd_zero(f: [*c]rb_fdset_t) void;
pub extern fn rb_fd_set(fd: c_int, f: [*c]rb_fdset_t) void;
pub extern fn rb_fd_clr(fd: c_int, f: [*c]rb_fdset_t) void;
pub extern fn rb_fd_isset(fd: c_int, f: [*c]const rb_fdset_t) c_int;
pub extern fn rb_fd_copy(dst: [*c]rb_fdset_t, src: [*c]const fd_set, max: c_int) void;
pub extern fn rb_fd_dup(dst: [*c]rb_fdset_t, src: [*c]const rb_fdset_t) void;
pub extern fn rb_fd_select(nfds: c_int, rfds: [*c]rb_fdset_t, wfds: [*c]rb_fdset_t, efds: [*c]rb_fdset_t, timeout: [*c]struct_timeval) c_int;
pub fn rb_fd_ptr(arg_f: [*c]const rb_fdset_t) callconv(.c) [*c]fd_set {
    var f = arg_f;
    _ = &f;
    return f.*.fdset;
}
pub fn rb_fd_max(arg_f: [*c]const rb_fdset_t) callconv(.c) c_int {
    var f = arg_f;
    _ = &f;
    return f.*.maxfd;
}
pub extern fn rb_thread_fd_select(nfds: c_int, rfds: [*c]rb_fdset_t, wfds: [*c]rb_fdset_t, efds: [*c]rb_fdset_t, timeout: [*c]struct_timeval) c_int;
pub extern fn rb_set_foreach(set: VALUE, func: ?*const fn (VALUE, VALUE) callconv(.c) c_int, arg: VALUE) void;
pub extern fn rb_set_new() VALUE;
pub extern fn rb_set_new_capa(capa: usize) VALUE;
pub extern fn rb_set_lookup(set: VALUE, element: VALUE) bool;
pub extern fn rb_set_add(set: VALUE, element: VALUE) bool;
pub extern fn rb_set_clear(set: VALUE) VALUE;
pub extern fn rb_set_delete(set: VALUE, element: VALUE) bool;
pub extern fn rb_set_size(set: VALUE) usize;
pub extern fn rb_f_kill(argc: c_int, argv: [*c]const VALUE) VALUE;
pub extern fn ruby_signal_name(signo: c_int) [*c]const u8;
pub extern fn ruby_default_signal(sig: c_int) void;
pub extern fn rb_f_sprintf(argc: c_int, argv: [*c]const VALUE) VALUE;
pub extern fn rb_sprintf(fmt: [*c]const u8, ...) VALUE;
pub extern fn rb_vsprintf(fmt: [*c]const u8, ap: [*c]struct___va_list_tag_1) VALUE;
pub extern fn rb_str_catf(dst: VALUE, fmt: [*c]const u8, ...) VALUE;
pub extern fn rb_str_vcatf(dst: VALUE, fmt: [*c]const u8, ap: [*c]struct___va_list_tag_1) VALUE;
pub extern fn rb_str_format(argc: c_int, argv: [*c]const VALUE, fmt: VALUE) VALUE;
pub extern fn rb_str_new(ptr: [*c]const u8, len: c_long) VALUE;
pub extern fn rb_str_new_cstr(ptr: [*c]const u8) VALUE;
pub extern fn rb_str_new_shared(str: VALUE) VALUE;
pub extern fn rb_str_new_frozen(str: VALUE) VALUE;
pub extern fn rb_str_new_with_class(obj: VALUE, ptr: [*c]const u8, len: c_long) VALUE;
pub extern fn rb_external_str_new(ptr: [*c]const u8, len: c_long) VALUE;
pub extern fn rb_external_str_new_cstr(ptr: [*c]const u8) VALUE;
pub extern fn rb_locale_str_new(ptr: [*c]const u8, len: c_long) VALUE;
pub extern fn rb_locale_str_new_cstr(ptr: [*c]const u8) VALUE;
pub extern fn rb_filesystem_str_new(ptr: [*c]const u8, len: c_long) VALUE;
pub extern fn rb_filesystem_str_new_cstr(ptr: [*c]const u8) VALUE;
pub extern fn rb_str_buf_new(capa: c_long) VALUE;
pub extern fn rb_str_buf_new_cstr(ptr: [*c]const u8) VALUE;
pub extern fn rb_str_tmp_new(len: c_long) VALUE;
pub extern fn rb_usascii_str_new(ptr: [*c]const u8, len: c_long) VALUE;
pub extern fn rb_usascii_str_new_cstr(ptr: [*c]const u8) VALUE;
pub extern fn rb_utf8_str_new(ptr: [*c]const u8, len: c_long) VALUE;
pub extern fn rb_utf8_str_new_cstr(ptr: [*c]const u8) VALUE;
pub extern fn rb_str_new_static(ptr: [*c]const u8, len: c_long) VALUE;
pub extern fn rb_usascii_str_new_static(ptr: [*c]const u8, len: c_long) VALUE;
pub extern fn rb_utf8_str_new_static(ptr: [*c]const u8, len: c_long) VALUE;
pub extern fn rb_str_to_interned_str(str: VALUE) VALUE;
pub extern fn rb_interned_str(ptr: [*c]const u8, len: c_long) VALUE;
pub extern fn rb_interned_str_cstr(ptr: [*c]const u8) VALUE;
pub extern fn rb_str_free(str: VALUE) void;
pub extern fn rb_str_shared_replace(dst: VALUE, src: VALUE) void;
pub extern fn rb_str_buf_append(dst: VALUE, src: VALUE) VALUE;
pub extern fn rb_str_buf_cat(VALUE, [*c]const u8, c_long) VALUE;
pub extern fn rb_str_buf_cat2(VALUE, [*c]const u8) VALUE;
pub extern fn rb_str_buf_cat_ascii(dst: VALUE, src: [*c]const u8) VALUE;
pub extern fn rb_obj_as_string(obj: VALUE) VALUE;
pub extern fn rb_check_string_type(obj: VALUE) VALUE;
pub extern fn rb_must_asciicompat(obj: VALUE) void;
pub extern fn rb_str_dup(str: VALUE) VALUE;
pub extern fn rb_str_resurrect(str: VALUE) VALUE;
pub extern fn rb_str_locktmp(str: VALUE) VALUE;
pub extern fn rb_str_unlocktmp(str: VALUE) VALUE;
pub extern fn rb_str_dup_frozen(VALUE) VALUE;
pub extern fn rb_str_plus(lhs: VALUE, rhs: VALUE) VALUE;
pub extern fn rb_str_times(str: VALUE, num: VALUE) VALUE;
pub extern fn rb_str_sublen(str: VALUE, pos: c_long) c_long;
pub extern fn rb_str_substr(str: VALUE, beg: c_long, len: c_long) VALUE;
pub extern fn rb_str_subseq(str: VALUE, beg: c_long, len: c_long) VALUE;
pub extern fn rb_str_subpos(str: VALUE, beg: c_long, len: [*c]c_long) [*c]u8;
pub extern fn rb_str_modify_expand(str: VALUE, capa: c_long) void;
pub extern fn rb_str_freeze(str: VALUE) VALUE;
pub extern fn rb_str_set_len(str: VALUE, len: c_long) void;
pub extern fn rb_str_resize(str: VALUE, len: c_long) VALUE;
pub extern fn rb_str_cat(dst: VALUE, src: [*c]const u8, srclen: c_long) VALUE;
pub extern fn rb_str_cat_cstr(dst: VALUE, src: [*c]const u8) VALUE;
pub extern fn rb_str_cat2(VALUE, [*c]const u8) VALUE;
pub extern fn rb_str_append(dst: VALUE, src: VALUE) VALUE;
pub extern fn rb_str_concat(dst: VALUE, src: VALUE) VALUE;
pub extern fn rb_memhash(ptr: ?*const anyopaque, len: c_long) st_index_t;
pub extern fn rb_hash_start(i: st_index_t) st_index_t;
pub extern fn rb_str_hash(str: VALUE) st_index_t;
pub extern fn rb_str_hash_cmp(str1: VALUE, str2: VALUE) c_int;
pub extern fn rb_str_comparable(str1: VALUE, str2: VALUE) c_int;
pub extern fn rb_str_cmp(lhs: VALUE, rhs: VALUE) c_int;
pub extern fn rb_str_equal(str1: VALUE, str2: VALUE) VALUE;
pub extern fn rb_str_drop_bytes(str: VALUE, len: c_long) VALUE;
pub extern fn rb_str_update(dst: VALUE, beg: c_long, len: c_long, src: VALUE) void;
pub extern fn rb_str_replace(dst: VALUE, src: VALUE) VALUE;
pub extern fn rb_str_inspect(str: VALUE) VALUE;
pub extern fn rb_str_dump(str: VALUE) VALUE;
pub extern fn rb_str_split(str: VALUE, delim: [*c]const u8) VALUE;
pub const rb_str_setter = @compileError("unable to resolve function type .Elaborated");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/intern/string.h:1145:18
pub extern fn rb_str_intern(str: VALUE) VALUE;
pub extern fn rb_sym_to_s(sym: VALUE) VALUE;
pub extern fn rb_str_strlen(str: VALUE) c_long;
pub extern fn rb_str_length(VALUE) VALUE;
pub extern fn rb_str_offset(str: VALUE, pos: c_long) c_long;
pub extern fn rb_str_capacity(str: VALUE) usize;
pub extern fn rb_str_ellipsize(str: VALUE, len: c_long) VALUE;
pub extern fn rb_str_scrub(str: VALUE, repl: VALUE) VALUE;
pub extern fn rb_str_succ(orig: VALUE) VALUE;
pub fn rbimpl_strlen(arg_str: [*c]const u8) callconv(.c) c_long {
    var str = arg_str;
    _ = &str;
    return @as(c_long, @bitCast(strlen(str)));
}
pub fn rbimpl_str_new_cstr(arg_str: [*c]const u8) callconv(.c) VALUE {
    var str = arg_str;
    _ = &str;
    var len: c_long = rbimpl_strlen(str);
    _ = &len;
    return rb_str_new_static(str, len);
}
pub fn rbimpl_usascii_str_new_cstr(arg_str: [*c]const u8) callconv(.c) VALUE {
    var str = arg_str;
    _ = &str;
    var len: c_long = rbimpl_strlen(str);
    _ = &len;
    return rb_usascii_str_new_static(str, len);
}
pub fn rbimpl_utf8_str_new_cstr(arg_str: [*c]const u8) callconv(.c) VALUE {
    var str = arg_str;
    _ = &str;
    var len: c_long = rbimpl_strlen(str);
    _ = &len;
    return rb_utf8_str_new_static(str, len);
}
pub fn rbimpl_external_str_new_cstr(arg_str: [*c]const u8) callconv(.c) VALUE {
    var str = arg_str;
    _ = &str;
    var len: c_long = rbimpl_strlen(str);
    _ = &len;
    return rb_external_str_new(str, len);
}
pub fn rbimpl_locale_str_new_cstr(arg_str: [*c]const u8) callconv(.c) VALUE {
    var str = arg_str;
    _ = &str;
    var len: c_long = rbimpl_strlen(str);
    _ = &len;
    return rb_locale_str_new(str, len);
}
pub fn rbimpl_str_buf_new_cstr(arg_str: [*c]const u8) callconv(.c) VALUE {
    var str = arg_str;
    _ = &str;
    var len: c_long = rbimpl_strlen(str);
    _ = &len;
    var buf: VALUE = rb_str_buf_new(len);
    _ = &buf;
    return rb_str_buf_cat(buf, str, len);
}
pub fn rbimpl_str_cat_cstr(arg_buf: VALUE, arg_str: [*c]const u8) callconv(.c) VALUE {
    var buf = arg_buf;
    _ = &buf;
    var str = arg_str;
    _ = &str;
    var len: c_long = rbimpl_strlen(str);
    _ = &len;
    return rb_str_cat(buf, str, len);
}
pub fn rbimpl_exc_new_cstr(arg_exc: VALUE, arg_str: [*c]const u8) callconv(.c) VALUE {
    var exc = arg_exc;
    _ = &exc;
    var str = arg_str;
    _ = &str;
    var len: c_long = rbimpl_strlen(str);
    _ = &len;
    return rb_exc_new(exc, str, len);
}
pub extern fn rb_struct_new(klass: VALUE, ...) VALUE;
pub extern fn rb_struct_define(name: [*c]const u8, ...) VALUE;
pub extern fn rb_struct_define_under(space: VALUE, name: [*c]const u8, ...) VALUE;
pub extern fn rb_struct_alloc(klass: VALUE, values: VALUE) VALUE;
pub extern fn rb_struct_initialize(self: VALUE, values: VALUE) VALUE;
pub extern fn rb_struct_getmember(self: VALUE, key: ID) VALUE;
pub extern fn rb_struct_s_members(klass: VALUE) VALUE;
pub extern fn rb_struct_members(self: VALUE) VALUE;
pub extern fn rb_struct_alloc_noinit(klass: VALUE) VALUE;
pub extern fn rb_struct_define_without_accessor(name: [*c]const u8, super: VALUE, func: rb_alloc_func_t, ...) VALUE;
pub extern fn rb_struct_define_without_accessor_under(outer: VALUE, class_name: [*c]const u8, super: VALUE, alloc: rb_alloc_func_t, ...) VALUE;
pub extern fn rb_data_define(super: VALUE, ...) VALUE;
pub extern fn rb_thread_schedule() void;
pub extern fn rb_thread_wait_fd(fd: c_int) c_int;
pub extern fn rb_thread_fd_writable(fd: c_int) c_int;
pub extern fn rb_thread_fd_close(fd: c_int) void;
pub extern fn rb_thread_alone() c_int;
pub extern fn rb_thread_sleep(sec: c_int) void;
pub extern fn rb_thread_sleep_forever() void;
pub extern fn rb_thread_sleep_deadly() void;
pub extern fn rb_thread_stop() VALUE;
pub extern fn rb_thread_wakeup(thread: VALUE) VALUE;
pub extern fn rb_thread_wakeup_alive(thread: VALUE) VALUE;
pub extern fn rb_thread_run(thread: VALUE) VALUE;
pub extern fn rb_thread_kill(thread: VALUE) VALUE;
pub extern fn rb_thread_create(f: ?*const fn (?*anyopaque) callconv(.c) VALUE, g: ?*anyopaque) VALUE;
pub extern fn rb_thread_wait_for(time: struct_timeval) void;
pub extern fn rb_thread_current() VALUE;
pub extern fn rb_thread_main() VALUE;
pub extern fn rb_thread_local_aref(thread: VALUE, key: ID) VALUE;
pub extern fn rb_thread_local_aset(thread: VALUE, key: ID, val: VALUE) VALUE;
pub extern fn rb_thread_atfork() void;
pub extern fn rb_thread_atfork_before_exec() void;
pub extern fn rb_exec_recursive(f: ?*const fn (VALUE, VALUE, c_int) callconv(.c) VALUE, g: VALUE, h: VALUE) VALUE;
pub extern fn rb_exec_recursive_paired(f: ?*const fn (VALUE, VALUE, c_int) callconv(.c) VALUE, g: VALUE, p: VALUE, h: VALUE) VALUE;
pub extern fn rb_exec_recursive_outer(f: ?*const fn (VALUE, VALUE, c_int) callconv(.c) VALUE, g: VALUE, h: VALUE) VALUE;
pub extern fn rb_exec_recursive_paired_outer(f: ?*const fn (VALUE, VALUE, c_int) callconv(.c) VALUE, g: VALUE, p: VALUE, h: VALUE) VALUE;
pub const rb_unblock_function_t = fn (?*anyopaque) callconv(.c) void;
pub const rb_blocking_function_t = fn (?*anyopaque) callconv(.c) VALUE;
pub extern fn rb_thread_check_ints() void;
pub extern fn rb_thread_interrupted(thval: VALUE) c_int;
pub extern fn rb_mutex_new() VALUE;
pub extern fn rb_mutex_locked_p(mutex: VALUE) VALUE;
pub extern fn rb_mutex_trylock(mutex: VALUE) VALUE;
pub extern fn rb_mutex_lock(mutex: VALUE) VALUE;
pub extern fn rb_mutex_unlock(mutex: VALUE) VALUE;
pub extern fn rb_mutex_sleep(self: VALUE, timeout: VALUE) VALUE;
pub extern fn rb_mutex_synchronize(mutex: VALUE, func: ?*const fn (VALUE) callconv(.c) VALUE, arg: VALUE) VALUE;
pub extern fn rb_timespec_now(ts: [*c]struct_timespec) void;
pub extern fn rb_time_new(sec: time_t, usec: c_long) VALUE;
pub extern fn rb_time_nano_new(sec: time_t, nsec: c_long) VALUE;
pub extern fn rb_time_timespec_new(ts: [*c]const struct_timespec, offset: c_int) VALUE;
pub extern fn rb_time_num_new(timev: VALUE, off: VALUE) VALUE;
pub extern fn rb_time_interval(num: VALUE) struct_timeval;
pub extern fn rb_time_timeval(time: VALUE) struct_timeval;
pub extern fn rb_time_timespec(time: VALUE) struct_timespec;
pub extern fn rb_time_timespec_interval(num: VALUE) struct_timespec;
pub extern fn rb_time_utc_offset(time: VALUE) VALUE;
pub extern fn rb_mod_name(mod: VALUE) VALUE;
pub extern fn rb_class_path(mod: VALUE) VALUE;
pub extern fn rb_class_path_cached(mod: VALUE) VALUE;
pub extern fn rb_set_class_path(klass: VALUE, space: VALUE, name: [*c]const u8) void;
pub extern fn rb_set_class_path_string(klass: VALUE, space: VALUE, name: VALUE) void;
pub extern fn rb_path_to_class(path: VALUE) VALUE;
pub extern fn rb_path2class(path: [*c]const u8) VALUE;
pub extern fn rb_class_name(obj: VALUE) VALUE;
pub extern fn rb_autoload_load(space: VALUE, name: ID) VALUE;
pub extern fn rb_autoload_p(space: VALUE, name: ID) VALUE;
pub extern fn rb_f_trace_var(argc: c_int, argv: [*c]const VALUE) VALUE;
pub extern fn rb_f_untrace_var(argc: c_int, argv: [*c]const VALUE) VALUE;
pub extern fn rb_f_global_variables() VALUE;
pub extern fn rb_alias_variable(dst: ID, src: ID) void;
pub extern fn rb_free_generic_ivar(obj: VALUE) void;
pub extern fn rb_ivar_get(obj: VALUE, name: ID) VALUE;
pub extern fn rb_ivar_set(obj: VALUE, name: ID, val: VALUE) VALUE;
pub extern fn rb_ivar_defined(obj: VALUE, name: ID) VALUE;
pub extern fn rb_ivar_foreach(obj: VALUE, func: ?*const fn (ID, VALUE, st_data_t) callconv(.c) c_int, arg: st_data_t) void;
pub extern fn rb_ivar_count(obj: VALUE) st_index_t;
pub extern fn rb_attr_get(obj: VALUE, name: ID) VALUE;
pub extern fn rb_obj_instance_variables(obj: VALUE) VALUE;
pub extern fn rb_obj_remove_instance_variable(obj: VALUE, name: VALUE) VALUE;
pub extern fn rb_mod_const_at(VALUE, ?*anyopaque) ?*anyopaque;
pub extern fn rb_mod_const_of(VALUE, ?*anyopaque) ?*anyopaque;
pub extern fn rb_const_list(?*anyopaque) VALUE;
pub extern fn rb_mod_constants(argc: c_int, argv: [*c]const VALUE, recv: VALUE) VALUE;
pub extern fn rb_mod_remove_const(space: VALUE, name: VALUE) VALUE;
pub extern fn rb_const_defined(space: VALUE, name: ID) c_int;
pub extern fn rb_const_defined_at(space: VALUE, name: ID) c_int;
pub extern fn rb_const_defined_from(space: VALUE, name: ID) c_int;
pub extern fn rb_const_get(space: VALUE, name: ID) VALUE;
pub extern fn rb_const_get_at(space: VALUE, name: ID) VALUE;
pub extern fn rb_const_get_from(space: VALUE, name: ID) VALUE;
pub extern fn rb_const_set(space: VALUE, name: ID, val: VALUE) void;
pub extern fn rb_const_remove(space: VALUE, name: ID) VALUE;
pub extern fn rb_cvar_defined(klass: VALUE, name: ID) VALUE;
pub extern fn rb_cvar_set(klass: VALUE, name: ID, val: VALUE) void;
pub extern fn rb_cvar_get(klass: VALUE, name: ID) VALUE;
pub extern fn rb_cvar_find(klass: VALUE, name: ID, front: [*c]VALUE) VALUE;
pub extern fn rb_cv_set(klass: VALUE, name: [*c]const u8, val: VALUE) void;
pub extern fn rb_cv_get(klass: VALUE, name: [*c]const u8) VALUE;
pub extern fn rb_define_class_variable(VALUE, [*c]const u8, VALUE) void;
pub extern fn rb_mod_class_variables(argc: c_int, argv: [*c]const VALUE, recv: VALUE) VALUE;
pub extern fn rb_mod_remove_cvar(mod: VALUE, name: VALUE) VALUE;
pub extern fn ruby_native_thread_p() c_int;
pub extern fn ruby_snprintf(str: [*c]u8, n: usize, fmt: [*c]const u8, ...) c_int;
pub extern fn ruby_vsnprintf(str: [*c]u8, n: usize, fmt: [*c]const u8, ap: [*c]struct___va_list_tag_1) c_int;
pub extern fn __errno_location() [*c]c_int;
pub extern var program_invocation_name: [*c]u8;
pub extern var program_invocation_short_name: [*c]u8;
pub const error_t = c_int;
pub extern fn rb_errno() c_int;
pub extern fn rb_errno_set(err: c_int) void;
pub extern fn rb_errno_ptr() [*c]c_int;
pub fn rb_orig_errno_ptr() callconv(.c) [*c]c_int {
    return &__errno_location().*;
}
pub const RUBY_ENC_CODERANGE_UNKNOWN: c_int = 0;
pub const RUBY_ENC_CODERANGE_7BIT: c_int = 1048576;
pub const RUBY_ENC_CODERANGE_VALID: c_int = 2097152;
pub const RUBY_ENC_CODERANGE_BROKEN: c_int = 3145728;
pub const RUBY_ENC_CODERANGE_MASK: c_int = 3145728;
pub const enum_ruby_coderange_type = c_uint;
pub fn rb_enc_coderange_clean_p(arg_cr: c_int) callconv(.c) c_int {
    var cr = arg_cr;
    _ = &cr;
    return (cr ^ (cr >> @intCast(1))) & RUBY_ENC_CODERANGE_7BIT;
}
pub fn RB_ENC_CODERANGE_CLEAN_P(arg_cr: enum_ruby_coderange_type) callconv(.c) bool {
    var cr = arg_cr;
    _ = &cr;
    return rb_enc_coderange_clean_p(@as(c_int, @bitCast(cr))) != 0;
}
pub fn RB_ENC_CODERANGE(arg_obj: VALUE) callconv(.c) enum_ruby_coderange_type {
    var obj = arg_obj;
    _ = &obj;
    var ret: VALUE = RB_FL_TEST_RAW(obj, @as(VALUE, @bitCast(@as(c_long, RUBY_ENC_CODERANGE_MASK))));
    _ = &ret;
    return @as(c_uint, @bitCast(@as(c_uint, @truncate(ret))));
}
pub fn RB_ENC_CODERANGE_ASCIIONLY(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    return RB_ENC_CODERANGE(obj) == @as(c_uint, @bitCast(RUBY_ENC_CODERANGE_7BIT));
}
pub fn RB_ENC_CODERANGE_SET(arg_obj: VALUE, arg_cr: enum_ruby_coderange_type) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
    var cr = arg_cr;
    _ = &cr;
    RB_FL_UNSET_RAW(obj, @as(VALUE, @bitCast(@as(c_long, RUBY_ENC_CODERANGE_MASK))));
    RB_FL_SET_RAW(obj, @as(VALUE, @bitCast(@as(c_ulong, cr))));
}
pub fn RB_ENC_CODERANGE_CLEAR(arg_obj: VALUE) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
    RB_FL_UNSET_RAW(obj, @as(VALUE, @bitCast(@as(c_long, RUBY_ENC_CODERANGE_MASK))));
}
pub fn RB_ENC_CODERANGE_AND(arg_a: enum_ruby_coderange_type, arg_b: enum_ruby_coderange_type) callconv(.c) enum_ruby_coderange_type {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    if (a == @as(c_uint, @bitCast(RUBY_ENC_CODERANGE_7BIT))) {
        return b;
    } else if (a != @as(c_uint, @bitCast(RUBY_ENC_CODERANGE_VALID))) {
        return @as(c_uint, @bitCast(RUBY_ENC_CODERANGE_UNKNOWN));
    } else if (b == @as(c_uint, @bitCast(RUBY_ENC_CODERANGE_7BIT))) {
        return @as(c_uint, @bitCast(RUBY_ENC_CODERANGE_VALID));
    } else {
        return b;
    }
    return @import("std").mem.zeroes(enum_ruby_coderange_type);
}
pub const OnigPosition = ptrdiff_t;
pub extern var OnigDefaultCaseFoldFlag: OnigCaseFoldType;
pub const OnigCaseFoldCodeItem = extern struct {
    byte_len: c_int = @import("std").mem.zeroes(c_int),
    code_len: c_int = @import("std").mem.zeroes(c_int),
    code: [3]OnigCodePoint = @import("std").mem.zeroes([3]OnigCodePoint),
};
pub const OnigMetaCharTableType = extern struct {
    esc: OnigCodePoint = @import("std").mem.zeroes(OnigCodePoint),
    anychar: OnigCodePoint = @import("std").mem.zeroes(OnigCodePoint),
    anytime: OnigCodePoint = @import("std").mem.zeroes(OnigCodePoint),
    zero_or_one_time: OnigCodePoint = @import("std").mem.zeroes(OnigCodePoint),
    one_or_more_time: OnigCodePoint = @import("std").mem.zeroes(OnigCodePoint),
    anychar_anytime: OnigCodePoint = @import("std").mem.zeroes(OnigCodePoint),
};
pub extern const OnigEncodingASCII: OnigEncodingType;
pub extern fn onigenc_ascii_only_case_map(flagP: [*c]OnigCaseFoldType, pp: [*c][*c]const OnigUChar, end: [*c]const OnigUChar, to: [*c]OnigUChar, to_end: [*c]OnigUChar, enc: [*c]const struct_OnigEncodingTypeST) c_int;
pub extern fn onigenc_mbclen(p: [*c]const OnigUChar, e: [*c]const OnigUChar, enc: [*c]const struct_OnigEncodingTypeST) c_int;
pub extern fn onigenc_step_back(enc: OnigEncoding, start: [*c]const OnigUChar, s: [*c]const OnigUChar, end: [*c]const OnigUChar, n: c_int) [*c]OnigUChar;
pub extern fn onigenc_init() c_int;
pub extern fn onigenc_set_default_encoding(enc: OnigEncoding) c_int;
pub extern fn onigenc_get_default_encoding() OnigEncoding;
pub extern fn onigenc_get_right_adjust_char_head_with_prev(enc: OnigEncoding, start: [*c]const OnigUChar, s: [*c]const OnigUChar, end: [*c]const OnigUChar, prev: [*c][*c]const OnigUChar) [*c]OnigUChar;
pub extern fn onigenc_get_prev_char_head(enc: OnigEncoding, start: [*c]const OnigUChar, s: [*c]const OnigUChar, end: [*c]const OnigUChar) [*c]OnigUChar;
pub extern fn onigenc_get_left_adjust_char_head(enc: OnigEncoding, start: [*c]const OnigUChar, s: [*c]const OnigUChar, end: [*c]const OnigUChar) [*c]OnigUChar;
pub extern fn onigenc_get_right_adjust_char_head(enc: OnigEncoding, start: [*c]const OnigUChar, s: [*c]const OnigUChar, end: [*c]const OnigUChar) [*c]OnigUChar;
pub extern fn onigenc_strlen(enc: OnigEncoding, p: [*c]const OnigUChar, end: [*c]const OnigUChar) c_int;
pub extern fn onigenc_strlen_null(enc: OnigEncoding, p: [*c]const OnigUChar) c_int;
pub extern fn onigenc_str_bytelen_null(enc: OnigEncoding, p: [*c]const OnigUChar) c_int;
pub const OnigSyntaxType = extern struct {
    op: c_uint = @import("std").mem.zeroes(c_uint),
    op2: c_uint = @import("std").mem.zeroes(c_uint),
    behavior: c_uint = @import("std").mem.zeroes(c_uint),
    options: OnigOptionType = @import("std").mem.zeroes(OnigOptionType),
    meta_char_table: OnigMetaCharTableType = @import("std").mem.zeroes(OnigMetaCharTableType),
};
pub extern const OnigSyntaxASIS: OnigSyntaxType;
pub extern const OnigSyntaxPosixBasic: OnigSyntaxType;
pub extern const OnigSyntaxPosixExtended: OnigSyntaxType;
pub extern const OnigSyntaxEmacs: OnigSyntaxType;
pub extern const OnigSyntaxGrep: OnigSyntaxType;
pub extern const OnigSyntaxGnuRegex: OnigSyntaxType;
pub extern const OnigSyntaxJava: OnigSyntaxType;
pub extern const OnigSyntaxPerl58: OnigSyntaxType;
pub extern const OnigSyntaxPerl58_NG: OnigSyntaxType;
pub extern const OnigSyntaxPerl: OnigSyntaxType;
pub extern const OnigSyntaxRuby: OnigSyntaxType;
pub extern const OnigSyntaxPython: OnigSyntaxType;
pub extern var OnigDefaultSyntax: [*c]const OnigSyntaxType;
pub const struct_re_registers = extern struct {
    allocated: c_int = @import("std").mem.zeroes(c_int),
    num_regs: c_int = @import("std").mem.zeroes(c_int),
    beg: [*c]OnigPosition = @import("std").mem.zeroes([*c]OnigPosition),
    end: [*c]OnigPosition = @import("std").mem.zeroes([*c]OnigPosition),
};
pub const OnigRegion = struct_re_registers;
pub const OnigErrorInfo = extern struct {
    enc: OnigEncoding = @import("std").mem.zeroes(OnigEncoding),
    par: [*c]OnigUChar = @import("std").mem.zeroes([*c]OnigUChar),
    par_end: [*c]OnigUChar = @import("std").mem.zeroes([*c]OnigUChar),
};
pub const OnigRepeatRange = extern struct {
    lower: c_int = @import("std").mem.zeroes(c_int),
    upper: c_int = @import("std").mem.zeroes(c_int),
};
pub const OnigWarnFunc = ?*const fn ([*c]const u8) callconv(.c) void;
pub extern fn onig_null_warn(s: [*c]const u8) void;
pub const OnigRegexType = struct_re_pattern_buffer;
pub const OnigRegex = [*c]OnigRegexType;
pub const regex_t = OnigRegexType;
pub const OnigCompileInfo = extern struct {
    num_of_elements: c_int = @import("std").mem.zeroes(c_int),
    pattern_enc: OnigEncoding = @import("std").mem.zeroes(OnigEncoding),
    target_enc: OnigEncoding = @import("std").mem.zeroes(OnigEncoding),
    syntax: [*c]const OnigSyntaxType = @import("std").mem.zeroes([*c]const OnigSyntaxType),
    option: OnigOptionType = @import("std").mem.zeroes(OnigOptionType),
    case_fold_flag: OnigCaseFoldType = @import("std").mem.zeroes(OnigCaseFoldType),
};
pub extern fn onig_initialize(encodings: [*c]OnigEncoding, n: c_int) c_int;
pub extern fn onig_init() c_int;
pub extern fn onig_error_code_to_str(s: [*c]OnigUChar, err_code: OnigPosition, ...) c_int;
pub extern fn onig_set_warn_func(f: OnigWarnFunc) void;
pub extern fn onig_set_verb_warn_func(f: OnigWarnFunc) void;
pub extern fn onig_new([*c]OnigRegex, pattern: [*c]const OnigUChar, pattern_end: [*c]const OnigUChar, option: OnigOptionType, enc: OnigEncoding, syntax: [*c]const OnigSyntaxType, einfo: [*c]OnigErrorInfo) c_int;
pub extern fn onig_reg_init(reg: OnigRegex, option: OnigOptionType, case_fold_flag: OnigCaseFoldType, enc: OnigEncoding, syntax: [*c]const OnigSyntaxType) c_int;
pub extern fn onig_new_without_alloc(OnigRegex, pattern: [*c]const OnigUChar, pattern_end: [*c]const OnigUChar, option: OnigOptionType, enc: OnigEncoding, syntax: [*c]const OnigSyntaxType, einfo: [*c]OnigErrorInfo) c_int;
pub extern fn onig_new_deluxe(reg: [*c]OnigRegex, pattern: [*c]const OnigUChar, pattern_end: [*c]const OnigUChar, ci: [*c]OnigCompileInfo, einfo: [*c]OnigErrorInfo) c_int;
pub extern fn onig_free(OnigRegex) void;
pub extern fn onig_free_body(OnigRegex) void;
pub extern fn onig_reg_copy(reg: [*c]OnigRegex, orig_reg: OnigRegex) c_int;
pub extern fn onig_scan(reg: OnigRegex, str: [*c]const OnigUChar, end: [*c]const OnigUChar, region: [*c]OnigRegion, option: OnigOptionType, scan_callback: ?*const fn (OnigPosition, OnigPosition, [*c]OnigRegion, ?*anyopaque) callconv(.c) c_int, callback_arg: ?*anyopaque) OnigPosition;
pub extern fn onig_search(OnigRegex, str: [*c]const OnigUChar, end: [*c]const OnigUChar, start: [*c]const OnigUChar, range: [*c]const OnigUChar, region: [*c]OnigRegion, option: OnigOptionType) OnigPosition;
pub extern fn onig_search_gpos(OnigRegex, str: [*c]const OnigUChar, end: [*c]const OnigUChar, global_pos: [*c]const OnigUChar, start: [*c]const OnigUChar, range: [*c]const OnigUChar, region: [*c]OnigRegion, option: OnigOptionType) OnigPosition;
pub extern fn onig_match(OnigRegex, str: [*c]const OnigUChar, end: [*c]const OnigUChar, at: [*c]const OnigUChar, region: [*c]OnigRegion, option: OnigOptionType) OnigPosition;
pub extern fn onig_check_linear_time(reg: OnigRegex) c_int;
pub extern fn onig_region_new() [*c]OnigRegion;
pub extern fn onig_region_init(region: [*c]OnigRegion) void;
pub extern fn onig_region_free(region: [*c]OnigRegion, free_self: c_int) void;
pub extern fn onig_region_copy(to: [*c]OnigRegion, from: [*c]const OnigRegion) void;
pub extern fn onig_region_clear(region: [*c]OnigRegion) void;
pub extern fn onig_region_resize(region: [*c]OnigRegion, n: c_int) c_int;
pub extern fn onig_region_set(region: [*c]OnigRegion, at: c_int, beg: c_int, end: c_int) c_int;
pub extern fn onig_name_to_group_numbers(reg: OnigRegex, name: [*c]const OnigUChar, name_end: [*c]const OnigUChar, nums: [*c][*c]c_int) c_int;
pub extern fn onig_name_to_backref_number(reg: OnigRegex, name: [*c]const OnigUChar, name_end: [*c]const OnigUChar, region: [*c]const OnigRegion) c_int;
pub extern fn onig_foreach_name(reg: OnigRegex, func: ?*const fn ([*c]const OnigUChar, [*c]const OnigUChar, c_int, [*c]c_int, OnigRegex, ?*anyopaque) callconv(.c) c_int, arg: ?*anyopaque) c_int;
pub extern fn onig_number_of_names(reg: [*c]const OnigRegexType) c_int;
pub extern fn onig_number_of_captures(reg: [*c]const OnigRegexType) c_int;
pub extern fn onig_number_of_capture_histories(reg: [*c]const OnigRegexType) c_int;
pub extern fn onig_capture_tree_traverse(region: [*c]OnigRegion, at: c_int, callback_func: ?*const fn (c_int, OnigPosition, OnigPosition, c_int, c_int, ?*anyopaque) callconv(.c) c_int, arg: ?*anyopaque) c_int;
pub extern fn onig_noname_group_capture_is_active(reg: [*c]const OnigRegexType) c_int;
pub extern fn onig_get_encoding(reg: [*c]const OnigRegexType) OnigEncoding;
pub extern fn onig_get_options(reg: [*c]const OnigRegexType) OnigOptionType;
pub extern fn onig_get_case_fold_flag(reg: [*c]const OnigRegexType) OnigCaseFoldType;
pub extern fn onig_get_syntax(reg: [*c]const OnigRegexType) [*c]const OnigSyntaxType;
pub extern fn onig_set_default_syntax(syntax: [*c]const OnigSyntaxType) c_int;
pub extern fn onig_copy_syntax(to: [*c]OnigSyntaxType, from: [*c]const OnigSyntaxType) void;
pub extern fn onig_get_syntax_op(syntax: [*c]const OnigSyntaxType) c_uint;
pub extern fn onig_get_syntax_op2(syntax: [*c]const OnigSyntaxType) c_uint;
pub extern fn onig_get_syntax_behavior(syntax: [*c]const OnigSyntaxType) c_uint;
pub extern fn onig_get_syntax_options(syntax: [*c]const OnigSyntaxType) OnigOptionType;
pub extern fn onig_set_syntax_op(syntax: [*c]OnigSyntaxType, op: c_uint) void;
pub extern fn onig_set_syntax_op2(syntax: [*c]OnigSyntaxType, op2: c_uint) void;
pub extern fn onig_set_syntax_behavior(syntax: [*c]OnigSyntaxType, behavior: c_uint) void;
pub extern fn onig_set_syntax_options(syntax: [*c]OnigSyntaxType, options: OnigOptionType) void;
pub extern fn onig_set_meta_char(syntax: [*c]OnigSyntaxType, what: c_uint, code: OnigCodePoint) c_int;
pub extern fn onig_copy_encoding(to: [*c]OnigEncodingType, from: OnigEncoding) void;
pub extern fn onig_get_default_case_fold_flag() OnigCaseFoldType;
pub extern fn onig_set_default_case_fold_flag(case_fold_flag: OnigCaseFoldType) c_int;
pub extern fn onig_get_match_stack_limit_size() c_uint;
pub extern fn onig_set_match_stack_limit_size(size: c_uint) c_int;
pub extern fn onig_get_parse_depth_limit() c_uint;
pub extern fn onig_set_parse_depth_limit(depth: c_uint) c_int;
pub extern fn onig_end() c_int;
pub extern fn onig_version() [*c]const u8;
pub extern fn onig_copyright() [*c]const u8;
pub const RUBY_ENCODING_INLINE_MAX: c_int = 127;
pub const RUBY_ENCODING_SHIFT: c_int = 22;
pub const RUBY_ENCODING_MASK: c_int = 532676608;
pub const RUBY_ENCODING_MAXNAMELEN: c_int = 42;
pub const enum_ruby_encoding_consts = c_uint;
pub fn RB_ENCODING_SET_INLINED(arg_obj: VALUE, arg_encindex: c_int) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
    var encindex = arg_encindex;
    _ = &encindex;
    var f: VALUE = @as(VALUE, @bitCast(@as(c_long, encindex)));
    _ = &f;
    f <<= @intCast(RUBY_ENCODING_SHIFT);
    RB_FL_UNSET_RAW(obj, @as(VALUE, @bitCast(@as(c_long, RUBY_ENCODING_MASK))));
    RB_FL_SET_RAW(obj, f);
}
pub fn RB_ENCODING_GET_INLINED(arg_obj: VALUE) callconv(.c) c_int {
    var obj = arg_obj;
    _ = &obj;
    var ret: VALUE = RB_FL_TEST_RAW(obj, @as(VALUE, @bitCast(@as(c_long, RUBY_ENCODING_MASK)))) >> @intCast(RUBY_ENCODING_SHIFT);
    _ = &ret;
    return @as(c_int, @bitCast(@as(c_uint, @truncate(ret))));
}
pub const rb_encoding = OnigEncodingType;
pub extern fn rb_char_to_option_kcode(c: c_int, option: [*c]c_int, kcode: [*c]c_int) c_int;
pub extern fn rb_define_dummy_encoding(name: [*c]const u8) c_int;
pub extern fn rb_enc_dummy_p(enc: [*c]const rb_encoding) c_int;
pub extern fn rb_enc_to_index(enc: [*c]const rb_encoding) c_int;
pub extern fn rb_enc_get_index(obj: VALUE) c_int;
pub fn RB_ENCODING_GET(arg_obj: VALUE) callconv(.c) c_int {
    var obj = arg_obj;
    _ = &obj;
    var encindex: c_int = RB_ENCODING_GET_INLINED(obj);
    _ = &encindex;
    if (encindex == RUBY_ENCODING_INLINE_MAX) {
        return rb_enc_get_index(obj);
    } else {
        return encindex;
    }
    return 0;
}
pub extern fn rb_enc_set_index(obj: VALUE, encindex: c_int) void;
pub fn RB_ENCODING_SET(arg_obj: VALUE, arg_encindex: c_int) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
    var encindex = arg_encindex;
    _ = &encindex;
    rb_enc_set_index(obj, encindex);
}
pub fn RB_ENCODING_CODERANGE_SET(arg_obj: VALUE, arg_encindex: c_int, arg_cr: enum_ruby_coderange_type) callconv(.c) void {
    var obj = arg_obj;
    _ = &obj;
    var encindex = arg_encindex;
    _ = &encindex;
    var cr = arg_cr;
    _ = &cr;
    RB_ENCODING_SET(obj, encindex);
    RB_ENC_CODERANGE_SET(obj, cr);
}
pub extern fn rb_enc_capable(obj: VALUE) c_int;
pub extern fn rb_enc_find_index(name: [*c]const u8) c_int;
pub extern fn rb_enc_alias(alias: [*c]const u8, orig: [*c]const u8) c_int;
pub extern fn rb_to_encoding_index(obj: VALUE) c_int;
pub extern fn rb_to_encoding(obj: VALUE) [*c]const rb_encoding;
pub extern fn rb_find_encoding(obj: VALUE) [*c]const rb_encoding;
pub extern fn rb_enc_get(obj: VALUE) [*c]const rb_encoding;
pub extern fn rb_enc_compatible(str1: VALUE, str2: VALUE) [*c]const rb_encoding;
pub extern fn rb_enc_check(str1: VALUE, str2: VALUE) [*c]const rb_encoding;
pub extern fn rb_enc_associate_index(obj: VALUE, encindex: c_int) VALUE;
pub extern fn rb_enc_associate(obj: VALUE, enc: [*c]const rb_encoding) VALUE;
pub extern fn rb_enc_copy(dst: VALUE, src: VALUE) void;
pub extern fn rb_enc_from_index(idx: c_int) [*c]const rb_encoding;
pub extern fn rb_enc_find(name: [*c]const u8) [*c]const rb_encoding;
pub fn rb_enc_name(arg_enc: [*c]const rb_encoding) callconv(.c) [*c]const u8 {
    var enc = arg_enc;
    _ = &enc;
    return enc.*.name;
}
pub fn rb_enc_mbminlen(arg_enc: [*c]const rb_encoding) callconv(.c) c_int {
    var enc = arg_enc;
    _ = &enc;
    return enc.*.min_enc_len;
}
pub fn rb_enc_mbmaxlen(arg_enc: [*c]const rb_encoding) callconv(.c) c_int {
    var enc = arg_enc;
    _ = &enc;
    return enc.*.max_enc_len;
}
pub extern fn rb_enc_mbclen(p: [*c]const u8, e: [*c]const u8, enc: [*c]const rb_encoding) c_int;
pub extern fn rb_enc_fast_mbclen(p: [*c]const u8, e: [*c]const u8, enc: [*c]const rb_encoding) c_int;
pub extern fn rb_enc_precise_mbclen(p: [*c]const u8, e: [*c]const u8, enc: [*c]const rb_encoding) c_int;
pub extern fn rb_enc_ascget(p: [*c]const u8, e: [*c]const u8, len: [*c]c_int, enc: [*c]const rb_encoding) c_int;
pub extern fn rb_enc_codepoint_len(p: [*c]const u8, e: [*c]const u8, len: [*c]c_int, enc: [*c]const rb_encoding) c_uint;
pub fn rb_enc_codepoint(arg_p: [*c]const u8, arg_e: [*c]const u8, arg_enc: [*c]const rb_encoding) callconv(.c) c_uint {
    var p = arg_p;
    _ = &p;
    var e = arg_e;
    _ = &e;
    var enc = arg_enc;
    _ = &enc;
    return rb_enc_codepoint_len(p, e, null, enc);
}
pub fn rb_enc_mbc_to_codepoint(arg_p: [*c]const u8, arg_e: [*c]const u8, arg_enc: [*c]const rb_encoding) callconv(.c) OnigCodePoint {
    var p = arg_p;
    _ = &p;
    var e = arg_e;
    _ = &e;
    var enc = arg_enc;
    _ = &enc;
    var up: [*c]const OnigUChar = @as([*c]const OnigUChar, @ptrCast(@alignCast(p)));
    _ = &up;
    var ue: [*c]const OnigUChar = @as([*c]const OnigUChar, @ptrCast(@alignCast(e)));
    _ = &ue;
    return enc.*.mbc_to_code.?(up, ue, enc);
}
pub extern fn rb_enc_codelen(code: c_int, enc: [*c]const rb_encoding) c_int;
pub fn rb_enc_code_to_mbclen(arg_c: c_int, arg_enc: [*c]const rb_encoding) callconv(.c) c_int {
    var c = arg_c;
    _ = &c;
    var enc = arg_enc;
    _ = &enc;
    var uc: OnigCodePoint = @as(OnigCodePoint, @bitCast(c));
    _ = &uc;
    return enc.*.code_to_mbclen.?(uc, enc);
}
pub fn rb_enc_mbcput(arg_c: c_uint, arg_buf: ?*anyopaque, arg_enc: [*c]const rb_encoding) callconv(.c) c_int {
    var c = arg_c;
    _ = &c;
    var buf = arg_buf;
    _ = &buf;
    var enc = arg_enc;
    _ = &enc;
    var uc: OnigCodePoint = @as(OnigCodePoint, @bitCast(c));
    _ = &uc;
    var ubuf: [*c]OnigUChar = @as([*c]OnigUChar, @ptrCast(@alignCast(buf)));
    _ = &ubuf;
    return enc.*.code_to_mbc.?(uc, ubuf, enc);
}
pub fn rb_enc_prev_char(arg_s: [*c]const u8, arg_p: [*c]const u8, arg_e: [*c]const u8, arg_enc: [*c]const rb_encoding) callconv(.c) [*c]u8 {
    var s = arg_s;
    _ = &s;
    var p = arg_p;
    _ = &p;
    var e = arg_e;
    _ = &e;
    var enc = arg_enc;
    _ = &enc;
    var us: [*c]const OnigUChar = @as([*c]const OnigUChar, @ptrCast(@alignCast(s)));
    _ = &us;
    var up: [*c]const OnigUChar = @as([*c]const OnigUChar, @ptrCast(@alignCast(p)));
    _ = &up;
    var ue: [*c]const OnigUChar = @as([*c]const OnigUChar, @ptrCast(@alignCast(e)));
    _ = &ue;
    var ur: [*c]OnigUChar = onigenc_get_prev_char_head(enc, us, up, ue);
    _ = &ur;
    return @as([*c]u8, @ptrCast(@alignCast(ur)));
}
pub fn rb_enc_left_char_head(arg_s: [*c]const u8, arg_p: [*c]const u8, arg_e: [*c]const u8, arg_enc: [*c]const rb_encoding) callconv(.c) [*c]u8 {
    var s = arg_s;
    _ = &s;
    var p = arg_p;
    _ = &p;
    var e = arg_e;
    _ = &e;
    var enc = arg_enc;
    _ = &enc;
    var us: [*c]const OnigUChar = @as([*c]const OnigUChar, @ptrCast(@alignCast(s)));
    _ = &us;
    var up: [*c]const OnigUChar = @as([*c]const OnigUChar, @ptrCast(@alignCast(p)));
    _ = &up;
    var ue: [*c]const OnigUChar = @as([*c]const OnigUChar, @ptrCast(@alignCast(e)));
    _ = &ue;
    var ur: [*c]OnigUChar = onigenc_get_left_adjust_char_head(enc, us, up, ue);
    _ = &ur;
    return @as([*c]u8, @ptrCast(@alignCast(ur)));
}
pub fn rb_enc_right_char_head(arg_s: [*c]const u8, arg_p: [*c]const u8, arg_e: [*c]const u8, arg_enc: [*c]const rb_encoding) callconv(.c) [*c]u8 {
    var s = arg_s;
    _ = &s;
    var p = arg_p;
    _ = &p;
    var e = arg_e;
    _ = &e;
    var enc = arg_enc;
    _ = &enc;
    var us: [*c]const OnigUChar = @as([*c]const OnigUChar, @ptrCast(@alignCast(s)));
    _ = &us;
    var up: [*c]const OnigUChar = @as([*c]const OnigUChar, @ptrCast(@alignCast(p)));
    _ = &up;
    var ue: [*c]const OnigUChar = @as([*c]const OnigUChar, @ptrCast(@alignCast(e)));
    _ = &ue;
    var ur: [*c]OnigUChar = onigenc_get_right_adjust_char_head(enc, us, up, ue);
    _ = &ur;
    return @as([*c]u8, @ptrCast(@alignCast(ur)));
}
pub fn rb_enc_step_back(arg_s: [*c]const u8, arg_p: [*c]const u8, arg_e: [*c]const u8, arg_n: c_int, arg_enc: [*c]const rb_encoding) callconv(.c) [*c]u8 {
    var s = arg_s;
    _ = &s;
    var p = arg_p;
    _ = &p;
    var e = arg_e;
    _ = &e;
    var n = arg_n;
    _ = &n;
    var enc = arg_enc;
    _ = &enc;
    var us: [*c]const OnigUChar = @as([*c]const OnigUChar, @ptrCast(@alignCast(s)));
    _ = &us;
    var up: [*c]const OnigUChar = @as([*c]const OnigUChar, @ptrCast(@alignCast(p)));
    _ = &up;
    var ue: [*c]const OnigUChar = @as([*c]const OnigUChar, @ptrCast(@alignCast(e)));
    _ = &ue;
    var ur: [*c]const OnigUChar = onigenc_step_back(enc, us, up, ue, n);
    _ = &ur;
    return @as([*c]u8, @ptrCast(@constCast(@volatileCast(ur))));
}
pub fn rb_enc_asciicompat_inline(arg_enc: [*c]const rb_encoding) callconv(.c) c_int {
    var enc = arg_enc;
    _ = &enc;
    return @intFromBool((rb_enc_mbminlen(enc) == @as(c_int, 1)) and !(rb_enc_dummy_p(enc) != 0));
}
pub fn rb_enc_asciicompat(arg_enc: [*c]const rb_encoding) callconv(.c) bool {
    var enc = arg_enc;
    _ = &enc;
    if (rb_enc_mbminlen(enc) != @as(c_int, 1)) {
        return @as(c_int, 0) != 0;
    } else if (rb_enc_dummy_p(enc) != 0) {
        return @as(c_int, 0) != 0;
    } else {
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn rb_enc_str_asciicompat_p(arg_str: VALUE) callconv(.c) bool {
    var str = arg_str;
    _ = &str;
    var enc: [*c]const rb_encoding = rb_enc_get(str);
    _ = &enc;
    return rb_enc_asciicompat(enc);
}
pub extern fn rb_enc_from_encoding(enc: [*c]const rb_encoding) VALUE;
pub extern fn rb_enc_unicode_p(enc: [*c]const rb_encoding) c_int;
pub extern fn rb_ascii8bit_encoding() [*c]const rb_encoding;
pub extern fn rb_utf8_encoding() [*c]const rb_encoding;
pub extern fn rb_usascii_encoding() [*c]const rb_encoding;
pub extern fn rb_locale_encoding() [*c]const rb_encoding;
pub extern fn rb_filesystem_encoding() [*c]const rb_encoding;
pub extern fn rb_default_external_encoding() [*c]const rb_encoding;
pub extern fn rb_default_internal_encoding() [*c]const rb_encoding;
pub extern fn rb_ascii8bit_encindex() c_int;
pub fn RB_ENCODING_IS_ASCII8BIT(arg_obj: VALUE) callconv(.c) bool {
    var obj = arg_obj;
    _ = &obj;
    return RB_ENCODING_GET_INLINED(obj) == rb_ascii8bit_encindex();
}
pub extern fn rb_utf8_encindex() c_int;
pub extern fn rb_usascii_encindex() c_int;
pub extern fn rb_locale_encindex() c_int;
pub extern fn rb_filesystem_encindex() c_int;
pub extern fn rb_enc_default_external() VALUE;
pub extern fn rb_enc_default_internal() VALUE;
pub extern fn rb_enc_set_default_external(encoding: VALUE) void;
pub extern fn rb_enc_set_default_internal(encoding: VALUE) void;
pub extern fn rb_locale_charmap(klass: VALUE) VALUE;
pub fn rb_enc_is_newline(arg_p: [*c]const u8, arg_e: [*c]const u8, arg_enc: [*c]const rb_encoding) callconv(.c) bool {
    var p = arg_p;
    _ = &p;
    var e = arg_e;
    _ = &e;
    var enc = arg_enc;
    _ = &enc;
    var up: [*c]OnigUChar = @as([*c]OnigUChar, @ptrCast(@constCast(@volatileCast(p))));
    _ = &up;
    var ue: [*c]OnigUChar = @as([*c]OnigUChar, @ptrCast(@constCast(@volatileCast(e))));
    _ = &ue;
    return enc.*.is_mbc_newline.?(up, ue, enc) != 0;
}
pub fn rb_enc_isctype(arg_c: OnigCodePoint, arg_t: OnigCtype, arg_enc: [*c]const rb_encoding) callconv(.c) bool {
    var c = arg_c;
    _ = &c;
    var t = arg_t;
    _ = &t;
    var enc = arg_enc;
    _ = &enc;
    return enc.*.is_code_ctype.?(c, t, enc) != 0;
}
pub fn rb_enc_isascii(arg_c: OnigCodePoint, arg_enc: [*c]const rb_encoding) callconv(.c) bool {
    var c = arg_c;
    _ = &c;
    var enc = arg_enc;
    _ = &enc;
    return c < @as(OnigCodePoint, @bitCast(@as(c_int, 128)));
}
pub fn rb_enc_isalpha(arg_c: OnigCodePoint, arg_enc: [*c]const rb_encoding) callconv(.c) bool {
    var c = arg_c;
    _ = &c;
    var enc = arg_enc;
    _ = &enc;
    return enc.*.is_code_ctype.?(c, @as(OnigCtype, @bitCast(@as(c_int, 1))), enc) != 0;
}
pub fn rb_enc_islower(arg_c: OnigCodePoint, arg_enc: [*c]const rb_encoding) callconv(.c) bool {
    var c = arg_c;
    _ = &c;
    var enc = arg_enc;
    _ = &enc;
    return enc.*.is_code_ctype.?(c, @as(OnigCtype, @bitCast(@as(c_int, 6))), enc) != 0;
}
pub fn rb_enc_isupper(arg_c: OnigCodePoint, arg_enc: [*c]const rb_encoding) callconv(.c) bool {
    var c = arg_c;
    _ = &c;
    var enc = arg_enc;
    _ = &enc;
    return enc.*.is_code_ctype.?(c, @as(OnigCtype, @bitCast(@as(c_int, 10))), enc) != 0;
}
pub fn rb_enc_iscntrl(arg_c: OnigCodePoint, arg_enc: [*c]const rb_encoding) callconv(.c) bool {
    var c = arg_c;
    _ = &c;
    var enc = arg_enc;
    _ = &enc;
    return enc.*.is_code_ctype.?(c, @as(OnigCtype, @bitCast(@as(c_int, 3))), enc) != 0;
}
pub fn rb_enc_ispunct(arg_c: OnigCodePoint, arg_enc: [*c]const rb_encoding) callconv(.c) bool {
    var c = arg_c;
    _ = &c;
    var enc = arg_enc;
    _ = &enc;
    return enc.*.is_code_ctype.?(c, @as(OnigCtype, @bitCast(@as(c_int, 8))), enc) != 0;
}
pub fn rb_enc_isalnum(arg_c: OnigCodePoint, arg_enc: [*c]const rb_encoding) callconv(.c) bool {
    var c = arg_c;
    _ = &c;
    var enc = arg_enc;
    _ = &enc;
    return enc.*.is_code_ctype.?(c, @as(OnigCtype, @bitCast(@as(c_int, 13))), enc) != 0;
}
pub fn rb_enc_isprint(arg_c: OnigCodePoint, arg_enc: [*c]const rb_encoding) callconv(.c) bool {
    var c = arg_c;
    _ = &c;
    var enc = arg_enc;
    _ = &enc;
    return enc.*.is_code_ctype.?(c, @as(OnigCtype, @bitCast(@as(c_int, 7))), enc) != 0;
}
pub fn rb_enc_isspace(arg_c: OnigCodePoint, arg_enc: [*c]const rb_encoding) callconv(.c) bool {
    var c = arg_c;
    _ = &c;
    var enc = arg_enc;
    _ = &enc;
    return enc.*.is_code_ctype.?(c, @as(OnigCtype, @bitCast(@as(c_int, 9))), enc) != 0;
}
pub fn rb_enc_isdigit(arg_c: OnigCodePoint, arg_enc: [*c]const rb_encoding) callconv(.c) bool {
    var c = arg_c;
    _ = &c;
    var enc = arg_enc;
    _ = &enc;
    return enc.*.is_code_ctype.?(c, @as(OnigCtype, @bitCast(@as(c_int, 4))), enc) != 0;
}
pub extern fn rb_enc_toupper(c: c_int, enc: [*c]const rb_encoding) c_int;
pub extern fn rb_enc_tolower(c: c_int, enc: [*c]const rb_encoding) c_int;
pub extern fn rb_enc_path_next(path: [*c]const u8, end: [*c]const u8, enc: [*c]const rb_encoding) [*c]u8;
pub extern fn rb_enc_path_skip_prefix(path: [*c]const u8, end: [*c]const u8, enc: [*c]const rb_encoding) [*c]u8;
pub extern fn rb_enc_path_last_separator(path: [*c]const u8, end: [*c]const u8, enc: [*c]const rb_encoding) [*c]u8;
pub extern fn rb_enc_path_end(path: [*c]const u8, end: [*c]const u8, enc: [*c]const rb_encoding) [*c]u8;
pub extern fn ruby_enc_find_basename(name: [*c]const u8, baselen: [*c]c_long, alllen: [*c]c_long, enc: [*c]const rb_encoding) [*c]const u8;
pub extern fn ruby_enc_find_extname(name: [*c]const u8, len: [*c]c_long, enc: [*c]const rb_encoding) [*c]const u8;
pub extern fn rb_enc_reg_new(ptr: [*c]const u8, len: c_long, enc: [*c]const rb_encoding, opts: c_int) VALUE;
pub extern fn rb_enc_sprintf(enc: [*c]const rb_encoding, fmt: [*c]const u8, ...) VALUE;
pub extern fn rb_enc_vsprintf(enc: [*c]const rb_encoding, fmt: [*c]const u8, ap: [*c]struct___va_list_tag_1) VALUE;
pub extern fn rb_enc_raise(enc: [*c]const rb_encoding, exc: VALUE, fmt: [*c]const u8, ...) noreturn;
pub extern fn rb_enc_str_new(ptr: [*c]const u8, len: c_long, enc: [*c]const rb_encoding) VALUE;
pub extern fn rb_enc_str_new_cstr(ptr: [*c]const u8, enc: [*c]const rb_encoding) VALUE;
pub extern fn rb_enc_str_new_static(ptr: [*c]const u8, len: c_long, enc: [*c]const rb_encoding) VALUE;
pub extern fn rb_enc_interned_str(ptr: [*c]const u8, len: c_long, enc: [*c]const rb_encoding) VALUE;
pub extern fn rb_enc_interned_str_cstr(ptr: [*c]const u8, enc: [*c]const rb_encoding) VALUE;
pub extern fn rb_enc_strlen(head: [*c]const u8, tail: [*c]const u8, enc: [*c]const rb_encoding) c_long;
pub extern fn rb_enc_nth(head: [*c]const u8, tail: [*c]const u8, nth: c_long, enc: [*c]const rb_encoding) [*c]u8;
pub extern fn rb_obj_encoding(obj: VALUE) VALUE;
pub extern fn rb_enc_str_buf_cat(str: VALUE, ptr: [*c]const u8, len: c_long, enc: [*c]const rb_encoding) VALUE;
pub extern fn rb_enc_uint_chr(code: c_uint, enc: [*c]const rb_encoding) VALUE;
pub extern fn rb_external_str_new_with_enc(ptr: [*c]const u8, len: c_long, enc: [*c]const rb_encoding) VALUE;
pub extern fn rb_str_export_to_enc(obj: VALUE, enc: [*c]const rb_encoding) VALUE;
pub extern fn rb_str_conv_enc(str: VALUE, from: [*c]const rb_encoding, to: [*c]const rb_encoding) VALUE;
pub extern fn rb_str_conv_enc_opts(str: VALUE, from: [*c]const rb_encoding, to: [*c]const rb_encoding, ecflags: c_int, ecopts: VALUE) VALUE;
pub extern fn rb_enc_str_coderange(str: VALUE) c_int;
pub extern fn rb_str_coderange_scan_restartable(str: [*c]const u8, end: [*c]const u8, enc: [*c]const rb_encoding, cr: [*c]c_int) c_long;
pub extern fn rb_enc_str_asciionly_p(str: VALUE) c_int;
pub extern fn rb_memsearch(x: ?*const anyopaque, m: c_long, y: ?*const anyopaque, n: c_long, enc: [*c]const rb_encoding) c_long;
pub fn rbimpl_enc_str_new_cstr(arg_str: [*c]const u8, arg_enc: [*c]const rb_encoding) callconv(.c) VALUE {
    var str = arg_str;
    _ = &str;
    var enc = arg_enc;
    _ = &enc;
    var len: c_long = rbimpl_strlen(str);
    _ = &len;
    return rb_enc_str_new_static(str, len, enc);
}
pub extern fn rb_intern3(name: [*c]const u8, len: c_long, enc: [*c]const rb_encoding) ID;
pub extern fn rb_enc_symname_p(str: [*c]const u8, enc: [*c]const rb_encoding) c_int;
pub extern fn rb_enc_symname2_p(name: [*c]const u8, len: c_long, enc: [*c]const rb_encoding) c_int;
pub extern fn rb_check_id_cstr(ptr: [*c]const u8, len: c_long, enc: [*c]const rb_encoding) ID;
pub extern fn rb_check_symbol_cstr(ptr: [*c]const u8, len: c_long, enc: [*c]const rb_encoding) VALUE;
pub const econv_invalid_byte_sequence: c_int = 0;
pub const econv_undefined_conversion: c_int = 1;
pub const econv_destination_buffer_full: c_int = 2;
pub const econv_source_buffer_empty: c_int = 3;
pub const econv_finished: c_int = 4;
pub const econv_after_output: c_int = 5;
pub const econv_incomplete_input: c_int = 6;
pub const rb_econv_result_t = c_uint;
pub const struct_rb_econv_t = opaque {};
pub const rb_econv_t = struct_rb_econv_t;
pub extern fn rb_str_encode(str: VALUE, to: VALUE, ecflags: c_int, ecopts: VALUE) VALUE;
pub extern fn rb_econv_has_convpath_p(from_encoding: [*c]const u8, to_encoding: [*c]const u8) c_int;
pub extern fn rb_econv_prepare_options(opthash: VALUE, ecopts: [*c]VALUE, ecflags: c_int) c_int;
pub extern fn rb_econv_prepare_opts(opthash: VALUE, ecopts: [*c]VALUE) c_int;
pub extern fn rb_econv_open(source_encoding: [*c]const u8, destination_encoding: [*c]const u8, ecflags: c_int) ?*rb_econv_t;
pub extern fn rb_econv_open_opts(source_encoding: [*c]const u8, destination_encoding: [*c]const u8, ecflags: c_int, ecopts: VALUE) ?*rb_econv_t;
pub extern fn rb_econv_convert(ec: ?*rb_econv_t, source_buffer_ptr: [*c][*c]const u8, source_buffer_end: [*c]const u8, destination_buffer_ptr: [*c][*c]u8, destination_buffer_end: [*c]u8, flags: c_int) rb_econv_result_t;
pub extern fn rb_econv_close(ec: ?*rb_econv_t) void;
pub extern fn rb_econv_set_replacement(ec: ?*rb_econv_t, str: [*c]const u8, len: usize, encname: [*c]const u8) c_int;
pub extern fn rb_econv_decorate_at_first(ec: ?*rb_econv_t, decorator_name: [*c]const u8) c_int;
pub extern fn rb_econv_decorate_at_last(ec: ?*rb_econv_t, decorator_name: [*c]const u8) c_int;
pub extern fn rb_econv_open_exc(senc: [*c]const u8, denc: [*c]const u8, ecflags: c_int) VALUE;
pub extern fn rb_econv_insert_output(ec: ?*rb_econv_t, str: [*c]const u8, len: usize, str_encoding: [*c]const u8) c_int;
pub extern fn rb_econv_encoding_to_insert_output(ec: ?*rb_econv_t) [*c]const u8;
pub extern fn rb_econv_check_error(ec: ?*rb_econv_t) void;
pub extern fn rb_econv_make_exception(ec: ?*rb_econv_t) VALUE;
pub extern fn rb_econv_putbackable(ec: ?*rb_econv_t) c_int;
pub extern fn rb_econv_putback(ec: ?*rb_econv_t, p: [*c]u8, n: c_int) void;
pub extern fn rb_econv_asciicompat_encoding(encname: [*c]const u8) [*c]const u8;
pub extern fn rb_econv_str_convert(ec: ?*rb_econv_t, src: VALUE, flags: c_int) VALUE;
pub extern fn rb_econv_substr_convert(ec: ?*rb_econv_t, src: VALUE, byteoff: c_long, bytesize: c_long, flags: c_int) VALUE;
pub extern fn rb_econv_str_append(ec: ?*rb_econv_t, src: VALUE, dst: VALUE, flags: c_int) VALUE;
pub extern fn rb_econv_substr_append(ec: ?*rb_econv_t, src: VALUE, byteoff: c_long, bytesize: c_long, dst: VALUE, flags: c_int) VALUE;
pub extern fn rb_econv_append(ec: ?*rb_econv_t, bytesrc: [*c]const u8, bytesize: c_long, dst: VALUE, flags: c_int) VALUE;
pub extern fn rb_econv_binmode(ec: ?*rb_econv_t) void;
pub const RUBY_ECONV_ERROR_HANDLER_MASK: c_int = 255;
pub const RUBY_ECONV_INVALID_MASK: c_int = 15;
pub const RUBY_ECONV_INVALID_REPLACE: c_int = 2;
pub const RUBY_ECONV_UNDEF_MASK: c_int = 240;
pub const RUBY_ECONV_UNDEF_REPLACE: c_int = 32;
pub const RUBY_ECONV_UNDEF_HEX_CHARREF: c_int = 48;
pub const RUBY_ECONV_DECORATOR_MASK: c_int = 130816;
pub const RUBY_ECONV_NEWLINE_DECORATOR_MASK: c_int = 32512;
pub const RUBY_ECONV_NEWLINE_DECORATOR_READ_MASK: c_int = 3840;
pub const RUBY_ECONV_NEWLINE_DECORATOR_WRITE_MASK: c_int = 28672;
pub const RUBY_ECONV_UNIVERSAL_NEWLINE_DECORATOR: c_int = 256;
pub const RUBY_ECONV_CRLF_NEWLINE_DECORATOR: c_int = 4096;
pub const RUBY_ECONV_CR_NEWLINE_DECORATOR: c_int = 8192;
pub const RUBY_ECONV_LF_NEWLINE_DECORATOR: c_int = 16384;
pub const RUBY_ECONV_XML_TEXT_DECORATOR: c_int = 32768;
pub const RUBY_ECONV_XML_ATTR_CONTENT_DECORATOR: c_int = 65536;
pub const RUBY_ECONV_STATEFUL_DECORATOR_MASK: c_int = 15728640;
pub const RUBY_ECONV_XML_ATTR_QUOTE_DECORATOR: c_int = 1048576;
pub const RUBY_ECONV_DEFAULT_NEWLINE_DECORATOR: c_int = 0;
pub const RUBY_ECONV_PARTIAL_INPUT: c_int = 131072;
pub const RUBY_ECONV_AFTER_OUTPUT: c_int = 262144;
pub const RUBY_ECONV_FLAGS_PLACEHOLDER: c_int = 262145;
pub const enum_ruby_econv_flag_type = c_uint;
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 20);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 2);
pub const __clang_version__ = "20.1.2 (https://github.com/ziglang/zig-bootstrap 7ef74e656cf8ddbd6bf891a8475892aa1afa6891)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 20.1.2 (https://github.com/ziglang/zig-bootstrap 7ef74e656cf8ddbd6bf891a8475892aa1afa6891)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 1);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):95:9
pub const __INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):102:9
pub const __UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_NORM_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_NORM_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_NORM_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_NORM_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub inline fn __INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub inline fn __INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub inline fn __INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):207:9
pub const __INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub inline fn __UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub inline fn __UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):232:9
pub const __UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):241:9
pub const __UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __GCC_DESTRUCTIVE_SIZE = @as(c_int, 64);
pub const __GCC_CONSTRUCTIVE_SIZE = @as(c_int, 64);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __ELF__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):373:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):374:9
pub const __znver4 = @as(c_int, 1);
pub const __znver4__ = @as(c_int, 1);
pub const __tune_znver4__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MWAITX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __SSE4A__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __EVEX512__ = @as(c_int, 1);
pub const __AVX512CD__ = @as(c_int, 1);
pub const __AVX512VPOPCNTDQ__ = @as(c_int, 1);
pub const __AVX512VNNI__ = @as(c_int, 1);
pub const __AVX512BF16__ = @as(c_int, 1);
pub const __AVX512DQ__ = @as(c_int, 1);
pub const __AVX512BITALG__ = @as(c_int, 1);
pub const __AVX512BW__ = @as(c_int, 1);
pub const __AVX512VL__ = @as(c_int, 1);
pub const __EVEX256__ = @as(c_int, 1);
pub const __AVX512VBMI__ = @as(c_int, 1);
pub const __AVX512VBMI2__ = @as(c_int, 1);
pub const __AVX512IFMA__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __PKU__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __WBNOINVD__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __CLZERO__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __RDPRU__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX512F__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const RUBY_RUBY_H = @as(c_int, 1);
pub const RBIMPL_CONFIG_H = "";
pub const INCLUDE_RUBY_CONFIG_H = @as(c_int, 1);
pub const HAVE_STDIO_H = @as(c_int, 1);
pub const HAVE_STDLIB_H = @as(c_int, 1);
pub const HAVE_STRING_H = @as(c_int, 1);
pub const HAVE_INTTYPES_H = @as(c_int, 1);
pub const HAVE_STDINT_H = @as(c_int, 1);
pub const HAVE_STRINGS_H = @as(c_int, 1);
pub const HAVE_SYS_STAT_H = @as(c_int, 1);
pub const HAVE_SYS_TYPES_H = @as(c_int, 1);
pub const HAVE_UNISTD_H = @as(c_int, 1);
pub const HAVE_WCHAR_H = @as(c_int, 1);
pub const STDC_HEADERS = @as(c_int, 1);
pub const _ALL_SOURCE = @as(c_int, 1);
pub const _DARWIN_C_SOURCE = @as(c_int, 1);
pub const _GNU_SOURCE = @as(c_int, 1);
pub const _HPUX_ALT_XOPEN_SOCKET_API = @as(c_int, 1);
pub const _NETBSD_SOURCE = @as(c_int, 1);
pub const _OPENBSD_SOURCE = @as(c_int, 1);
pub const _POSIX_PTHREAD_SEMANTICS = @as(c_int, 1);
pub const __STDC_WANT_IEC_60559_ATTRIBS_EXT__ = @as(c_int, 1);
pub const __STDC_WANT_IEC_60559_BFP_EXT__ = @as(c_int, 1);
pub const __STDC_WANT_IEC_60559_DFP_EXT__ = @as(c_int, 1);
pub const __STDC_WANT_IEC_60559_FUNCS_EXT__ = @as(c_int, 1);
pub const __STDC_WANT_IEC_60559_TYPES_EXT__ = @as(c_int, 1);
pub const __STDC_WANT_LIB_EXT2__ = @as(c_int, 1);
pub const __STDC_WANT_MATH_SPEC_FUNCS__ = @as(c_int, 1);
pub const _TANDEM_SOURCE = @as(c_int, 1);
pub const __EXTENSIONS__ = @as(c_int, 1);
pub const RUBY_SYMBOL_EXPORT_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:31:9
pub const RUBY_SYMBOL_EXPORT_END = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:32:9
pub const HAVE_STMT_AND_DECL_IN_EXPR = @as(c_int, 1);
pub const HAVE_PTHREAD_H = @as(c_int, 1);
pub const _REENTRANT = @as(c_int, 1);
pub const _THREAD_SAFE = @as(c_int, 1);
pub const HAVE_LIBPTHREAD = @as(c_int, 1);
pub const THREAD_IMPL_H = "thread_pthread.h";
pub const THREAD_IMPL_SRC = "thread_pthread.c";
pub const HAVE_LIBCRYPT = @as(c_int, 1);
pub const HAVE_LIBDL = @as(c_int, 1);
pub const HAVE_DIRENT_H = @as(c_int, 1);
pub const HAVE__BOOL = @as(c_int, 1);
pub const HAVE_STDBOOL_H = @as(c_int, 1);
pub const HAVE_SYS_WAIT_H = @as(c_int, 1);
pub const HAVE_GRP_H = @as(c_int, 1);
pub const HAVE_FCNTL_H = @as(c_int, 1);
pub const HAVE_FLOAT_H = @as(c_int, 1);
pub const HAVE_LANGINFO_H = @as(c_int, 1);
pub const HAVE_LIMITS_H = @as(c_int, 1);
pub const HAVE_LOCALE_H = @as(c_int, 1);
pub const HAVE_MALLOC_H = @as(c_int, 1);
pub const HAVE_PWD_H = @as(c_int, 1);
pub const HAVE_SANITIZER_ASAN_INTERFACE_H = @as(c_int, 1);
pub const HAVE_SANITIZER_TSAN_INTERFACE_H = @as(c_int, 1);
pub const HAVE_STDALIGN_H = @as(c_int, 1);
pub const HAVE_SYS_EVENTFD_H = @as(c_int, 1);
pub const HAVE_SYS_FCNTL_H = @as(c_int, 1);
pub const HAVE_SYS_FILE_H = @as(c_int, 1);
pub const HAVE_SYS_IOCTL_H = @as(c_int, 1);
pub const HAVE_SYS_PARAM_H = @as(c_int, 1);
pub const HAVE_SYS_PRCTL_H = @as(c_int, 1);
pub const HAVE_SYS_RANDOM_H = @as(c_int, 1);
pub const HAVE_SYS_RESOURCE_H = @as(c_int, 1);
pub const HAVE_SYS_SELECT_H = @as(c_int, 1);
pub const HAVE_SYS_SENDFILE_H = @as(c_int, 1);
pub const HAVE_SYS_SOCKET_H = @as(c_int, 1);
pub const HAVE_SYS_SYSCALL_H = @as(c_int, 1);
pub const HAVE_SYS_SYSMACROS_H = @as(c_int, 1);
pub const HAVE_SYS_TIME_H = @as(c_int, 1);
pub const HAVE_SYS_TIMES_H = @as(c_int, 1);
pub const HAVE_SYS_UIO_H = @as(c_int, 1);
pub const HAVE_SYSCALL_H = @as(c_int, 1);
pub const HAVE_TIME_H = @as(c_int, 1);
pub const HAVE_UCONTEXT_H = @as(c_int, 1);
pub const HAVE_UTIME_H = @as(c_int, 1);
pub const HAVE_SYS_EPOLL_H = @as(c_int, 1);
pub const HAVE_STDATOMIC_H = @as(c_int, 1);
pub const HAVE_X86INTRIN_H = @as(c_int, 1);
pub const HAVE_GMP_H = @as(c_int, 1);
pub const HAVE_LIBGMP = @as(c_int, 1);
pub const HAVE_TYPEOF = @as(c_int, 1);
pub const restrict = @compileError("unable to translate C expr: unexpected token '__restrict__'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:87:9
pub const HAVE_LONG_LONG = @as(c_int, 1);
pub const HAVE_OFF_T = @as(c_int, 1);
pub const SIZEOF_INT = @as(c_int, 4);
pub const SIZEOF_SHORT = @as(c_int, 2);
pub const SIZEOF_LONG = @as(c_int, 8);
pub const SIZEOF_LONG_LONG = @as(c_int, 8);
pub const SIZEOF___INT64 = @as(c_int, 0);
pub const SIZEOF___INT128 = @as(c_int, 16);
pub const SIZEOF_OFF_T = @as(c_int, 8);
pub const SIZEOF_VOIDP = @as(c_int, 8);
pub const SIZEOF_FLOAT = @as(c_int, 4);
pub const SIZEOF_DOUBLE = @as(c_int, 8);
pub const SIZEOF_TIME_T = @as(c_int, 8);
pub const SIZEOF_CLOCK_T = @as(c_int, 8);
pub const RBIMPL_ATTR_PACKED_STRUCT_BEGIN = @compileError("unable to translate C expr: unexpected token ''");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:102:9
pub const RBIMPL_ATTR_PACKED_STRUCT_END = @compileError("unable to translate macro: undefined identifier `packed`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:103:9
pub const USE_UNALIGNED_MEMBER_ACCESS = @as(c_int, 1);
pub const PRI_LL_PREFIX = "ll";
pub const HAVE_PID_T = @as(c_int, 1);
pub const rb_pid_t = pid_t;
pub const SIGNEDNESS_OF_PID_T = -@as(c_int, 1);
pub inline fn PIDT2NUM(v: anytype) @TypeOf(INT2NUM(v)) {
    _ = &v;
    return INT2NUM(v);
}
pub inline fn NUM2PIDT(v: anytype) @TypeOf(NUM2INT(v)) {
    _ = &v;
    return NUM2INT(v);
}
pub const PRI_PIDT_PREFIX = PRI_INT_PREFIX;
pub const HAVE_UID_T = @as(c_int, 1);
pub const rb_uid_t = uid_t;
pub const SIGNEDNESS_OF_UID_T = @as(c_int, 1);
pub inline fn UIDT2NUM(v: anytype) @TypeOf(UINT2NUM(v)) {
    _ = &v;
    return UINT2NUM(v);
}
pub inline fn NUM2UIDT(v: anytype) @TypeOf(NUM2UINT(v)) {
    _ = &v;
    return NUM2UINT(v);
}
pub const PRI_UIDT_PREFIX = PRI_INT_PREFIX;
pub const HAVE_GID_T = @as(c_int, 1);
pub const rb_gid_t = gid_t;
pub const SIGNEDNESS_OF_GID_T = @as(c_int, 1);
pub inline fn GIDT2NUM(v: anytype) @TypeOf(UINT2NUM(v)) {
    _ = &v;
    return UINT2NUM(v);
}
pub inline fn NUM2GIDT(v: anytype) @TypeOf(NUM2UINT(v)) {
    _ = &v;
    return NUM2UINT(v);
}
pub const PRI_GIDT_PREFIX = PRI_INT_PREFIX;
pub const HAVE_TIME_T = @as(c_int, 1);
pub const rb_time_t = time_t;
pub const SIGNEDNESS_OF_TIME_T = -@as(c_int, 1);
pub inline fn TIMET2NUM(v: anytype) @TypeOf(LONG2NUM(v)) {
    _ = &v;
    return LONG2NUM(v);
}
pub inline fn NUM2TIMET(v: anytype) @TypeOf(NUM2LONG(v)) {
    _ = &v;
    return NUM2LONG(v);
}
pub const PRI_TIMET_PREFIX = PRI_LONG_PREFIX;
pub const HAVE_DEV_T = @as(c_int, 1);
pub const rb_dev_t = dev_t;
pub const SIGNEDNESS_OF_DEV_T = @as(c_int, 1);
pub inline fn DEVT2NUM(v: anytype) @TypeOf(ULONG2NUM(v)) {
    _ = &v;
    return ULONG2NUM(v);
}
pub inline fn NUM2DEVT(v: anytype) @TypeOf(NUM2ULONG(v)) {
    _ = &v;
    return NUM2ULONG(v);
}
pub const PRI_DEVT_PREFIX = PRI_LONG_PREFIX;
pub const HAVE_MODE_T = @as(c_int, 1);
pub const rb_mode_t = mode_t;
pub const SIGNEDNESS_OF_MODE_T = @as(c_int, 1);
pub inline fn MODET2NUM(v: anytype) @TypeOf(UINT2NUM(v)) {
    _ = &v;
    return UINT2NUM(v);
}
pub inline fn NUM2MODET(v: anytype) @TypeOf(NUM2UINT(v)) {
    _ = &v;
    return NUM2UINT(v);
}
pub const PRI_MODET_PREFIX = PRI_INT_PREFIX;
pub const HAVE_RLIM_T = @as(c_int, 1);
pub const rb_rlim_t = @compileError("unable to translate macro: undefined identifier `rlim_t`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:143:9
pub const SIGNEDNESS_OF_RLIM_T = @as(c_int, 1);
pub inline fn RLIM2NUM(v: anytype) @TypeOf(ULONG2NUM(v)) {
    _ = &v;
    return ULONG2NUM(v);
}
pub inline fn NUM2RLIM(v: anytype) @TypeOf(NUM2ULONG(v)) {
    _ = &v;
    return NUM2ULONG(v);
}
pub const PRI_RLIM_PREFIX = PRI_LONG_PREFIX;
pub const rb_off_t = off_t;
pub const SIGNEDNESS_OF_OFF_T = -@as(c_int, 1);
pub inline fn OFFT2NUM(v: anytype) @TypeOf(LONG2NUM(v)) {
    _ = &v;
    return LONG2NUM(v);
}
pub inline fn NUM2OFFT(v: anytype) @TypeOf(NUM2LONG(v)) {
    _ = &v;
    return NUM2LONG(v);
}
pub const PRI_OFFT_PREFIX = PRI_LONG_PREFIX;
pub const HAVE_CLOCKID_T = @as(c_int, 1);
pub const rb_clockid_t = clockid_t;
pub const SIGNEDNESS_OF_CLOCKID_T = -@as(c_int, 1);
pub inline fn CLOCKID2NUM(v: anytype) @TypeOf(INT2NUM(v)) {
    _ = &v;
    return INT2NUM(v);
}
pub inline fn NUM2CLOCKID(v: anytype) @TypeOf(NUM2INT(v)) {
    _ = &v;
    return NUM2INT(v);
}
pub const PRI_CLOCKID_PREFIX = PRI_INT_PREFIX;
pub const HAVE_VA_ARGS_MACRO = @as(c_int, 1);
pub const HAVE__ALIGNOF = @as(c_int, 1);
pub const CONSTFUNC = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:162:9
pub const PUREFUNC = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:163:9
pub const NORETURN = @compileError("unable to translate macro: undefined identifier `__noreturn__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:164:9
pub const DEPRECATED = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:165:9
pub const DEPRECATED_BY = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:166:9
pub const NOINLINE = @compileError("unable to translate macro: undefined identifier `__noinline__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:167:9
pub const ALWAYS_INLINE = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:168:9
pub const NO_SANITIZE = @compileError("unable to translate macro: undefined identifier `__no_sanitize__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:169:9
pub const NO_SANITIZE_ADDRESS = @compileError("unable to translate macro: undefined identifier `__no_sanitize_address__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:170:9
pub const NO_ADDRESS_SAFETY_ANALYSIS = @compileError("unable to translate macro: undefined identifier `__no_address_safety_analysis__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:171:9
pub const WARN_UNUSED_RESULT = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:172:9
pub const MAYBE_UNUSED = @compileError("unable to translate macro: undefined identifier `__unused__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:173:9
pub const ERRORFUNC = @compileError("unable to translate macro: undefined identifier `__error__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:174:9
pub const WARNINGFUNC = @compileError("unable to translate macro: undefined identifier `__warning__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:175:9
pub const WEAK = @compileError("unable to translate macro: undefined identifier `__weak__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:176:9
pub const HAVE_FUNC_WEAK = @as(c_int, 1);
pub const HAVE_NULLPTR = @as(c_int, 1);
pub const FUNC_UNOPTIMIZED = @compileError("unable to translate macro: undefined identifier `__optimize__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:179:9
pub const FUNC_MINIMIZED = @compileError("unable to translate macro: undefined identifier `__optimize__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:180:9
pub const HAVE_ATTRIBUTE_FUNCTION_ALIAS = @as(c_int, 1);
pub const RUBY_ALIAS_FUNCTION_TYPE = @compileError("unable to translate macro: undefined identifier `alias`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:182:9
pub inline fn RUBY_ALIAS_FUNCTION_VOID(prot: anytype, name: anytype, args: anytype) @TypeOf(RUBY_ALIAS_FUNCTION_TYPE(anyopaque, prot, name, args)) {
    _ = &prot;
    _ = &name;
    _ = &args;
    return RUBY_ALIAS_FUNCTION_TYPE(anyopaque, prot, name, args);
}
pub const HAVE_GCC_ATOMIC_BUILTINS = @as(c_int, 1);
pub const HAVE_GCC_ATOMIC_BUILTINS_64 = @as(c_int, 1);
pub const HAVE_GCC_SYNC_BUILTINS = @as(c_int, 1);
pub const HAVE___BUILTIN_UNREACHABLE = @as(c_int, 1);
pub const RUBY_FUNC_EXPORTED = @compileError("unable to translate macro: undefined identifier `__visibility__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:188:9
pub const RUBY_FUNC_NONNULL = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:189:9
pub const RUBY_FUNCTION_NAME_STRING = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:190:9
pub const ENUM_OVER_INT = @as(c_int, 1);
pub const HAVE_DECL_SYS_NERR = @as(c_int, 0);
pub const HAVE_DECL_GETENV = @as(c_int, 1);
pub const SIZEOF_SIZE_T = @as(c_int, 8);
pub const SIZEOF_PTRDIFF_T = @as(c_int, 8);
pub const SIZEOF_DEV_T = @as(c_int, 8);
pub const PRI_SIZE_PREFIX = "z";
pub const PRI_PTRDIFF_PREFIX = "t";
pub const HAVE_STRUCT_STAT_ST_BLKSIZE = @as(c_int, 1);
pub const HAVE_STRUCT_STAT_ST_BLOCKS = @as(c_int, 1);
pub const HAVE_STRUCT_STAT_ST_RDEV = @as(c_int, 1);
pub const SIZEOF_STRUCT_STAT_ST_SIZE = SIZEOF_OFF_T;
pub const SIZEOF_STRUCT_STAT_ST_BLOCKS = SIZEOF_OFF_T;
pub const SIZEOF_STRUCT_STAT_ST_INO = SIZEOF_LONG;
pub const SIZEOF_STRUCT_STAT_ST_DEV = SIZEOF_DEV_T;
pub const SIZEOF_STRUCT_STAT_ST_RDEV = SIZEOF_DEV_T;
pub const HAVE_STRUCT_STAT_ST_ATIM = @as(c_int, 1);
pub const HAVE_STRUCT_STAT_ST_MTIM = @as(c_int, 1);
pub const HAVE_STRUCT_STAT_ST_CTIM = @as(c_int, 1);
pub const HAVE_STRUCT_STATX_STX_BTIME = @as(c_int, 1);
pub const HAVE_STRUCT_TIMEVAL = @as(c_int, 1);
pub const SIZEOF_STRUCT_TIMEVAL_TV_SEC = SIZEOF_TIME_T;
pub const HAVE_STRUCT_TIMESPEC = @as(c_int, 1);
pub const HAVE_STRUCT_TIMEZONE = @as(c_int, 1);
pub const HAVE_RB_FD_INIT = @as(c_int, 1);
pub const HAVE_INT8_T = @as(c_int, 1);
pub const SIZEOF_INT8_T = @as(c_int, 1);
pub const HAVE_UINT8_T = @as(c_int, 1);
pub const SIZEOF_UINT8_T = @as(c_int, 1);
pub const HAVE_INT16_T = @as(c_int, 1);
pub const SIZEOF_INT16_T = @as(c_int, 2);
pub const HAVE_UINT16_T = @as(c_int, 1);
pub const SIZEOF_UINT16_T = @as(c_int, 2);
pub const HAVE_INT32_T = @as(c_int, 1);
pub const SIZEOF_INT32_T = @as(c_int, 4);
pub const HAVE_UINT32_T = @as(c_int, 1);
pub const SIZEOF_UINT32_T = @as(c_int, 4);
pub const HAVE_INT64_T = @as(c_int, 1);
pub const SIZEOF_INT64_T = @as(c_int, 8);
pub const HAVE_UINT64_T = @as(c_int, 1);
pub const SIZEOF_UINT64_T = @as(c_int, 8);
pub const HAVE_INT128_T = @as(c_int, 1);
pub const int128_t = @compileError("unable to translate C expr: unexpected token '__int128'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:233:9
pub const SIZEOF_INT128_T = SIZEOF___INT128;
pub const HAVE_UINT128_T = @as(c_int, 1);
pub const uint128_t = @compileError("unable to translate C expr: unexpected token '__int128'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:236:9
pub const SIZEOF_UINT128_T = SIZEOF___INT128;
pub const HAVE_INTPTR_T = @as(c_int, 1);
pub const SIZEOF_INTPTR_T = @as(c_int, 8);
pub const HAVE_UINTPTR_T = @as(c_int, 1);
pub const SIZEOF_UINTPTR_T = @as(c_int, 8);
pub const HAVE_SSIZE_T = @as(c_int, 1);
pub const SIZEOF_SSIZE_T = @as(c_int, 8);
pub const STACK_END_ADDRESS = @compileError("unable to translate macro: undefined identifier `__libc_stack_end`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:244:9
pub const GETGROUPS_T = gid_t;
pub const HAVE_ALLOCA_H = @as(c_int, 1);
pub const HAVE_ALLOCA = @as(c_int, 1);
pub const HAVE_DUP = @as(c_int, 1);
pub const HAVE_DUP2 = @as(c_int, 1);
pub const HAVE_ACOSH = @as(c_int, 1);
pub const HAVE_CBRT = @as(c_int, 1);
pub const HAVE_CRYPT = @as(c_int, 1);
pub const HAVE_ERF = @as(c_int, 1);
pub const HAVE_EXPLICIT_BZERO = @as(c_int, 1);
pub const HAVE_FFS = @as(c_int, 1);
pub const HAVE_FLOCK = @as(c_int, 1);
pub const HAVE_HYPOT = @as(c_int, 1);
pub const HAVE_LGAMMA_R = @as(c_int, 1);
pub const HAVE_MEMMOVE = @as(c_int, 1);
pub const HAVE_NAN = @as(c_int, 1);
pub const HAVE_NEXTAFTER = @as(c_int, 1);
pub const HAVE_STRCHR = @as(c_int, 1);
pub const HAVE_STRERROR = @as(c_int, 1);
pub const HAVE_STRLCAT = @as(c_int, 1);
pub const HAVE_STRLCPY = @as(c_int, 1);
pub const HAVE_STRSTR = @as(c_int, 1);
pub const HAVE_TGAMMA = @as(c_int, 1);
pub const HAVE_ISFINITE = @as(c_int, 1);
pub const SPT_TYPE = @compileError("unable to translate macro: undefined identifier `SPT_REUSEARGV`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:269:9
pub const HAVE_SIGNBIT = @as(c_int, 1);
pub const HAVE_FORK = @as(c_int, 1);
pub const HAVE_VFORK = @as(c_int, 1);
pub const HAVE_WORKING_VFORK = @as(c_int, 1);
pub const HAVE_WORKING_FORK = @as(c_int, 1);
pub const HAVE__LONGJMP = @as(c_int, 1);
pub const HAVE_ARC4RANDOM_BUF = @as(c_int, 1);
pub const HAVE_ATAN2L = @as(c_int, 1);
pub const HAVE_ATAN2F = @as(c_int, 1);
pub const HAVE_DECL_ATOMIC_SIGNAL_FENCE = @as(c_int, 1);
pub const HAVE_CHMOD = @as(c_int, 1);
pub const HAVE_CHOWN = @as(c_int, 1);
pub const HAVE_CHROOT = @as(c_int, 1);
pub const HAVE_CLOCK_GETTIME = @as(c_int, 1);
pub const HAVE_COPY_FILE_RANGE = @as(c_int, 1);
pub const HAVE_COSH = @as(c_int, 1);
pub const HAVE_CRYPT_R = @as(c_int, 1);
pub const HAVE_DIRFD = @as(c_int, 1);
pub const HAVE_DL_ITERATE_PHDR = @as(c_int, 1);
pub const HAVE_DLOPEN = @as(c_int, 1);
pub const HAVE_DLADDR = @as(c_int, 1);
pub const HAVE_DUP3 = @as(c_int, 1);
pub const HAVE_EACCESS = @as(c_int, 1);
pub const HAVE_ENDGRENT = @as(c_int, 1);
pub const HAVE_EVENTFD = @as(c_int, 1);
pub const HAVE_EXECL = @as(c_int, 1);
pub const HAVE_EXECLE = @as(c_int, 1);
pub const HAVE_EXECV = @as(c_int, 1);
pub const HAVE_EXECVE = @as(c_int, 1);
pub const HAVE_FCHDIR = @as(c_int, 1);
pub const HAVE_FCHMOD = @as(c_int, 1);
pub const HAVE_FCHOWN = @as(c_int, 1);
pub const HAVE_FCNTL = @as(c_int, 1);
pub const HAVE_FDATASYNC = @as(c_int, 1);
pub const HAVE_FDOPENDIR = @as(c_int, 1);
pub const HAVE_FMOD = @as(c_int, 1);
pub const HAVE_FSTATAT = @as(c_int, 1);
pub const HAVE_FSYNC = @as(c_int, 1);
pub const HAVE_FTRUNCATE = @as(c_int, 1);
pub const HAVE_FTRUNCATE64 = @as(c_int, 1);
pub const HAVE_GETCWD = @as(c_int, 1);
pub const HAVE_GETEGID = @as(c_int, 1);
pub const HAVE_GETENTROPY = @as(c_int, 1);
pub const HAVE_GETEUID = @as(c_int, 1);
pub const HAVE_GETGID = @as(c_int, 1);
pub const HAVE_GETGRNAM = @as(c_int, 1);
pub const HAVE_GETGRNAM_R = @as(c_int, 1);
pub const HAVE_GETGROUPS = @as(c_int, 1);
pub const HAVE_GETLOGIN = @as(c_int, 1);
pub const HAVE_GETLOGIN_R = @as(c_int, 1);
pub const HAVE_GETPGID = @as(c_int, 1);
pub const HAVE_GETPGRP = @as(c_int, 1);
pub const HAVE_GETPPID = @as(c_int, 1);
pub const HAVE_GETPRIORITY = @as(c_int, 1);
pub const HAVE_GETPWNAM = @as(c_int, 1);
pub const HAVE_GETPWNAM_R = @as(c_int, 1);
pub const HAVE_GETPWUID = @as(c_int, 1);
pub const HAVE_GETPWUID_R = @as(c_int, 1);
pub const HAVE_GETRANDOM = @as(c_int, 1);
pub const HAVE_GETRESGID = @as(c_int, 1);
pub const HAVE_GETRESUID = @as(c_int, 1);
pub const HAVE_GETRLIMIT = @as(c_int, 1);
pub const HAVE_GETSID = @as(c_int, 1);
pub const HAVE_GETTIMEOFDAY = @as(c_int, 1);
pub const HAVE_GETUID = @as(c_int, 1);
pub const HAVE_GMTIME_R = @as(c_int, 1);
pub const HAVE_INITGROUPS = @as(c_int, 1);
pub const HAVE_IOCTL = @as(c_int, 1);
pub const HAVE_KILL = @as(c_int, 1);
pub const HAVE_KILLPG = @as(c_int, 1);
pub const HAVE_LCHMOD = @as(c_int, 1);
pub const HAVE_LCHOWN = @as(c_int, 1);
pub const HAVE_LINK = @as(c_int, 1);
pub const HAVE_LLABS = @as(c_int, 1);
pub const HAVE_LOCKF = @as(c_int, 1);
pub const HAVE_LOG2 = @as(c_int, 1);
pub const HAVE_LSTAT = @as(c_int, 1);
pub const HAVE_LUTIMES = @as(c_int, 1);
pub const HAVE_MALLOC_USABLE_SIZE = @as(c_int, 1);
pub const HAVE_MALLOC_TRIM = @as(c_int, 1);
pub const HAVE_MBLEN = @as(c_int, 1);
pub const HAVE_MEMALIGN = @as(c_int, 1);
pub const HAVE_WRITEV = @as(c_int, 1);
pub const HAVE_MEMRCHR = @as(c_int, 1);
pub const HAVE_MEMMEM = @as(c_int, 1);
pub const HAVE_MKFIFO = @as(c_int, 1);
pub const HAVE_MKNOD = @as(c_int, 1);
pub const HAVE_MKTIME = @as(c_int, 1);
pub const HAVE_MMAP = @as(c_int, 1);
pub const HAVE_MREMAP = @as(c_int, 1);
pub const HAVE_OPENAT = @as(c_int, 1);
pub const HAVE_PCLOSE = @as(c_int, 1);
pub const HAVE_PIPE = @as(c_int, 1);
pub const HAVE_PIPE2 = @as(c_int, 1);
pub const HAVE_POLL = @as(c_int, 1);
pub const HAVE_POPEN = @as(c_int, 1);
pub const HAVE_POSIX_FADVISE = @as(c_int, 1);
pub const HAVE_POSIX_MADVISE = @as(c_int, 1);
pub const HAVE_POSIX_MEMALIGN = @as(c_int, 1);
pub const HAVE_PPOLL = @as(c_int, 1);
pub const HAVE_PREAD = @as(c_int, 1);
pub const HAVE_PWRITE = @as(c_int, 1);
pub const HAVE_QSORT_R = @as(c_int, 1);
pub const HAVE_READLINK = @as(c_int, 1);
pub const HAVE_REALPATH = @as(c_int, 1);
pub const HAVE_ROUND = @as(c_int, 1);
pub const HAVE_SCHED_GETAFFINITY = @as(c_int, 1);
pub const HAVE_SEEKDIR = @as(c_int, 1);
pub const HAVE_SENDFILE = @as(c_int, 1);
pub const HAVE_SETEGID = @as(c_int, 1);
pub const HAVE_SETENV = @as(c_int, 1);
pub const HAVE_SETEUID = @as(c_int, 1);
pub const HAVE_SETGID = @as(c_int, 1);
pub const HAVE_SETGROUPS = @as(c_int, 1);
pub const HAVE_SETPGID = @as(c_int, 1);
pub const HAVE_SETPGRP = @as(c_int, 1);
pub const HAVE_SETREGID = @as(c_int, 1);
pub const HAVE_SETRESGID = @as(c_int, 1);
pub const HAVE_SETRESUID = @as(c_int, 1);
pub const HAVE_SETREUID = @as(c_int, 1);
pub const HAVE_SETRLIMIT = @as(c_int, 1);
pub const HAVE_SETSID = @as(c_int, 1);
pub const HAVE_SETUID = @as(c_int, 1);
pub const HAVE_SHUTDOWN = @as(c_int, 1);
pub const HAVE_SIGACTION = @as(c_int, 1);
pub const HAVE_SIGALTSTACK = @as(c_int, 1);
pub const HAVE_SIGPROCMASK = @as(c_int, 1);
pub const HAVE_SINH = @as(c_int, 1);
pub const HAVE_SNPRINTF = @as(c_int, 1);
pub const HAVE_SYMLINK = @as(c_int, 1);
pub const HAVE_SYSCALL = @as(c_int, 1);
pub const HAVE_SYSCONF = @as(c_int, 1);
pub const HAVE_SYSTEM = @as(c_int, 1);
pub const HAVE_TANH = @as(c_int, 1);
pub const HAVE_TELLDIR = @as(c_int, 1);
pub const HAVE_TIMEGM = @as(c_int, 1);
pub const HAVE_TIMES = @as(c_int, 1);
pub const HAVE_TRUNCATE = @as(c_int, 1);
pub const HAVE_TRUNCATE64 = @as(c_int, 1);
pub const HAVE_TZSET = @as(c_int, 1);
pub const HAVE_UMASK = @as(c_int, 1);
pub const HAVE_UNSETENV = @as(c_int, 1);
pub const HAVE_UTIMENSAT = @as(c_int, 1);
pub const HAVE_UTIMES = @as(c_int, 1);
pub const HAVE_WAIT4 = @as(c_int, 1);
pub const HAVE_WAITPID = @as(c_int, 1);
pub const HAVE_STATX = @as(c_int, 1);
pub const HAVE_CRYPT_H = @as(c_int, 1);
pub const HAVE_STRUCT_CRYPT_DATA_INITIALIZED = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_ALLOCA_WITH_ALIGN = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_ASSUME_ALIGNED = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_BSWAP16 = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_BSWAP32 = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_BSWAP64 = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_POPCOUNT = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_POPCOUNTLL = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_CLZ = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_CLZL = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_CLZLL = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_CTZ = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_CTZLL = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_CONSTANT_P = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_CHOOSE_EXPR = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_CHOOSE_EXPR_CONSTANT_P = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_TYPES_COMPATIBLE_P = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_TRAP = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_EXPECT = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_ADD_OVERFLOW = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_ADD_OVERFLOW_P = @as(c_int, 1);
pub const USE___BUILTIN_ADD_OVERFLOW_LONG_LONG = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_SUB_OVERFLOW = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_SUB_OVERFLOW_P = @as(c_int, 1);
pub const USE___BUILTIN_SUB_OVERFLOW_LONG_LONG = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_MUL_OVERFLOW = @as(c_int, 1);
pub const HAVE_BUILTIN___BUILTIN_MUL_OVERFLOW_P = @as(c_int, 1);
pub const USE___BUILTIN_MUL_OVERFLOW_LONG_LONG = @as(c_int, 1);
pub const HAVE_GNU_QSORT_R = @as(c_int, 1);
pub const ATAN2_INF_C99 = @as(c_int, 1);
pub const HAVE_CLOCK_GETRES = @as(c_int, 1);
pub const HAVE_LIBRT = @as(c_int, 1);
pub const HAVE_TIMER_CREATE = @as(c_int, 1);
pub const HAVE_TIMER_SETTIME = @as(c_int, 1);
pub const HAVE_STRUCT_TM_TM_ZONE = @as(c_int, 1);
pub const HAVE_TM_ZONE = @as(c_int, 1);
pub const HAVE_STRUCT_TM_TM_GMTOFF = @as(c_int, 1);
pub const HAVE_DAYLIGHT = @as(c_int, 1);
pub const NEGATIVE_TIME_T = @as(c_int, 1);
pub const POSIX_SIGNAL = @as(c_int, 1);
pub const HAVE_SIG_T = @as(c_int, 1);
pub inline fn RSHIFT(x: anytype, y: anytype) @TypeOf(x >> @import("std").zig.c_translation.cast(c_int, y)) {
    _ = &x;
    _ = &y;
    return x >> @import("std").zig.c_translation.cast(c_int, y);
}
pub const USE_COPY_FILE_RANGE = @as(c_int, 1);
pub const HAVE__SC_CLK_TCK = @as(c_int, 1);
pub const STACK_GROW_DIRECTION = -@as(c_int, 1);
pub const COROUTINE_H = "coroutine/amd64/Context.h";
pub const HAVE_SCHED_YIELD = @as(c_int, 1);
pub const HAVE_PTHREAD_ATTR_SETINHERITSCHED = @as(c_int, 1);
pub const HAVE_PTHREAD_ATTR_GETSTACK = @as(c_int, 1);
pub const HAVE_PTHREAD_ATTR_GETGUARDSIZE = @as(c_int, 1);
pub const HAVE_PTHREAD_CONDATTR_SETCLOCK = @as(c_int, 1);
pub const HAVE_PTHREAD_SETNAME_NP = @as(c_int, 1);
pub const HAVE_PTHREAD_SIGMASK = @as(c_int, 1);
pub const HAVE_PTHREAD_GETATTR_NP = @as(c_int, 1);
pub const SET_CURRENT_THREAD_NAME = @compileError("unable to translate macro: undefined identifier `pthread_setname_np`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:473:9
pub const SET_ANOTHER_THREAD_NAME = @compileError("unable to translate macro: undefined identifier `pthread_setname_np`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:474:9
pub const RB_THREAD_LOCAL_SPECIFIER = @compileError("unable to translate C expr: unexpected token '_Thread_local'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:475:9
pub const DEFINE_MCONTEXT_PTR = @compileError("unable to translate macro: undefined identifier `mcontext_t`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:476:9
pub const HAVE_GETCONTEXT = @as(c_int, 1);
pub const HAVE_SETCONTEXT = @as(c_int, 1);
pub const HAVE_SYS_USER_H = @as(c_int, 1);
pub const HAVE_CONST_PAGE_SIZE = @as(c_int, 0);
pub const IOCTL_REQ_TYPE = c_ulong;
pub inline fn NUM2IOCTLREQ(num: anytype) @TypeOf(NUM2ULONG(num)) {
    _ = &num;
    return NUM2ULONG(num);
}
pub const USE_ELF = @as(c_int, 1);
pub const HAVE_ELF_H = @as(c_int, 1);
pub const HAVE_LIBZ = @as(c_int, 1);
pub const HAVE_BACKTRACE = @as(c_int, 1);
pub const HAVE_VALGRIND_MEMCHECK_H = @as(c_int, 1);
pub const DLEXT_MAXLEN = @as(c_int, 3);
pub const DLEXT = ".so";
pub const SOEXT = ".so";
pub const LIBDIR_BASENAME = "lib";
pub const HAVE__SETJMP = @as(c_int, 1);
pub const RUBY_SETJMP = @compileError("unable to translate macro: undefined identifier `__builtin_setjmp`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:493:9
pub const RUBY_LONGJMP = @compileError("unable to translate macro: undefined identifier `__builtin_longjmp`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:494:9
pub const USE_MODULAR_GC = @as(c_int, 0);
pub const USE_YJIT = @as(c_int, 0);
pub const USE_ZJIT = @as(c_int, 0);
pub const RUBY_PLATFORM = "x86_64-linux";
pub const RB_DEFAULT_PARSER = @compileError("unable to translate macro: undefined identifier `RB_DEFAULT_PARSER_PRISM`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/x86_64-linux/ruby/config.h:499:9
pub const RBIMPL_COMPILER_SINCE_H = "";
pub const RBIMPL_COMPILER_IS_H = "";
pub const RBIMPL_COMPILER_IS = @compileError("unable to translate macro: undefined identifier `RBIMPL_COMPILER_IS_`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/compiler_is.h:30:9
pub const RBIMPL_COMPILER_IS_APPLE_H = "";
pub const RBIMPL_COMPILER_IS_Apple = @as(c_int, 0);
pub const RBIMPL_COMPILER_IS_CLANG_H = "";
pub const RBIMPL_COMPILER_IS_Clang = @as(c_int, 1);
pub const RBIMPL_COMPILER_VERSION_MAJOR = __clang_major__;
pub const RBIMPL_COMPILER_VERSION_MINOR = __clang_minor__;
pub const RBIMPL_COMPILER_VERSION_PATCH = __clang_patchlevel__;
pub const RBIMPL_COMPILER_IS_GCC_H = "";
pub const RBIMPL_COMPILER_IS_INTEL_H = "";
pub const RBIMPL_COMPILER_IS_Intel = @as(c_int, 0);
pub const RBIMPL_COMPILER_IS_GCC = @as(c_int, 0);
pub const RBIMPL_COMPILER_IS_MSVC_H = "";
pub const RBIMPL_COMPILER_IS_MSVC = @as(c_int, 0);
pub const RBIMPL_COMPILER_IS_SUNPRO_H = "";
pub const RBIMPL_COMPILER_IS_SunPro = @as(c_int, 0);
pub inline fn RBIMPL_COMPILER_SINCE(cc: anytype, x: anytype, y: anytype, z: anytype) @TypeOf((RBIMPL_COMPILER_IS(cc) != 0) and ((RBIMPL_COMPILER_VERSION_MAJOR > x) or ((RBIMPL_COMPILER_VERSION_MAJOR == x) and ((RBIMPL_COMPILER_VERSION_MINOR > y) or ((RBIMPL_COMPILER_VERSION_MINOR == y) and (RBIMPL_COMPILER_VERSION_PATCH >= z)))))) {
    _ = &cc;
    _ = &x;
    _ = &y;
    _ = &z;
    return (RBIMPL_COMPILER_IS(cc) != 0) and ((RBIMPL_COMPILER_VERSION_MAJOR > x) or ((RBIMPL_COMPILER_VERSION_MAJOR == x) and ((RBIMPL_COMPILER_VERSION_MINOR > y) or ((RBIMPL_COMPILER_VERSION_MINOR == y) and (RBIMPL_COMPILER_VERSION_PATCH >= z)))));
}
pub inline fn RBIMPL_COMPILER_BEFORE(cc: anytype, x: anytype, y: anytype, z: anytype) @TypeOf((RBIMPL_COMPILER_IS(cc) != 0) and ((RBIMPL_COMPILER_VERSION_MAJOR < x) or ((RBIMPL_COMPILER_VERSION_MAJOR == x) and ((RBIMPL_COMPILER_VERSION_MINOR < y) or ((RBIMPL_COMPILER_VERSION_MINOR == y) and (RBIMPL_COMPILER_VERSION_PATCH < z)))))) {
    _ = &cc;
    _ = &x;
    _ = &y;
    _ = &z;
    return (RBIMPL_COMPILER_IS(cc) != 0) and ((RBIMPL_COMPILER_VERSION_MAJOR < x) or ((RBIMPL_COMPILER_VERSION_MAJOR == x) and ((RBIMPL_COMPILER_VERSION_MINOR < y) or ((RBIMPL_COMPILER_VERSION_MINOR == y) and (RBIMPL_COMPILER_VERSION_PATCH < z)))));
}
pub const HAVE_PROTOTYPES = @as(c_int, 1);
pub const HAVE_STDARG_PROTOTYPES = @as(c_int, 1);
pub const TOKEN_PASTE = @compileError("unable to translate C expr: unexpected token '##'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/config.h:37:9
pub inline fn STRINGIZE(expr: anytype) @TypeOf(STRINGIZE0(expr)) {
    _ = &expr;
    return STRINGIZE0(expr);
}
pub const STRINGIZE0 = @compileError("unable to translate C expr: unexpected token '#'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/config.h:82:10
pub const UNALIGNED_WORD_ACCESS = @as(c_int, 1);
pub const RBIMPL_TEST3 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/config.h:138:10
pub const RBIMPL_TEST2 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/config.h:139:10
pub inline fn RBIMPL_TEST1() @TypeOf(RBIMPL_TEST2("ruby")) {
    return RBIMPL_TEST2("ruby");
}
pub const HAVE___VA_OPT__ = "";
pub const __need___va_list = "";
pub const __need_va_list = "";
pub const __need_va_arg = "";
pub const __need___va_copy = "";
pub const __need_va_copy = "";
pub const __STDARG_H = "";
pub const __GNUC_VA_LIST = "";
pub const _VA_LIST = "";
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`");
// /home/user/.config/Windsurf/User/globalStorage/ziglang.vscode-zig/zig/x86_64-linux-0.15.2/lib/include/__stdarg_va_arg.h:17:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`");
// /home/user/.config/Windsurf/User/globalStorage/ziglang.vscode-zig/zig/x86_64-linux-0.15.2/lib/include/__stdarg_va_arg.h:19:9
pub const va_arg = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /home/user/.config/Windsurf/User/globalStorage/ziglang.vscode-zig/zig/x86_64-linux-0.15.2/lib/include/__stdarg_va_arg.h:20:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// /home/user/.config/Windsurf/User/globalStorage/ziglang.vscode-zig/zig/x86_64-linux-0.15.2/lib/include/__stdarg___va_copy.h:11:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// /home/user/.config/Windsurf/User/globalStorage/ziglang.vscode-zig/zig/x86_64-linux-0.15.2/lib/include/__stdarg_va_copy.h:11:9
pub const RUBY_DEFINES_H = @as(c_int, 1);
pub const _STDIO_H = @as(c_int, 1);
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`");
// /usr/include/features.h:188:9
pub const _ISOC95_SOURCE = @as(c_int, 1);
pub const _ISOC99_SOURCE = @as(c_int, 1);
pub const _ISOC11_SOURCE = @as(c_int, 1);
pub const _ISOC2X_SOURCE = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const _XOPEN_SOURCE = @as(c_int, 700);
pub const _XOPEN_SOURCE_EXTENDED = @as(c_int, 1);
pub const _LARGEFILE64_SOURCE = @as(c_int, 1);
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const _DYNAMIC_STACK_SIZE_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2X = @as(c_int, 1);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const __USE_XOPEN = @as(c_int, 1);
pub const __USE_XOPEN_EXTENDED = @as(c_int, 1);
pub const __USE_UNIX98 = @as(c_int, 1);
pub const _LARGEFILE_SOURCE = @as(c_int, 1);
pub const __USE_XOPEN2K8XSI = @as(c_int, 1);
pub const __USE_XOPEN2KXSI = @as(c_int, 1);
pub const __USE_LARGEFILE = @as(c_int, 1);
pub const __USE_LARGEFILE64 = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_DYNAMIC_STACK_SIZE = @as(c_int, 1);
pub const __USE_GNU = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const __GLIBC_USE_C2X_STRTOL = @as(c_int, 1);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub const __GLIBC_MINOR__ = @as(c_int, 39);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:45:10
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__has_builtin(name)) {
    _ = &name;
    return __has_builtin(name);
}
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:55:10
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:82:11
pub const __COLD = @compileError("unable to translate macro: undefined identifier `__cold__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:102:11
pub inline fn __P(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:131:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:132:9
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    _ = &ptr;
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    _ = &ptr;
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    _ = &__o;
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    _ = &__o;
    return __bos(__o);
}
pub const __warnattr = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:216:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:217:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:225:10
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:256:10
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:263:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:265:11
pub const __ASMNAME = @compileError("unable to translate C expr: unexpected token ','");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:268:10
pub inline fn __ASMNAME2(prefix: anytype, cname: anytype) @TypeOf(__STRING(prefix) ++ cname) {
    _ = &prefix;
    _ = &cname;
    return __STRING(prefix) ++ cname;
}
pub const __REDIRECT_FORTIFY = __REDIRECT;
pub const __REDIRECT_FORTIFY_NTH = __REDIRECT_NTH;
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__malloc__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:298:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:309:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__alloc_align__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:315:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:325:10
pub const __attribute_const__ = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:332:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__unused__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:338:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__used__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:347:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__noinline__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:348:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:356:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:366:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__format_arg__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:379:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__format__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:389:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:401:11
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    _ = &params;
    return __attribute_nonnull__(params);
}
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__returns_nonnull__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:414:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:423:10
pub const __wur = "";
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:441:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__artificial__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:450:10
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:468:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:469:11
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:512:10
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:561:10
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    return name ++ proto ++ __THROW;
}
pub const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:638:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:639:10
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:653:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:654:10
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __fortified_attr_access = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:699:11
pub const __attr_access = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:700:11
pub const __attr_access_none = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:701:11
pub const __attr_dealloc = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:711:10
pub const __attr_dealloc_free = "";
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__returns_twice__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:718:10
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 1);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 1);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = @as(c_int, 1);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 1);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 1);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = @as(c_int, 1);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 1);
pub const __need_size_t = "";
pub const __need_NULL = "";
pub const _SIZE_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token 'typedef'");
// /usr/include/x86_64-linux-gnu/bits/types.h:137:10
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`");
// /usr/include/x86_64-linux-gnu/bits/typesizes.h:73:9
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const _____fpos_t_defined = @as(c_int, 1);
pub const ____mbstate_t_defined = @as(c_int, 1);
pub const _____fpos64_t_defined = @as(c_int, 1);
pub const ____FILE_defined = @as(c_int, 1);
pub const __FILE_defined = @as(c_int, 1);
pub const __struct_FILE_defined = @as(c_int, 1);
pub const __getc_unlocked_body = @compileError("TODO postfix inc/dec expr");
// /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h:102:9
pub const __putc_unlocked_body = @compileError("TODO postfix inc/dec expr");
// /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h:106:9
pub const _IO_EOF_SEEN = @as(c_int, 0x0010);
pub inline fn __feof_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0)) {
    _ = &_fp;
    return (_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0);
}
pub const _IO_ERR_SEEN = @as(c_int, 0x0020);
pub inline fn __ferror_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0)) {
    _ = &_fp;
    return (_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0);
}
pub const _IO_USER_LOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hex);
pub const __cookie_io_functions_t_defined = @as(c_int, 1);
pub const _VA_LIST_DEFINED = "";
pub const __off_t_defined = "";
pub const __off64_t_defined = "";
pub const __ssize_t_defined = "";
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 8192);
pub const EOF = -@as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const SEEK_DATA = @as(c_int, 3);
pub const SEEK_HOLE = @as(c_int, 4);
pub const P_tmpdir = "/tmp";
pub const L_tmpnam = @as(c_int, 20);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 238328, .decimal);
pub const _BITS_STDIO_LIM_H = @as(c_int, 1);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const L_ctermid = @as(c_int, 9);
pub const L_cuserid = @as(c_int, 9);
pub const FOPEN_MAX = @as(c_int, 16);
pub const _PRINTF_NAN_LEN_MAX = @as(c_int, 4);
pub const RENAME_NOREPLACE = @as(c_int, 1) << @as(c_int, 0);
pub const RENAME_EXCHANGE = @as(c_int, 1) << @as(c_int, 1);
pub const RENAME_WHITEOUT = @as(c_int, 1) << @as(c_int, 2);
pub const __attr_dealloc_fclose = __attr_dealloc(fclose, @as(c_int, 1));
pub const _BITS_FLOATN_H = "";
pub const __HAVE_FLOAT128 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 0);
pub const __HAVE_FLOAT64X = @as(c_int, 1);
pub const __HAVE_FLOAT64X_LONG_DOUBLE = @as(c_int, 1);
pub const _BITS_FLOATN_COMMON_H = "";
pub const __HAVE_FLOAT16 = @as(c_int, 0);
pub const __HAVE_FLOAT32 = @as(c_int, 1);
pub const __HAVE_FLOAT64 = @as(c_int, 1);
pub const __HAVE_FLOAT32X = @as(c_int, 1);
pub const __HAVE_FLOAT128X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
pub const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 0);
pub const __f32 = @import("std").zig.c_translation.Macros.F_SUFFIX;
pub inline fn __f64(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __f32x(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub const __f64x = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __CFLOAT32 = @compileError("unable to translate: TODO _Complex");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:149:12
pub const __CFLOAT64 = @compileError("unable to translate: TODO _Complex");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:160:13
pub const __CFLOAT32X = @compileError("unable to translate: TODO _Complex");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:169:12
pub const __CFLOAT64X = @compileError("unable to translate: TODO _Complex");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:178:13
pub inline fn __builtin_huge_valf32() @TypeOf(__builtin_huge_valf()) {
    return __builtin_huge_valf();
}
pub inline fn __builtin_inff32() @TypeOf(__builtin_inff()) {
    return __builtin_inff();
}
pub inline fn __builtin_nanf32(x: anytype) @TypeOf(__builtin_nanf(x)) {
    _ = &x;
    return __builtin_nanf(x);
}
pub const __builtin_nansf32 = @compileError("unable to translate macro: undefined identifier `__builtin_nansf`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:221:12
pub const __builtin_huge_valf64 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:255:13
pub const __builtin_inff64 = @compileError("unable to translate macro: undefined identifier `__builtin_inf`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:256:13
pub const __builtin_nanf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nan`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:257:13
pub const __builtin_nansf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nans`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:258:13
pub const __builtin_huge_valf32x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:272:12
pub const __builtin_inff32x = @compileError("unable to translate macro: undefined identifier `__builtin_inf`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:273:12
pub const __builtin_nanf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nan`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:274:12
pub const __builtin_nansf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nans`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:275:12
pub const __builtin_huge_valf64x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:289:13
pub const __builtin_inff64x = @compileError("unable to translate macro: undefined identifier `__builtin_infl`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:290:13
pub const __builtin_nanf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nanl`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:291:13
pub const __builtin_nansf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nansl`");
// /usr/include/x86_64-linux-gnu/bits/floatn-common.h:292:13
pub const _SYS_TYPES_H = @as(c_int, 1);
pub const __u_char_defined = "";
pub const __ino_t_defined = "";
pub const __ino64_t_defined = "";
pub const __dev_t_defined = "";
pub const __gid_t_defined = "";
pub const __mode_t_defined = "";
pub const __nlink_t_defined = "";
pub const __uid_t_defined = "";
pub const __pid_t_defined = "";
pub const __id_t_defined = "";
pub const __daddr_t_defined = "";
pub const __key_t_defined = "";
pub const __clock_t_defined = @as(c_int, 1);
pub const __clockid_t_defined = @as(c_int, 1);
pub const __time_t_defined = @as(c_int, 1);
pub const __timer_t_defined = @as(c_int, 1);
pub const __useconds_t_defined = "";
pub const __suseconds_t_defined = "";
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _ENDIAN_H = @as(c_int, 1);
pub const _BITS_ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const _BITS_ENDIANNESS_H = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    _ = &HI;
    _ = &LO;
    return blk: {
        _ = &LO;
        break :blk HI;
    };
}
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) __uint16_t {
    _ = &x;
    return @import("std").zig.c_translation.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    _ = &x;
    return ((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
pub inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    _ = &x;
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub const _SYS_SELECT_H = @as(c_int, 1);
pub const __FD_ZERO = @compileError("unable to translate macro: undefined identifier `__i`");
// /usr/include/x86_64-linux-gnu/bits/select.h:25:9
pub const __FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='");
// /usr/include/x86_64-linux-gnu/bits/select.h:32:9
pub const __FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='");
// /usr/include/x86_64-linux-gnu/bits/select.h:34:9
pub inline fn __FD_ISSET(d: anytype, s: anytype) @TypeOf((__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0)) {
    _ = &d;
    _ = &s;
    return (__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0);
}
pub const __sigset_t_defined = @as(c_int, 1);
pub const ____sigset_t_defined = "";
pub const _SIGSET_NWORDS = @import("std").zig.c_translation.MacroArithmetic.div(@as(c_int, 1024), @as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_ulong));
pub const __timeval_defined = @as(c_int, 1);
pub const _STRUCT_TIMESPEC = @as(c_int, 1);
pub const __NFDBITS = @as(c_int, 8) * @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(__fd_mask));
pub inline fn __FD_ELT(d: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS)) {
    _ = &d;
    return @import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS);
}
pub inline fn __FD_MASK(d: anytype) __fd_mask {
    _ = &d;
    return @import("std").zig.c_translation.cast(__fd_mask, @as(c_ulong, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(d, __NFDBITS));
}
pub inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.fds_bits) {
    _ = &set;
    return set.*.fds_bits;
}
pub const FD_SETSIZE = __FD_SETSIZE;
pub const NFDBITS = __NFDBITS;
pub inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_SET(fd, fdsetp);
}
pub inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_CLR(fd, fdsetp);
}
pub inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_ISSET(fd, fdsetp);
}
pub inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    _ = &fdsetp;
    return __FD_ZERO(fdsetp);
}
pub const __blksize_t_defined = "";
pub const __blkcnt_t_defined = "";
pub const __fsblkcnt_t_defined = "";
pub const __fsfilcnt_t_defined = "";
pub const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
pub const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
pub const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
pub const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 40);
pub const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 4);
pub const __LOCK_ALIGNMENT = "";
pub const __ONCE_ALIGNMENT = "";
pub const _BITS_ATOMIC_WIDE_COUNTER_H = "";
pub const _THREAD_MUTEX_INTERNAL_H = @as(c_int, 1);
pub const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
pub const __PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/x86_64-linux-gnu/bits/struct_mutex.h:56:10
pub const _RWLOCK_INTERNAL_H = "";
pub const __PTHREAD_RWLOCK_ELISION_EXTRA = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/x86_64-linux-gnu/bits/struct_rwlock.h:40:11
pub inline fn __PTHREAD_RWLOCK_INITIALIZER(__flags: anytype) @TypeOf(__flags) {
    _ = &__flags;
    return blk: {
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = &__PTHREAD_RWLOCK_ELISION_EXTRA;
        _ = @as(c_int, 0);
        break :blk __flags;
    };
}
pub const __ONCE_FLAG_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h:113:9
pub const __have_pthread_attr_t = @as(c_int, 1);
pub const _SYS_STAT_H = @as(c_int, 1);
pub const _BITS_STAT_H = @as(c_int, 1);
pub const _BITS_STRUCT_STAT_H = @as(c_int, 1);
pub const st_atime = @compileError("unable to translate macro: undefined identifier `st_atim`");
// /usr/include/x86_64-linux-gnu/bits/struct_stat.h:77:11
pub const st_mtime = @compileError("unable to translate macro: undefined identifier `st_mtim`");
// /usr/include/x86_64-linux-gnu/bits/struct_stat.h:78:11
pub const st_ctime = @compileError("unable to translate macro: undefined identifier `st_ctim`");
// /usr/include/x86_64-linux-gnu/bits/struct_stat.h:79:11
pub const _STATBUF_ST_BLKSIZE = "";
pub const _STATBUF_ST_RDEV = "";
pub const _STATBUF_ST_NSEC = "";
pub const __S_IFMT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o170000, .octal);
pub const __S_IFDIR = @as(c_int, 0o040000);
pub const __S_IFCHR = @as(c_int, 0o020000);
pub const __S_IFBLK = @as(c_int, 0o060000);
pub const __S_IFREG = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o100000, .octal);
pub const __S_IFIFO = @as(c_int, 0o010000);
pub const __S_IFLNK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o120000, .octal);
pub const __S_IFSOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o140000, .octal);
pub inline fn __S_TYPEISMQ(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    _ = &buf;
    return buf.*.st_mode - buf.*.st_mode;
}
pub inline fn __S_TYPEISSEM(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    _ = &buf;
    return buf.*.st_mode - buf.*.st_mode;
}
pub inline fn __S_TYPEISSHM(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    _ = &buf;
    return buf.*.st_mode - buf.*.st_mode;
}
pub const __S_ISUID = @as(c_int, 0o4000);
pub const __S_ISGID = @as(c_int, 0o2000);
pub const __S_ISVTX = @as(c_int, 0o1000);
pub const __S_IREAD = @as(c_int, 0o400);
pub const __S_IWRITE = @as(c_int, 0o200);
pub const __S_IEXEC = @as(c_int, 0o100);
pub const UTIME_NOW = (@as(c_long, 1) << @as(c_int, 30)) - @as(c_long, 1);
pub const UTIME_OMIT = (@as(c_long, 1) << @as(c_int, 30)) - @as(c_long, 2);
pub const S_IFMT = __S_IFMT;
pub const S_IFDIR = __S_IFDIR;
pub const S_IFCHR = __S_IFCHR;
pub const S_IFBLK = __S_IFBLK;
pub const S_IFREG = __S_IFREG;
pub const S_IFIFO = __S_IFIFO;
pub const S_IFLNK = __S_IFLNK;
pub const S_IFSOCK = __S_IFSOCK;
pub inline fn __S_ISTYPE(mode: anytype, mask: anytype) @TypeOf((mode & __S_IFMT) == mask) {
    _ = &mode;
    _ = &mask;
    return (mode & __S_IFMT) == mask;
}
pub inline fn S_ISDIR(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFDIR)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFDIR);
}
pub inline fn S_ISCHR(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFCHR)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFCHR);
}
pub inline fn S_ISBLK(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFBLK)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFBLK);
}
pub inline fn S_ISREG(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFREG)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFREG);
}
pub inline fn S_ISFIFO(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFIFO)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFIFO);
}
pub inline fn S_ISLNK(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFLNK)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFLNK);
}
pub inline fn S_ISSOCK(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFSOCK)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFSOCK);
}
pub inline fn S_TYPEISMQ(buf: anytype) @TypeOf(__S_TYPEISMQ(buf)) {
    _ = &buf;
    return __S_TYPEISMQ(buf);
}
pub inline fn S_TYPEISSEM(buf: anytype) @TypeOf(__S_TYPEISSEM(buf)) {
    _ = &buf;
    return __S_TYPEISSEM(buf);
}
pub inline fn S_TYPEISSHM(buf: anytype) @TypeOf(__S_TYPEISSHM(buf)) {
    _ = &buf;
    return __S_TYPEISSHM(buf);
}
pub const S_ISUID = __S_ISUID;
pub const S_ISGID = __S_ISGID;
pub const S_ISVTX = __S_ISVTX;
pub const S_IRUSR = __S_IREAD;
pub const S_IWUSR = __S_IWRITE;
pub const S_IXUSR = __S_IEXEC;
pub const S_IRWXU = (__S_IREAD | __S_IWRITE) | __S_IEXEC;
pub const S_IREAD = S_IRUSR;
pub const S_IWRITE = S_IWUSR;
pub const S_IEXEC = S_IXUSR;
pub const S_IRGRP = S_IRUSR >> @as(c_int, 3);
pub const S_IWGRP = S_IWUSR >> @as(c_int, 3);
pub const S_IXGRP = S_IXUSR >> @as(c_int, 3);
pub const S_IRWXG = S_IRWXU >> @as(c_int, 3);
pub const S_IROTH = S_IRGRP >> @as(c_int, 3);
pub const S_IWOTH = S_IWGRP >> @as(c_int, 3);
pub const S_IXOTH = S_IXGRP >> @as(c_int, 3);
pub const S_IRWXO = S_IRWXG >> @as(c_int, 3);
pub const ACCESSPERMS = (S_IRWXU | S_IRWXG) | S_IRWXO;
pub const ALLPERMS = ((((S_ISUID | S_ISGID) | S_ISVTX) | S_IRWXU) | S_IRWXG) | S_IRWXO;
pub const DEFFILEMODE = ((((S_IRUSR | S_IWUSR) | S_IRGRP) | S_IWGRP) | S_IROTH) | S_IWOTH;
pub const S_BLKSIZE = @as(c_int, 512);
pub const _LINUX_STAT_H = "";
pub const _LINUX_TYPES_H = "";
pub const _ASM_GENERIC_TYPES_H = "";
pub const _ASM_GENERIC_INT_LL64_H = "";
pub const __ASM_X86_BITSPERLONG_H = "";
pub const __BITS_PER_LONG = @as(c_int, 64);
pub const __ASM_GENERIC_BITS_PER_LONG = "";
pub const _LINUX_POSIX_TYPES_H = "";
pub const _LINUX_STDDEF_H = "";
pub inline fn __struct_group_tag(TAG: anytype) @TypeOf(TAG) {
    _ = &TAG;
    return TAG;
}
pub const __struct_group = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /usr/include/linux/stddef.h:33:9
pub const __DECLARE_FLEX_ARRAY = @compileError("unable to translate macro: undefined identifier `__empty_`");
// /usr/include/linux/stddef.h:54:9
pub const __counted_by = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/linux/stddef.h:62:9
pub const _ASM_X86_POSIX_TYPES_64_H = "";
pub const __ASM_GENERIC_POSIX_TYPES_H = "";
pub const __bitwise = "";
pub const __bitwise__ = "";
pub const __aligned_u64 = @compileError("unable to translate macro: undefined identifier `aligned`");
// /usr/include/linux/types.h:50:9
pub const __aligned_s64 = @compileError("unable to translate macro: undefined identifier `aligned`");
// /usr/include/linux/types.h:51:9
pub const __aligned_be64 = @compileError("unable to translate macro: undefined identifier `aligned`");
// /usr/include/linux/types.h:52:9
pub const __aligned_le64 = @compileError("unable to translate macro: undefined identifier `aligned`");
// /usr/include/linux/types.h:53:9
pub const STATX_TYPE = @as(c_uint, 0x00000001);
pub const STATX_MODE = @as(c_uint, 0x00000002);
pub const STATX_NLINK = @as(c_uint, 0x00000004);
pub const STATX_UID = @as(c_uint, 0x00000008);
pub const STATX_GID = @as(c_uint, 0x00000010);
pub const STATX_ATIME = @as(c_uint, 0x00000020);
pub const STATX_MTIME = @as(c_uint, 0x00000040);
pub const STATX_CTIME = @as(c_uint, 0x00000080);
pub const STATX_INO = @as(c_uint, 0x00000100);
pub const STATX_SIZE = @as(c_uint, 0x00000200);
pub const STATX_BLOCKS = @as(c_uint, 0x00000400);
pub const STATX_BASIC_STATS = @as(c_uint, 0x000007ff);
pub const STATX_BTIME = @as(c_uint, 0x00000800);
pub const STATX_MNT_ID = @as(c_uint, 0x00001000);
pub const STATX_DIOALIGN = @as(c_uint, 0x00002000);
pub const STATX_MNT_ID_UNIQUE = @as(c_uint, 0x00004000);
pub const STATX__RESERVED = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x80000000, .hex);
pub const STATX_ALL = @as(c_uint, 0x00000fff);
pub const STATX_ATTR_COMPRESSED = @as(c_int, 0x00000004);
pub const STATX_ATTR_IMMUTABLE = @as(c_int, 0x00000010);
pub const STATX_ATTR_APPEND = @as(c_int, 0x00000020);
pub const STATX_ATTR_NODUMP = @as(c_int, 0x00000040);
pub const STATX_ATTR_ENCRYPTED = @as(c_int, 0x00000800);
pub const STATX_ATTR_AUTOMOUNT = @as(c_int, 0x00001000);
pub const STATX_ATTR_MOUNT_ROOT = @as(c_int, 0x00002000);
pub const STATX_ATTR_VERITY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00100000, .hex);
pub const STATX_ATTR_DAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00200000, .hex);
pub const __statx_timestamp_defined = @as(c_int, 1);
pub const __statx_defined = @as(c_int, 1);
pub const __need_wchar_t = "";
pub const _WCHAR_T = "";
pub const _STDLIB_H = @as(c_int, 1);
pub const WNOHANG = @as(c_int, 1);
pub const WUNTRACED = @as(c_int, 2);
pub const WSTOPPED = @as(c_int, 2);
pub const WEXITED = @as(c_int, 4);
pub const WCONTINUED = @as(c_int, 8);
pub const WNOWAIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hex);
pub const __WNOTHREAD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const __WALL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const __WCLONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hex);
pub inline fn __WEXITSTATUS(status: anytype) @TypeOf((status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8)) {
    _ = &status;
    return (status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8);
}
pub inline fn __WTERMSIG(status: anytype) @TypeOf(status & @as(c_int, 0x7f)) {
    _ = &status;
    return status & @as(c_int, 0x7f);
}
pub inline fn __WSTOPSIG(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}
pub inline fn __WIFEXITED(status: anytype) @TypeOf(__WTERMSIG(status) == @as(c_int, 0)) {
    _ = &status;
    return __WTERMSIG(status) == @as(c_int, 0);
}
pub inline fn __WIFSIGNALED(status: anytype) @TypeOf((@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0)) {
    _ = &status;
    return (@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0);
}
pub inline fn __WIFSTOPPED(status: anytype) @TypeOf((status & @as(c_int, 0xff)) == @as(c_int, 0x7f)) {
    _ = &status;
    return (status & @as(c_int, 0xff)) == @as(c_int, 0x7f);
}
pub inline fn __WIFCONTINUED(status: anytype) @TypeOf(status == __W_CONTINUED) {
    _ = &status;
    return status == __W_CONTINUED;
}
pub inline fn __WCOREDUMP(status: anytype) @TypeOf(status & __WCOREFLAG) {
    _ = &status;
    return status & __WCOREFLAG;
}
pub inline fn __W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) {
    _ = &ret;
    _ = &sig;
    return (ret << @as(c_int, 8)) | sig;
}
pub inline fn __W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | @as(c_int, 0x7f)) {
    _ = &sig;
    return (sig << @as(c_int, 8)) | @as(c_int, 0x7f);
}
pub const __W_CONTINUED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hex);
pub const __WCOREFLAG = @as(c_int, 0x80);
pub inline fn WEXITSTATUS(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}
pub inline fn WTERMSIG(status: anytype) @TypeOf(__WTERMSIG(status)) {
    _ = &status;
    return __WTERMSIG(status);
}
pub inline fn WSTOPSIG(status: anytype) @TypeOf(__WSTOPSIG(status)) {
    _ = &status;
    return __WSTOPSIG(status);
}
pub inline fn WIFEXITED(status: anytype) @TypeOf(__WIFEXITED(status)) {
    _ = &status;
    return __WIFEXITED(status);
}
pub inline fn WIFSIGNALED(status: anytype) @TypeOf(__WIFSIGNALED(status)) {
    _ = &status;
    return __WIFSIGNALED(status);
}
pub inline fn WIFSTOPPED(status: anytype) @TypeOf(__WIFSTOPPED(status)) {
    _ = &status;
    return __WIFSTOPPED(status);
}
pub inline fn WIFCONTINUED(status: anytype) @TypeOf(__WIFCONTINUED(status)) {
    _ = &status;
    return __WIFCONTINUED(status);
}
pub const __ldiv_t_defined = @as(c_int, 1);
pub const __lldiv_t_defined = @as(c_int, 1);
pub const RAND_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const _BITS_TYPES_LOCALE_T_H = @as(c_int, 1);
pub const _BITS_TYPES___LOCALE_T_H = @as(c_int, 1);
pub const _ALLOCA_H = @as(c_int, 1);
pub const __COMPAR_FN_T = "";
pub const __need_ptrdiff_t = "";
pub const __need_max_align_t = "";
pub const __need_offsetof = "";
pub const __STDDEF_H = "";
pub const _PTRDIFF_T = "";
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const offsetof = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /home/user/.config/Windsurf/User/globalStorage/ziglang.vscode-zig/zig/x86_64-linux-0.15.2/lib/include/__stddef_offsetof.h:16:9
pub const _STRING_H = @as(c_int, 1);
pub const strdupa = @compileError("unable to translate macro: undefined identifier `__old`");
// /usr/include/string.h:201:10
pub const strndupa = @compileError("unable to translate macro: undefined identifier `__old`");
// /usr/include/string.h:211:10
pub const _STRINGS_H = @as(c_int, 1);
pub const __CLANG_INTTYPES_H = "";
pub const _INTTYPES_H = @as(c_int, 1);
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H = @as(c_int, 1);
pub const _BITS_WCHAR_H = @as(c_int, 1);
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __WCHAR_MIN = -__WCHAR_MAX - @as(c_int, 1);
pub const _BITS_STDINT_UINTN_H = @as(c_int, 1);
pub const _BITS_STDINT_LEAST_H = @as(c_int, 1);
pub const __intptr_t_defined = "";
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_LEAST8_MIN = -@as(c_int, 128);
pub const INT_LEAST16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT_LEAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_LEAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_LEAST8_MAX = @as(c_int, 127);
pub const INT_LEAST16_MAX = @as(c_int, 32767);
pub const INT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_LEAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_LEAST8_MAX = @as(c_int, 255);
pub const UINT_LEAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_FAST8_MIN = -@as(c_int, 128);
pub const INT_FAST16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_FAST8_MAX = @as(c_int, 127);
pub const INT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_FAST8_MAX = @as(c_int, 255);
pub const UINT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTPTR_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INTMAX_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const PTRDIFF_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const PTRDIFF_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const SIG_ATOMIC_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const SIG_ATOMIC_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const WCHAR_MIN = __WCHAR_MIN;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INT8_WIDTH = @as(c_int, 8);
pub const UINT8_WIDTH = @as(c_int, 8);
pub const INT16_WIDTH = @as(c_int, 16);
pub const UINT16_WIDTH = @as(c_int, 16);
pub const INT32_WIDTH = @as(c_int, 32);
pub const UINT32_WIDTH = @as(c_int, 32);
pub const INT64_WIDTH = @as(c_int, 64);
pub const UINT64_WIDTH = @as(c_int, 64);
pub const INT_LEAST8_WIDTH = @as(c_int, 8);
pub const UINT_LEAST8_WIDTH = @as(c_int, 8);
pub const INT_LEAST16_WIDTH = @as(c_int, 16);
pub const UINT_LEAST16_WIDTH = @as(c_int, 16);
pub const INT_LEAST32_WIDTH = @as(c_int, 32);
pub const UINT_LEAST32_WIDTH = @as(c_int, 32);
pub const INT_LEAST64_WIDTH = @as(c_int, 64);
pub const UINT_LEAST64_WIDTH = @as(c_int, 64);
pub const INT_FAST8_WIDTH = @as(c_int, 8);
pub const UINT_FAST8_WIDTH = @as(c_int, 8);
pub const INT_FAST16_WIDTH = __WORDSIZE;
pub const UINT_FAST16_WIDTH = __WORDSIZE;
pub const INT_FAST32_WIDTH = __WORDSIZE;
pub const UINT_FAST32_WIDTH = __WORDSIZE;
pub const INT_FAST64_WIDTH = @as(c_int, 64);
pub const UINT_FAST64_WIDTH = @as(c_int, 64);
pub const INTPTR_WIDTH = __WORDSIZE;
pub const UINTPTR_WIDTH = __WORDSIZE;
pub const INTMAX_WIDTH = @as(c_int, 64);
pub const UINTMAX_WIDTH = @as(c_int, 64);
pub const PTRDIFF_WIDTH = __WORDSIZE;
pub const SIG_ATOMIC_WIDTH = @as(c_int, 32);
pub const SIZE_WIDTH = __WORDSIZE;
pub const WCHAR_WIDTH = @as(c_int, 32);
pub const WINT_WIDTH = @as(c_int, 32);
pub const ____gwchar_t_defined = @as(c_int, 1);
pub const __PRI64_PREFIX = "l";
pub const __PRIPTR_PREFIX = "l";
pub const PRId8 = "d";
pub const PRId16 = "d";
pub const PRId32 = "d";
pub const PRId64 = __PRI64_PREFIX ++ "d";
pub const PRIdLEAST8 = "d";
pub const PRIdLEAST16 = "d";
pub const PRIdLEAST32 = "d";
pub const PRIdLEAST64 = __PRI64_PREFIX ++ "d";
pub const PRIdFAST8 = "d";
pub const PRIdFAST16 = __PRIPTR_PREFIX ++ "d";
pub const PRIdFAST32 = __PRIPTR_PREFIX ++ "d";
pub const PRIdFAST64 = __PRI64_PREFIX ++ "d";
pub const PRIi8 = "i";
pub const PRIi16 = "i";
pub const PRIi32 = "i";
pub const PRIi64 = __PRI64_PREFIX ++ "i";
pub const PRIiLEAST8 = "i";
pub const PRIiLEAST16 = "i";
pub const PRIiLEAST32 = "i";
pub const PRIiLEAST64 = __PRI64_PREFIX ++ "i";
pub const PRIiFAST8 = "i";
pub const PRIiFAST16 = __PRIPTR_PREFIX ++ "i";
pub const PRIiFAST32 = __PRIPTR_PREFIX ++ "i";
pub const PRIiFAST64 = __PRI64_PREFIX ++ "i";
pub const PRIo8 = "o";
pub const PRIo16 = "o";
pub const PRIo32 = "o";
pub const PRIo64 = __PRI64_PREFIX ++ "o";
pub const PRIoLEAST8 = "o";
pub const PRIoLEAST16 = "o";
pub const PRIoLEAST32 = "o";
pub const PRIoLEAST64 = __PRI64_PREFIX ++ "o";
pub const PRIoFAST8 = "o";
pub const PRIoFAST16 = __PRIPTR_PREFIX ++ "o";
pub const PRIoFAST32 = __PRIPTR_PREFIX ++ "o";
pub const PRIoFAST64 = __PRI64_PREFIX ++ "o";
pub const PRIu8 = "u";
pub const PRIu16 = "u";
pub const PRIu32 = "u";
pub const PRIu64 = __PRI64_PREFIX ++ "u";
pub const PRIuLEAST8 = "u";
pub const PRIuLEAST16 = "u";
pub const PRIuLEAST32 = "u";
pub const PRIuLEAST64 = __PRI64_PREFIX ++ "u";
pub const PRIuFAST8 = "u";
pub const PRIuFAST16 = __PRIPTR_PREFIX ++ "u";
pub const PRIuFAST32 = __PRIPTR_PREFIX ++ "u";
pub const PRIuFAST64 = __PRI64_PREFIX ++ "u";
pub const PRIx8 = "x";
pub const PRIx16 = "x";
pub const PRIx32 = "x";
pub const PRIx64 = __PRI64_PREFIX ++ "x";
pub const PRIxLEAST8 = "x";
pub const PRIxLEAST16 = "x";
pub const PRIxLEAST32 = "x";
pub const PRIxLEAST64 = __PRI64_PREFIX ++ "x";
pub const PRIxFAST8 = "x";
pub const PRIxFAST16 = __PRIPTR_PREFIX ++ "x";
pub const PRIxFAST32 = __PRIPTR_PREFIX ++ "x";
pub const PRIxFAST64 = __PRI64_PREFIX ++ "x";
pub const PRIX8 = "X";
pub const PRIX16 = "X";
pub const PRIX32 = "X";
pub const PRIX64 = __PRI64_PREFIX ++ "X";
pub const PRIXLEAST8 = "X";
pub const PRIXLEAST16 = "X";
pub const PRIXLEAST32 = "X";
pub const PRIXLEAST64 = __PRI64_PREFIX ++ "X";
pub const PRIXFAST8 = "X";
pub const PRIXFAST16 = __PRIPTR_PREFIX ++ "X";
pub const PRIXFAST32 = __PRIPTR_PREFIX ++ "X";
pub const PRIXFAST64 = __PRI64_PREFIX ++ "X";
pub const PRIdMAX = __PRI64_PREFIX ++ "d";
pub const PRIiMAX = __PRI64_PREFIX ++ "i";
pub const PRIoMAX = __PRI64_PREFIX ++ "o";
pub const PRIuMAX = __PRI64_PREFIX ++ "u";
pub const PRIxMAX = __PRI64_PREFIX ++ "x";
pub const PRIXMAX = __PRI64_PREFIX ++ "X";
pub const PRIdPTR = __PRIPTR_PREFIX ++ "d";
pub const PRIiPTR = __PRIPTR_PREFIX ++ "i";
pub const PRIoPTR = __PRIPTR_PREFIX ++ "o";
pub const PRIuPTR = __PRIPTR_PREFIX ++ "u";
pub const PRIxPTR = __PRIPTR_PREFIX ++ "x";
pub const PRIXPTR = __PRIPTR_PREFIX ++ "X";
pub const PRIb8 = "b";
pub const PRIb16 = "b";
pub const PRIb32 = "b";
pub const PRIb64 = __PRI64_PREFIX ++ "b";
pub const PRIbLEAST8 = "b";
pub const PRIbLEAST16 = "b";
pub const PRIbLEAST32 = "b";
pub const PRIbLEAST64 = __PRI64_PREFIX ++ "b";
pub const PRIbFAST8 = "b";
pub const PRIbFAST16 = __PRIPTR_PREFIX ++ "b";
pub const PRIbFAST32 = __PRIPTR_PREFIX ++ "b";
pub const PRIbFAST64 = __PRI64_PREFIX ++ "b";
pub const PRIbMAX = __PRI64_PREFIX ++ "b";
pub const PRIbPTR = __PRIPTR_PREFIX ++ "b";
pub const PRIB8 = "B";
pub const PRIB16 = "B";
pub const PRIB32 = "B";
pub const PRIB64 = __PRI64_PREFIX ++ "B";
pub const PRIBLEAST8 = "B";
pub const PRIBLEAST16 = "B";
pub const PRIBLEAST32 = "B";
pub const PRIBLEAST64 = __PRI64_PREFIX ++ "B";
pub const PRIBFAST8 = "B";
pub const PRIBFAST16 = __PRIPTR_PREFIX ++ "B";
pub const PRIBFAST32 = __PRIPTR_PREFIX ++ "B";
pub const PRIBFAST64 = __PRI64_PREFIX ++ "B";
pub const PRIBMAX = __PRI64_PREFIX ++ "B";
pub const PRIBPTR = __PRIPTR_PREFIX ++ "B";
pub const SCNd8 = "hhd";
pub const SCNd16 = "hd";
pub const SCNd32 = "d";
pub const SCNd64 = __PRI64_PREFIX ++ "d";
pub const SCNdLEAST8 = "hhd";
pub const SCNdLEAST16 = "hd";
pub const SCNdLEAST32 = "d";
pub const SCNdLEAST64 = __PRI64_PREFIX ++ "d";
pub const SCNdFAST8 = "hhd";
pub const SCNdFAST16 = __PRIPTR_PREFIX ++ "d";
pub const SCNdFAST32 = __PRIPTR_PREFIX ++ "d";
pub const SCNdFAST64 = __PRI64_PREFIX ++ "d";
pub const SCNi8 = "hhi";
pub const SCNi16 = "hi";
pub const SCNi32 = "i";
pub const SCNi64 = __PRI64_PREFIX ++ "i";
pub const SCNiLEAST8 = "hhi";
pub const SCNiLEAST16 = "hi";
pub const SCNiLEAST32 = "i";
pub const SCNiLEAST64 = __PRI64_PREFIX ++ "i";
pub const SCNiFAST8 = "hhi";
pub const SCNiFAST16 = __PRIPTR_PREFIX ++ "i";
pub const SCNiFAST32 = __PRIPTR_PREFIX ++ "i";
pub const SCNiFAST64 = __PRI64_PREFIX ++ "i";
pub const SCNu8 = "hhu";
pub const SCNu16 = "hu";
pub const SCNu32 = "u";
pub const SCNu64 = __PRI64_PREFIX ++ "u";
pub const SCNuLEAST8 = "hhu";
pub const SCNuLEAST16 = "hu";
pub const SCNuLEAST32 = "u";
pub const SCNuLEAST64 = __PRI64_PREFIX ++ "u";
pub const SCNuFAST8 = "hhu";
pub const SCNuFAST16 = __PRIPTR_PREFIX ++ "u";
pub const SCNuFAST32 = __PRIPTR_PREFIX ++ "u";
pub const SCNuFAST64 = __PRI64_PREFIX ++ "u";
pub const SCNo8 = "hho";
pub const SCNo16 = "ho";
pub const SCNo32 = "o";
pub const SCNo64 = __PRI64_PREFIX ++ "o";
pub const SCNoLEAST8 = "hho";
pub const SCNoLEAST16 = "ho";
pub const SCNoLEAST32 = "o";
pub const SCNoLEAST64 = __PRI64_PREFIX ++ "o";
pub const SCNoFAST8 = "hho";
pub const SCNoFAST16 = __PRIPTR_PREFIX ++ "o";
pub const SCNoFAST32 = __PRIPTR_PREFIX ++ "o";
pub const SCNoFAST64 = __PRI64_PREFIX ++ "o";
pub const SCNx8 = "hhx";
pub const SCNx16 = "hx";
pub const SCNx32 = "x";
pub const SCNx64 = __PRI64_PREFIX ++ "x";
pub const SCNxLEAST8 = "hhx";
pub const SCNxLEAST16 = "hx";
pub const SCNxLEAST32 = "x";
pub const SCNxLEAST64 = __PRI64_PREFIX ++ "x";
pub const SCNxFAST8 = "hhx";
pub const SCNxFAST16 = __PRIPTR_PREFIX ++ "x";
pub const SCNxFAST32 = __PRIPTR_PREFIX ++ "x";
pub const SCNxFAST64 = __PRI64_PREFIX ++ "x";
pub const SCNdMAX = __PRI64_PREFIX ++ "d";
pub const SCNiMAX = __PRI64_PREFIX ++ "i";
pub const SCNoMAX = __PRI64_PREFIX ++ "o";
pub const SCNuMAX = __PRI64_PREFIX ++ "u";
pub const SCNxMAX = __PRI64_PREFIX ++ "x";
pub const SCNdPTR = __PRIPTR_PREFIX ++ "d";
pub const SCNiPTR = __PRIPTR_PREFIX ++ "i";
pub const SCNoPTR = __PRIPTR_PREFIX ++ "o";
pub const SCNuPTR = __PRIPTR_PREFIX ++ "u";
pub const SCNxPTR = __PRIPTR_PREFIX ++ "x";
pub const SCNb8 = "hhb";
pub const SCNb16 = "hb";
pub const SCNb32 = "b";
pub const SCNb64 = __PRI64_PREFIX ++ "b";
pub const SCNbLEAST8 = "hhb";
pub const SCNbLEAST16 = "hb";
pub const SCNbLEAST32 = "b";
pub const SCNbLEAST64 = __PRI64_PREFIX ++ "b";
pub const SCNbFAST8 = "hhb";
pub const SCNbFAST16 = __PRIPTR_PREFIX ++ "b";
pub const SCNbFAST32 = __PRIPTR_PREFIX ++ "b";
pub const SCNbFAST64 = __PRI64_PREFIX ++ "b";
pub const SCNbMAX = __PRI64_PREFIX ++ "b";
pub const SCNbPTR = __PRIPTR_PREFIX ++ "b";
pub const __STDALIGN_H = "";
pub const alignas = @compileError("unable to translate C expr: unexpected token '_Alignas'");
// /home/user/.config/Windsurf/User/globalStorage/ziglang.vscode-zig/zig/x86_64-linux-0.15.2/lib/include/stdalign.h:16:9
pub const alignof = @compileError("unable to translate C expr: expected '(' instead got ''");
// /home/user/.config/Windsurf/User/globalStorage/ziglang.vscode-zig/zig/x86_64-linux-0.15.2/lib/include/stdalign.h:17:9
pub const __alignas_is_defined = @as(c_int, 1);
pub const __alignof_is_defined = @as(c_int, 1);
pub const _UNISTD_H = @as(c_int, 1);
pub const _POSIX_VERSION = @as(c_long, 200809);
pub const __POSIX2_THIS_VERSION = @as(c_long, 200809);
pub const _POSIX2_VERSION = __POSIX2_THIS_VERSION;
pub const _POSIX2_C_VERSION = __POSIX2_THIS_VERSION;
pub const _POSIX2_C_BIND = __POSIX2_THIS_VERSION;
pub const _POSIX2_C_DEV = __POSIX2_THIS_VERSION;
pub const _POSIX2_SW_DEV = __POSIX2_THIS_VERSION;
pub const _POSIX2_LOCALEDEF = __POSIX2_THIS_VERSION;
pub const _XOPEN_VERSION = @as(c_int, 700);
pub const _XOPEN_XCU_VERSION = @as(c_int, 4);
pub const _XOPEN_XPG2 = @as(c_int, 1);
pub const _XOPEN_XPG3 = @as(c_int, 1);
pub const _XOPEN_XPG4 = @as(c_int, 1);
pub const _XOPEN_UNIX = @as(c_int, 1);
pub const _XOPEN_ENH_I18N = @as(c_int, 1);
pub const _XOPEN_LEGACY = @as(c_int, 1);
pub const _BITS_POSIX_OPT_H = @as(c_int, 1);
pub const _POSIX_JOB_CONTROL = @as(c_int, 1);
pub const _POSIX_SAVED_IDS = @as(c_int, 1);
pub const _POSIX_PRIORITY_SCHEDULING = @as(c_long, 200809);
pub const _POSIX_SYNCHRONIZED_IO = @as(c_long, 200809);
pub const _POSIX_FSYNC = @as(c_long, 200809);
pub const _POSIX_MAPPED_FILES = @as(c_long, 200809);
pub const _POSIX_MEMLOCK = @as(c_long, 200809);
pub const _POSIX_MEMLOCK_RANGE = @as(c_long, 200809);
pub const _POSIX_MEMORY_PROTECTION = @as(c_long, 200809);
pub const _POSIX_CHOWN_RESTRICTED = @as(c_int, 0);
pub const _POSIX_VDISABLE = '\x00';
pub const _POSIX_NO_TRUNC = @as(c_int, 1);
pub const _XOPEN_REALTIME = @as(c_int, 1);
pub const _XOPEN_REALTIME_THREADS = @as(c_int, 1);
pub const _XOPEN_SHM = @as(c_int, 1);
pub const _POSIX_THREADS = @as(c_long, 200809);
pub const _POSIX_REENTRANT_FUNCTIONS = @as(c_int, 1);
pub const _POSIX_THREAD_SAFE_FUNCTIONS = @as(c_long, 200809);
pub const _POSIX_THREAD_PRIORITY_SCHEDULING = @as(c_long, 200809);
pub const _POSIX_THREAD_ATTR_STACKSIZE = @as(c_long, 200809);
pub const _POSIX_THREAD_ATTR_STACKADDR = @as(c_long, 200809);
pub const _POSIX_THREAD_PRIO_INHERIT = @as(c_long, 200809);
pub const _POSIX_THREAD_PRIO_PROTECT = @as(c_long, 200809);
pub const _POSIX_THREAD_ROBUST_PRIO_INHERIT = @as(c_long, 200809);
pub const _POSIX_THREAD_ROBUST_PRIO_PROTECT = -@as(c_int, 1);
pub const _POSIX_SEMAPHORES = @as(c_long, 200809);
pub const _POSIX_REALTIME_SIGNALS = @as(c_long, 200809);
pub const _POSIX_ASYNCHRONOUS_IO = @as(c_long, 200809);
pub const _POSIX_ASYNC_IO = @as(c_int, 1);
pub const _LFS_ASYNCHRONOUS_IO = @as(c_int, 1);
pub const _POSIX_PRIORITIZED_IO = @as(c_long, 200809);
pub const _LFS64_ASYNCHRONOUS_IO = @as(c_int, 1);
pub const _LFS_LARGEFILE = @as(c_int, 1);
pub const _LFS64_LARGEFILE = @as(c_int, 1);
pub const _LFS64_STDIO = @as(c_int, 1);
pub const _POSIX_SHARED_MEMORY_OBJECTS = @as(c_long, 200809);
pub const _POSIX_CPUTIME = @as(c_int, 0);
pub const _POSIX_THREAD_CPUTIME = @as(c_int, 0);
pub const _POSIX_REGEXP = @as(c_int, 1);
pub const _POSIX_READER_WRITER_LOCKS = @as(c_long, 200809);
pub const _POSIX_SHELL = @as(c_int, 1);
pub const _POSIX_TIMEOUTS = @as(c_long, 200809);
pub const _POSIX_SPIN_LOCKS = @as(c_long, 200809);
pub const _POSIX_SPAWN = @as(c_long, 200809);
pub const _POSIX_TIMERS = @as(c_long, 200809);
pub const _POSIX_BARRIERS = @as(c_long, 200809);
pub const _POSIX_MESSAGE_PASSING = @as(c_long, 200809);
pub const _POSIX_THREAD_PROCESS_SHARED = @as(c_long, 200809);
pub const _POSIX_MONOTONIC_CLOCK = @as(c_int, 0);
pub const _POSIX_CLOCK_SELECTION = @as(c_long, 200809);
pub const _POSIX_ADVISORY_INFO = @as(c_long, 200809);
pub const _POSIX_IPV6 = @as(c_long, 200809);
pub const _POSIX_RAW_SOCKETS = @as(c_long, 200809);
pub const _POSIX2_CHAR_TERM = @as(c_long, 200809);
pub const _POSIX_SPORADIC_SERVER = -@as(c_int, 1);
pub const _POSIX_THREAD_SPORADIC_SERVER = -@as(c_int, 1);
pub const _POSIX_TRACE = -@as(c_int, 1);
pub const _POSIX_TRACE_EVENT_FILTER = -@as(c_int, 1);
pub const _POSIX_TRACE_INHERIT = -@as(c_int, 1);
pub const _POSIX_TRACE_LOG = -@as(c_int, 1);
pub const _POSIX_TYPED_MEMORY_OBJECTS = -@as(c_int, 1);
pub const _POSIX_V7_LPBIG_OFFBIG = -@as(c_int, 1);
pub const _POSIX_V6_LPBIG_OFFBIG = -@as(c_int, 1);
pub const _XBS5_LPBIG_OFFBIG = -@as(c_int, 1);
pub const _POSIX_V7_LP64_OFF64 = @as(c_int, 1);
pub const _POSIX_V6_LP64_OFF64 = @as(c_int, 1);
pub const _XBS5_LP64_OFF64 = @as(c_int, 1);
pub const __ILP32_OFF32_CFLAGS = "-m32";
pub const __ILP32_OFF32_LDFLAGS = "-m32";
pub const __ILP32_OFFBIG_CFLAGS = "-m32 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64";
pub const __ILP32_OFFBIG_LDFLAGS = "-m32";
pub const __LP64_OFF64_CFLAGS = "-m64";
pub const __LP64_OFF64_LDFLAGS = "-m64";
pub const STDIN_FILENO = @as(c_int, 0);
pub const STDOUT_FILENO = @as(c_int, 1);
pub const STDERR_FILENO = @as(c_int, 2);
pub const __socklen_t_defined = "";
pub const R_OK = @as(c_int, 4);
pub const W_OK = @as(c_int, 2);
pub const X_OK = @as(c_int, 1);
pub const F_OK = @as(c_int, 0);
pub const L_SET = SEEK_SET;
pub const L_INCR = SEEK_CUR;
pub const L_XTND = SEEK_END;
pub const _SC_PAGE_SIZE = _SC_PAGESIZE;
pub const _CS_POSIX_V6_WIDTH_RESTRICTED_ENVS = _CS_V6_WIDTH_RESTRICTED_ENVS;
pub const _CS_POSIX_V5_WIDTH_RESTRICTED_ENVS = _CS_V5_WIDTH_RESTRICTED_ENVS;
pub const _CS_POSIX_V7_WIDTH_RESTRICTED_ENVS = _CS_V7_WIDTH_RESTRICTED_ENVS;
pub const _GETOPT_POSIX_H = @as(c_int, 1);
pub const _GETOPT_CORE_H = @as(c_int, 1);
pub const F_ULOCK = @as(c_int, 0);
pub const F_LOCK = @as(c_int, 1);
pub const F_TLOCK = @as(c_int, 2);
pub const F_TEST = @as(c_int, 3);
pub const TEMP_FAILURE_RETRY = @compileError("unable to translate macro: undefined identifier `__result`");
// /usr/include/unistd.h:1134:10
pub const _LINUX_CLOSE_RANGE_H = "";
pub const CLOSE_RANGE_UNSHARE = @as(c_uint, 1) << @as(c_int, 1);
pub const CLOSE_RANGE_CLOEXEC = @as(c_uint, 1) << @as(c_int, 2);
pub const RBIMPL_DLLEXPORT_H = "";
pub const RUBY_EXTERN = @compileError("unable to translate C expr: unexpected token 'extern'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/dllexport.h:45:10
pub inline fn RBIMPL_SYMBOL_EXPORT_BEGIN() @TypeOf(RUBY_SYMBOL_EXPORT_BEGIN) {
    return RUBY_SYMBOL_EXPORT_BEGIN;
}
pub inline fn RBIMPL_SYMBOL_EXPORT_END() @TypeOf(RUBY_SYMBOL_EXPORT_END) {
    return RUBY_SYMBOL_EXPORT_END;
}
pub const RBIMPL_XMALLOC_H = "";
pub const RBIMPL_ATTR_ALLOC_SIZE_H = "";
pub const RBIMPL_HAS_ATTRIBUTE_H = "";
pub const RBIMPL_HAVE___HAS_ATTRIBUTE = @as(c_int, 1);
pub const RBIMPL_HAS_ATTRIBUTE = @compileError("unable to translate macro: undefined identifier `__has_attribute`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/has/attribute.h:37:10
pub const RBIMPL_ATTR_ALLOC_SIZE = @compileError("unable to translate macro: undefined identifier `__alloc_size__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/alloc_size.h:27:10
pub const RBIMPL_ATTR_NODISCARD_H = "";
pub const RBIMPL_HAS_C_ATTRIBUTE_H = "";
pub const RBIMPL_HAS_EXTENSION_H = "";
pub const RBIMPL_HAS_FEATURE_H = "";
pub const RBIMPL_HAS_FEATURE = @compileError("unable to translate macro: undefined identifier `__has_feature`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/has/feature.h:26:10
pub const RBIMPL_HAS_EXTENSION = @compileError("unable to translate macro: undefined identifier `__has_extension`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/has/extension.h:27:10
pub const RBIMPL_HAS_WARNING_H = "";
pub const RBIMPL_HAS_WARNING = @compileError("unable to translate macro: undefined identifier `__has_warning`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/has/warning.h:26:10
pub const RBIMPL_HAS_C_ATTRIBUTE = @compileError("unable to translate macro: undefined identifier `__has_c_attribute`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/has/c_attribute.h:36:10
pub const RBIMPL_HAS_CPP_ATTRIBUTE_H = "";
pub inline fn RBIMPL_HAS_CPP_ATTRIBUTE0(__1: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &__1;
    return @as(c_int, 0);
}
pub inline fn RBIMPL_HAS_CPP_ATTRIBUTE(__1: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &__1;
    return @as(c_int, 0);
}
pub const RBIMPL_ATTR_NODISCARD = @compileError("unable to translate macro: undefined identifier `nodiscard`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/nodiscard.h:35:10
pub const RBIMPL_ATTR_NOEXCEPT_H = "";
pub const RBIMPL_ATTR_NOEXCEPT = @compileError("unable to translate C expr: unexpected token ''");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/noexcept.h:70:10
pub const RBIMPL_ATTR_RESTRICT_H = "";
pub const RBIMPL_ATTR_RESTRICT = @compileError("unable to translate macro: undefined identifier `__malloc__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/restrict.h:35:10
pub const RBIMPL_ATTR_RETURNS_NONNULL_H = "";
pub const RBIMPL_ATTR_RETURNS_NONNULL = @compileError("unable to translate macro: undefined identifier `__returns_nonnull__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/returns_nonnull.h:31:10
pub const USE_GC_MALLOC_OBJ_INFO_DETAILS = @as(c_int, 0);
pub const xmalloc = ruby_xmalloc;
pub const xmalloc2 = ruby_xmalloc2;
pub const xcalloc = ruby_xcalloc;
pub const xrealloc = ruby_xrealloc;
pub const xrealloc2 = ruby_xrealloc2;
pub const xfree = ruby_xfree;
pub const RUBY_BACKWARD2_ASSUME_H = "";
pub const RBIMPL_ASSUME_H = "";
pub const RBIMPL_CAST_H = "";
pub const RBIMPL_WARNING_PUSH_H = "";
pub const RBIMPL_WARNING_PRAGMA0 = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/warning_push.h:97:10
pub const RBIMPL_WARNING_PRAGMA1 = @compileError("unable to translate macro: undefined identifier `clang`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/warning_push.h:98:10
pub const RBIMPL_WARNING_PRAGMA2 = @compileError("unable to translate C expr: expected ',' or ')' instead got '#'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/warning_push.h:99:10
pub const RBIMPL_WARNING_PUSH = @compileError("unable to translate macro: undefined identifier `push`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/warning_push.h:100:10
pub const RBIMPL_WARNING_POP = @compileError("unable to translate macro: undefined identifier `pop`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/warning_push.h:101:10
pub const RBIMPL_WARNING_ERROR = @compileError("unable to translate C expr: unexpected token 'error'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/warning_push.h:102:10
pub const RBIMPL_WARNING_IGNORED = @compileError("unable to translate macro: undefined identifier `ignored`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/warning_push.h:103:10
pub inline fn RBIMPL_CAST(expr: anytype) @TypeOf(expr) {
    _ = &expr;
    return expr;
}
pub const RBIMPL_HAS_BUILTIN_H = "";
pub const RBIMPL_HAVE___HAS_BUILTIN = @as(c_int, 1);
pub inline fn RBIMPL_HAS_BUILTIN(__1: anytype) @TypeOf(__has_builtin(__1)) {
    _ = &__1;
    return __has_builtin(__1);
}
pub inline fn RBIMPL_UNREACHABLE_RETURN(__1: anytype) @TypeOf(__builtin_unreachable()) {
    _ = &__1;
    return __builtin_unreachable();
}
pub const RBIMPL_UNREACHABLE = __builtin_unreachable;
pub const RBIMPL_ASSUME = __builtin_assume;
pub const ASSUME = RBIMPL_ASSUME;
pub const UNREACHABLE = RBIMPL_UNREACHABLE();
pub const UNREACHABLE_RETURN = RBIMPL_UNREACHABLE_RETURN;
pub inline fn RB_LIKELY(x: anytype) @TypeOf(__builtin_expect(!!(x != 0), @as(c_int, 1))) {
    _ = &x;
    return __builtin_expect(!!(x != 0), @as(c_int, 1));
}
pub inline fn RB_UNLIKELY(x: anytype) @TypeOf(__builtin_expect(!!(x != 0), @as(c_int, 0))) {
    _ = &x;
    return __builtin_expect(!!(x != 0), @as(c_int, 0));
}
pub const RUBY_BACKWARD2_ATTRIBUTES_H = "";
pub const RBIMPL_ATTR_COLD_H = "";
pub const RBIMPL_ATTR_COLD = @compileError("unable to translate macro: undefined identifier `__cold__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/cold.h:32:10
pub const RBIMPL_ATTR_CONST_H = "";
pub const RBIMPL_HAS_DECLSPEC_ATTRIBUTE_H = "";
pub const RBIMPL_HAS_DECLSPEC_ATTRIBUTE = @compileError("unable to translate macro: undefined identifier `__has_declspec_attribute`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/has/declspec_attribute.h:27:10
pub const RBIMPL_ATTR_CONST = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/const.h:29:10
pub inline fn RBIMPL_ATTR_CONST_UNLESS_DEBUG() @TypeOf(RBIMPL_ATTR_CONST()) {
    return RBIMPL_ATTR_CONST();
}
pub const RBIMPL_ATTR_DEPRECATED_H = "";
pub const RBIMPL_ATTR_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/deprecated.h:36:10
pub inline fn RBIMPL_ATTR_DEPRECATED_EXT(msg: anytype) @TypeOf(RBIMPL_ATTR_DEPRECATED(msg)) {
    _ = &msg;
    return RBIMPL_ATTR_DEPRECATED(msg);
}
pub const RBIMPL_ATTR_DEPRECATED_SINCE = @compileError("unable to translate C expr: expected ')' instead got '#'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/deprecated.h:75:9
pub const RBIMPL_ATTR_DEPRECATED_INTERNAL = @compileError("unable to translate C expr: expected ')' instead got '#'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/deprecated.h:77:9
pub inline fn RBIMPL_ATTR_DEPRECATED_INTERNAL_ONLY() @TypeOf(RBIMPL_ATTR_DEPRECATED("only for internal use")) {
    return RBIMPL_ATTR_DEPRECATED("only for internal use");
}
pub const RBIMPL_ATTR_ERROR_H = "";
pub const RBIMPL_ATTR_ERROR = @compileError("unable to translate macro: undefined identifier `__error__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/error.h:27:10
pub const RBIMPL_ATTR_FORCEINLINE_H = "";
pub const RBIMPL_ATTR_FORCEINLINE = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/forceinline.h:35:10
pub const RBIMPL_ATTR_FORMAT_H = "";
pub const RBIMPL_ATTR_FORMAT = @compileError("unable to translate macro: undefined identifier `__format__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/format.h:27:10
pub const RBIMPL_PRINTF_FORMAT = @compileError("unable to translate macro: undefined identifier `__printf__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/format.h:35:10
pub const RBIMPL_ATTR_MAYBE_UNUSED_H = "";
pub const RBIMPL_ATTR_MAYBE_UNUSED = @compileError("unable to translate macro: undefined identifier `maybe_unused`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/maybe_unused.h:31:10
pub const RBIMPL_ATTR_NOINLINE_H = "";
pub const RBIMPL_ATTR_NOINLINE = @compileError("unable to translate macro: undefined identifier `__noinline__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/noinline.h:30:10
pub const RBIMPL_ATTR_NONNULL_H = "";
pub const RBIMPL_ATTR_NONNULL = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/nonnull.h:27:10
pub inline fn RBIMPL_NONNULL_ARG(arg: anytype) @TypeOf(RBIMPL_ASSERT_NOTHING) {
    _ = &arg;
    return RBIMPL_ASSERT_NOTHING;
}
pub const RBIMPL_ATTR_NORETURN_H = "";
pub const RBIMPL_ATTR_NORETURN = @compileError("unable to translate macro: undefined identifier `__noreturn__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/noreturn.h:32:10
pub const RBIMPL_ATTR_PACKED_STRUCT_H = "";
pub inline fn RBIMPL_ATTR_PACKED_STRUCT_UNALIGNED_BEGIN() @TypeOf(RBIMPL_ATTR_PACKED_STRUCT_BEGIN()) {
    return RBIMPL_ATTR_PACKED_STRUCT_BEGIN();
}
pub inline fn RBIMPL_ATTR_PACKED_STRUCT_UNALIGNED_END() @TypeOf(RBIMPL_ATTR_PACKED_STRUCT_END()) {
    return RBIMPL_ATTR_PACKED_STRUCT_END();
}
pub const RBIMPL_ATTR_PURE_H = "";
pub const RUBY_ASSERT_H = "";
pub const RBIMPL_RUBY_DEBUG = @as(c_int, 0);
pub const RBIMPL_NDEBUG = @as(c_int, 0);
pub const RUBY_DEBUG = @as(c_int, 0);
pub const RUBY_NDEBUG = @as(c_int, 1);
pub const NDEBUG = "";
pub const RBIMPL_ASSERT_NOTHING = RBIMPL_CAST(@import("std").zig.c_translation.cast(anyopaque, @as(c_int, 0)));
pub const RBIMPL_ASSERT_FUNC = RUBY_FUNCTION_NAME_STRING;
pub const RBIMPL_VA_OPT_ARGS = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/assert.h:162:10
pub const RUBY_ASSERT_FAIL = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/assert.h:164:10
pub const RUBY_ASSERT_MESG = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/assert.h:186:10
pub const RUBY_ASSERT_ALWAYS = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/assert.h:199:10
pub const RUBY_ASSERT = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/assert.h:219:12
pub const RUBY_ASSERT_NDEBUG = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/assert.h:236:12
pub const RUBY_ASSERT_MESG_WHEN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/assert.h:262:12
pub const RUBY_ASSERT_WHEN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/assert.h:278:10
pub const RUBY_ASSERT_BUILTIN_TYPE = @compileError("unable to translate macro: undefined identifier `rb_builtin_type_name`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/assert.h:291:9
pub const RBIMPL_ASSERT_OR_ASSUME = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/assert.h:311:10
pub const RBIMPL_ATTR_PURE = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/pure.h:29:10
pub inline fn RBIMPL_ATTR_PURE_UNLESS_DEBUG() @TypeOf(RBIMPL_ATTR_PURE()) {
    return RBIMPL_ATTR_PURE();
}
pub const RBIMPL_ATTR_WARNING_H = "";
pub const RBIMPL_ATTR_WARNING = @compileError("unable to translate macro: undefined identifier `__warning__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/warning.h:27:10
pub const DEPRECATED_TYPE = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/backward/2/attributes.h:64:10
pub inline fn RUBY_CXX_DEPRECATED(mseg: anytype) @TypeOf(RBIMPL_ATTR_DEPRECATED(mseg)) {
    _ = &mseg;
    return RBIMPL_ATTR_DEPRECATED(mseg);
}
pub const HAVE_ATTRIBUTE_ERRORFUNC = @as(c_int, 1);
pub const HAVE_ATTRIBUTE_WARNINGFUNC = @as(c_int, 1);
pub const COLDFUNC = RBIMPL_ATTR_COLD();
pub inline fn PRINTF_ARGS(decl: anytype, string_index: anytype, first_to_check: anytype) @TypeOf(RBIMPL_ATTR_FORMAT(RBIMPL_PRINTF_FORMAT, string_index, first_to_check) ++ decl) {
    _ = &decl;
    _ = &string_index;
    _ = &first_to_check;
    return RBIMPL_ATTR_FORMAT(RBIMPL_PRINTF_FORMAT, string_index, first_to_check) ++ decl;
}
pub const RUBY_ATTR_ALLOC_SIZE = RBIMPL_ATTR_ALLOC_SIZE;
pub const RUBY_ATTR_MALLOC = RBIMPL_ATTR_RESTRICT();
pub const RUBY_ATTR_RETURNS_NONNULL = RBIMPL_ATTR_RETURNS_NONNULL();
pub inline fn RUBY_ALIAS_FUNCTION(prot: anytype, name: anytype, args: anytype) @TypeOf(RUBY_ALIAS_FUNCTION_TYPE(VALUE, prot, name, args)) {
    _ = &prot;
    _ = &name;
    _ = &args;
    return RUBY_ALIAS_FUNCTION_TYPE(VALUE, prot, name, args);
}
pub const NORETURN_STYLE_NEW = "";
pub inline fn PACKED_STRUCT(x: anytype) @TypeOf(RBIMPL_ATTR_PACKED_STRUCT_BEGIN() ++ x ++ RBIMPL_ATTR_PACKED_STRUCT_END()) {
    _ = &x;
    return RBIMPL_ATTR_PACKED_STRUCT_BEGIN() ++ x ++ RBIMPL_ATTR_PACKED_STRUCT_END();
}
pub inline fn PACKED_STRUCT_UNALIGNED(x: anytype) @TypeOf(RBIMPL_ATTR_PACKED_STRUCT_UNALIGNED_BEGIN() ++ x ++ RBIMPL_ATTR_PACKED_STRUCT_UNALIGNED_END()) {
    _ = &x;
    return RBIMPL_ATTR_PACKED_STRUCT_UNALIGNED_BEGIN() ++ x ++ RBIMPL_ATTR_PACKED_STRUCT_UNALIGNED_END();
}
pub inline fn RB_UNUSED_VAR(x: anytype) @TypeOf(x ++ RBIMPL_ATTR_MAYBE_UNUSED()) {
    _ = &x;
    return x ++ RBIMPL_ATTR_MAYBE_UNUSED();
}
pub const RUBY_BACKWARD2_BOOL_H = "";
pub const RBIMPL_STDBOOL_H = "";
pub const __STDBOOL_H = "";
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const FALSE = @"false";
pub const TRUE = @"true";
pub const RUBY_BACKWARD2_LONG_LONG_H = "";
pub const HAVE_TRUE_LONG_LONG = @as(c_int, 1);
pub const LONG_LONG = @compileError("unable to translate macro: undefined identifier `Wc`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/backward/2/long_long.h:42:10
pub const RUBY_BACKWARD2_STDALIGN_H = "";
pub const RBIMPL_STDALIGN_H = "";
pub const RBIMPL_ALIGNAS = @compileError("unable to translate macro: undefined identifier `__aligned__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/stdalign.h:69:10
pub inline fn RBIMPL_ALIGNOF(T: anytype) @TypeOf(RB_GNUC_EXTENSION(@alignOf(T))) {
    _ = &T;
    return RB_GNUC_EXTENSION(@alignOf(T));
}
pub const RUBY_ALIGNAS = RBIMPL_ALIGNAS;
pub const RUBY_ALIGNOF = RBIMPL_ALIGNOF;
pub const RUBY_BACKWARD2_STDARG_H = "";
pub inline fn @"_"(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn __(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const ANYARGS = "";
pub const RBIMPL_DOSISH_H = "";
pub const PATH_SEP = ":";
pub const PATH_SEP_CHAR = PATH_SEP[@as(usize, @intCast(@as(c_int, 0)))];
pub const PATH_ENV = "PATH";
pub const CASEFOLD_FILESYSTEM = @as(c_int, 0);
pub const RUBY_MISSING_H = @as(c_int, 1);
pub const _MATH_H = @as(c_int, 1);
pub const _BITS_LIBM_SIMD_DECL_STUBS_H = @as(c_int, 1);
pub const __DECL_SIMD_cos = "";
pub const __DECL_SIMD_cosf = "";
pub const __DECL_SIMD_cosl = "";
pub const __DECL_SIMD_cosf16 = "";
pub const __DECL_SIMD_cosf32 = "";
pub const __DECL_SIMD_cosf64 = "";
pub const __DECL_SIMD_cosf128 = "";
pub const __DECL_SIMD_cosf32x = "";
pub const __DECL_SIMD_cosf64x = "";
pub const __DECL_SIMD_cosf128x = "";
pub const __DECL_SIMD_sin = "";
pub const __DECL_SIMD_sinf = "";
pub const __DECL_SIMD_sinl = "";
pub const __DECL_SIMD_sinf16 = "";
pub const __DECL_SIMD_sinf32 = "";
pub const __DECL_SIMD_sinf64 = "";
pub const __DECL_SIMD_sinf128 = "";
pub const __DECL_SIMD_sinf32x = "";
pub const __DECL_SIMD_sinf64x = "";
pub const __DECL_SIMD_sinf128x = "";
pub const __DECL_SIMD_sincos = "";
pub const __DECL_SIMD_sincosf = "";
pub const __DECL_SIMD_sincosl = "";
pub const __DECL_SIMD_sincosf16 = "";
pub const __DECL_SIMD_sincosf32 = "";
pub const __DECL_SIMD_sincosf64 = "";
pub const __DECL_SIMD_sincosf128 = "";
pub const __DECL_SIMD_sincosf32x = "";
pub const __DECL_SIMD_sincosf64x = "";
pub const __DECL_SIMD_sincosf128x = "";
pub const __DECL_SIMD_log = "";
pub const __DECL_SIMD_logf = "";
pub const __DECL_SIMD_logl = "";
pub const __DECL_SIMD_logf16 = "";
pub const __DECL_SIMD_logf32 = "";
pub const __DECL_SIMD_logf64 = "";
pub const __DECL_SIMD_logf128 = "";
pub const __DECL_SIMD_logf32x = "";
pub const __DECL_SIMD_logf64x = "";
pub const __DECL_SIMD_logf128x = "";
pub const __DECL_SIMD_exp = "";
pub const __DECL_SIMD_expf = "";
pub const __DECL_SIMD_expl = "";
pub const __DECL_SIMD_expf16 = "";
pub const __DECL_SIMD_expf32 = "";
pub const __DECL_SIMD_expf64 = "";
pub const __DECL_SIMD_expf128 = "";
pub const __DECL_SIMD_expf32x = "";
pub const __DECL_SIMD_expf64x = "";
pub const __DECL_SIMD_expf128x = "";
pub const __DECL_SIMD_pow = "";
pub const __DECL_SIMD_powf = "";
pub const __DECL_SIMD_powl = "";
pub const __DECL_SIMD_powf16 = "";
pub const __DECL_SIMD_powf32 = "";
pub const __DECL_SIMD_powf64 = "";
pub const __DECL_SIMD_powf128 = "";
pub const __DECL_SIMD_powf32x = "";
pub const __DECL_SIMD_powf64x = "";
pub const __DECL_SIMD_powf128x = "";
pub const __DECL_SIMD_acos = "";
pub const __DECL_SIMD_acosf = "";
pub const __DECL_SIMD_acosl = "";
pub const __DECL_SIMD_acosf16 = "";
pub const __DECL_SIMD_acosf32 = "";
pub const __DECL_SIMD_acosf64 = "";
pub const __DECL_SIMD_acosf128 = "";
pub const __DECL_SIMD_acosf32x = "";
pub const __DECL_SIMD_acosf64x = "";
pub const __DECL_SIMD_acosf128x = "";
pub const __DECL_SIMD_atan = "";
pub const __DECL_SIMD_atanf = "";
pub const __DECL_SIMD_atanl = "";
pub const __DECL_SIMD_atanf16 = "";
pub const __DECL_SIMD_atanf32 = "";
pub const __DECL_SIMD_atanf64 = "";
pub const __DECL_SIMD_atanf128 = "";
pub const __DECL_SIMD_atanf32x = "";
pub const __DECL_SIMD_atanf64x = "";
pub const __DECL_SIMD_atanf128x = "";
pub const __DECL_SIMD_asin = "";
pub const __DECL_SIMD_asinf = "";
pub const __DECL_SIMD_asinl = "";
pub const __DECL_SIMD_asinf16 = "";
pub const __DECL_SIMD_asinf32 = "";
pub const __DECL_SIMD_asinf64 = "";
pub const __DECL_SIMD_asinf128 = "";
pub const __DECL_SIMD_asinf32x = "";
pub const __DECL_SIMD_asinf64x = "";
pub const __DECL_SIMD_asinf128x = "";
pub const __DECL_SIMD_hypot = "";
pub const __DECL_SIMD_hypotf = "";
pub const __DECL_SIMD_hypotl = "";
pub const __DECL_SIMD_hypotf16 = "";
pub const __DECL_SIMD_hypotf32 = "";
pub const __DECL_SIMD_hypotf64 = "";
pub const __DECL_SIMD_hypotf128 = "";
pub const __DECL_SIMD_hypotf32x = "";
pub const __DECL_SIMD_hypotf64x = "";
pub const __DECL_SIMD_hypotf128x = "";
pub const __DECL_SIMD_exp2 = "";
pub const __DECL_SIMD_exp2f = "";
pub const __DECL_SIMD_exp2l = "";
pub const __DECL_SIMD_exp2f16 = "";
pub const __DECL_SIMD_exp2f32 = "";
pub const __DECL_SIMD_exp2f64 = "";
pub const __DECL_SIMD_exp2f128 = "";
pub const __DECL_SIMD_exp2f32x = "";
pub const __DECL_SIMD_exp2f64x = "";
pub const __DECL_SIMD_exp2f128x = "";
pub const __DECL_SIMD_exp10 = "";
pub const __DECL_SIMD_exp10f = "";
pub const __DECL_SIMD_exp10l = "";
pub const __DECL_SIMD_exp10f16 = "";
pub const __DECL_SIMD_exp10f32 = "";
pub const __DECL_SIMD_exp10f64 = "";
pub const __DECL_SIMD_exp10f128 = "";
pub const __DECL_SIMD_exp10f32x = "";
pub const __DECL_SIMD_exp10f64x = "";
pub const __DECL_SIMD_exp10f128x = "";
pub const __DECL_SIMD_cosh = "";
pub const __DECL_SIMD_coshf = "";
pub const __DECL_SIMD_coshl = "";
pub const __DECL_SIMD_coshf16 = "";
pub const __DECL_SIMD_coshf32 = "";
pub const __DECL_SIMD_coshf64 = "";
pub const __DECL_SIMD_coshf128 = "";
pub const __DECL_SIMD_coshf32x = "";
pub const __DECL_SIMD_coshf64x = "";
pub const __DECL_SIMD_coshf128x = "";
pub const __DECL_SIMD_expm1 = "";
pub const __DECL_SIMD_expm1f = "";
pub const __DECL_SIMD_expm1l = "";
pub const __DECL_SIMD_expm1f16 = "";
pub const __DECL_SIMD_expm1f32 = "";
pub const __DECL_SIMD_expm1f64 = "";
pub const __DECL_SIMD_expm1f128 = "";
pub const __DECL_SIMD_expm1f32x = "";
pub const __DECL_SIMD_expm1f64x = "";
pub const __DECL_SIMD_expm1f128x = "";
pub const __DECL_SIMD_sinh = "";
pub const __DECL_SIMD_sinhf = "";
pub const __DECL_SIMD_sinhl = "";
pub const __DECL_SIMD_sinhf16 = "";
pub const __DECL_SIMD_sinhf32 = "";
pub const __DECL_SIMD_sinhf64 = "";
pub const __DECL_SIMD_sinhf128 = "";
pub const __DECL_SIMD_sinhf32x = "";
pub const __DECL_SIMD_sinhf64x = "";
pub const __DECL_SIMD_sinhf128x = "";
pub const __DECL_SIMD_cbrt = "";
pub const __DECL_SIMD_cbrtf = "";
pub const __DECL_SIMD_cbrtl = "";
pub const __DECL_SIMD_cbrtf16 = "";
pub const __DECL_SIMD_cbrtf32 = "";
pub const __DECL_SIMD_cbrtf64 = "";
pub const __DECL_SIMD_cbrtf128 = "";
pub const __DECL_SIMD_cbrtf32x = "";
pub const __DECL_SIMD_cbrtf64x = "";
pub const __DECL_SIMD_cbrtf128x = "";
pub const __DECL_SIMD_atan2 = "";
pub const __DECL_SIMD_atan2f = "";
pub const __DECL_SIMD_atan2l = "";
pub const __DECL_SIMD_atan2f16 = "";
pub const __DECL_SIMD_atan2f32 = "";
pub const __DECL_SIMD_atan2f64 = "";
pub const __DECL_SIMD_atan2f128 = "";
pub const __DECL_SIMD_atan2f32x = "";
pub const __DECL_SIMD_atan2f64x = "";
pub const __DECL_SIMD_atan2f128x = "";
pub const __DECL_SIMD_log10 = "";
pub const __DECL_SIMD_log10f = "";
pub const __DECL_SIMD_log10l = "";
pub const __DECL_SIMD_log10f16 = "";
pub const __DECL_SIMD_log10f32 = "";
pub const __DECL_SIMD_log10f64 = "";
pub const __DECL_SIMD_log10f128 = "";
pub const __DECL_SIMD_log10f32x = "";
pub const __DECL_SIMD_log10f64x = "";
pub const __DECL_SIMD_log10f128x = "";
pub const __DECL_SIMD_log2 = "";
pub const __DECL_SIMD_log2f = "";
pub const __DECL_SIMD_log2l = "";
pub const __DECL_SIMD_log2f16 = "";
pub const __DECL_SIMD_log2f32 = "";
pub const __DECL_SIMD_log2f64 = "";
pub const __DECL_SIMD_log2f128 = "";
pub const __DECL_SIMD_log2f32x = "";
pub const __DECL_SIMD_log2f64x = "";
pub const __DECL_SIMD_log2f128x = "";
pub const __DECL_SIMD_log1p = "";
pub const __DECL_SIMD_log1pf = "";
pub const __DECL_SIMD_log1pl = "";
pub const __DECL_SIMD_log1pf16 = "";
pub const __DECL_SIMD_log1pf32 = "";
pub const __DECL_SIMD_log1pf64 = "";
pub const __DECL_SIMD_log1pf128 = "";
pub const __DECL_SIMD_log1pf32x = "";
pub const __DECL_SIMD_log1pf64x = "";
pub const __DECL_SIMD_log1pf128x = "";
pub const __DECL_SIMD_atanh = "";
pub const __DECL_SIMD_atanhf = "";
pub const __DECL_SIMD_atanhl = "";
pub const __DECL_SIMD_atanhf16 = "";
pub const __DECL_SIMD_atanhf32 = "";
pub const __DECL_SIMD_atanhf64 = "";
pub const __DECL_SIMD_atanhf128 = "";
pub const __DECL_SIMD_atanhf32x = "";
pub const __DECL_SIMD_atanhf64x = "";
pub const __DECL_SIMD_atanhf128x = "";
pub const __DECL_SIMD_acosh = "";
pub const __DECL_SIMD_acoshf = "";
pub const __DECL_SIMD_acoshl = "";
pub const __DECL_SIMD_acoshf16 = "";
pub const __DECL_SIMD_acoshf32 = "";
pub const __DECL_SIMD_acoshf64 = "";
pub const __DECL_SIMD_acoshf128 = "";
pub const __DECL_SIMD_acoshf32x = "";
pub const __DECL_SIMD_acoshf64x = "";
pub const __DECL_SIMD_acoshf128x = "";
pub const __DECL_SIMD_erf = "";
pub const __DECL_SIMD_erff = "";
pub const __DECL_SIMD_erfl = "";
pub const __DECL_SIMD_erff16 = "";
pub const __DECL_SIMD_erff32 = "";
pub const __DECL_SIMD_erff64 = "";
pub const __DECL_SIMD_erff128 = "";
pub const __DECL_SIMD_erff32x = "";
pub const __DECL_SIMD_erff64x = "";
pub const __DECL_SIMD_erff128x = "";
pub const __DECL_SIMD_tanh = "";
pub const __DECL_SIMD_tanhf = "";
pub const __DECL_SIMD_tanhl = "";
pub const __DECL_SIMD_tanhf16 = "";
pub const __DECL_SIMD_tanhf32 = "";
pub const __DECL_SIMD_tanhf64 = "";
pub const __DECL_SIMD_tanhf128 = "";
pub const __DECL_SIMD_tanhf32x = "";
pub const __DECL_SIMD_tanhf64x = "";
pub const __DECL_SIMD_tanhf128x = "";
pub const __DECL_SIMD_asinh = "";
pub const __DECL_SIMD_asinhf = "";
pub const __DECL_SIMD_asinhl = "";
pub const __DECL_SIMD_asinhf16 = "";
pub const __DECL_SIMD_asinhf32 = "";
pub const __DECL_SIMD_asinhf64 = "";
pub const __DECL_SIMD_asinhf128 = "";
pub const __DECL_SIMD_asinhf32x = "";
pub const __DECL_SIMD_asinhf64x = "";
pub const __DECL_SIMD_asinhf128x = "";
pub const __DECL_SIMD_erfc = "";
pub const __DECL_SIMD_erfcf = "";
pub const __DECL_SIMD_erfcl = "";
pub const __DECL_SIMD_erfcf16 = "";
pub const __DECL_SIMD_erfcf32 = "";
pub const __DECL_SIMD_erfcf64 = "";
pub const __DECL_SIMD_erfcf128 = "";
pub const __DECL_SIMD_erfcf32x = "";
pub const __DECL_SIMD_erfcf64x = "";
pub const __DECL_SIMD_erfcf128x = "";
pub const __DECL_SIMD_tan = "";
pub const __DECL_SIMD_tanf = "";
pub const __DECL_SIMD_tanl = "";
pub const __DECL_SIMD_tanf16 = "";
pub const __DECL_SIMD_tanf32 = "";
pub const __DECL_SIMD_tanf64 = "";
pub const __DECL_SIMD_tanf128 = "";
pub const __DECL_SIMD_tanf32x = "";
pub const __DECL_SIMD_tanf64x = "";
pub const __DECL_SIMD_tanf128x = "";
pub const HUGE_VAL = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`");
// /usr/include/math.h:48:10
pub const HUGE_VALF = __builtin_huge_valf();
pub const HUGE_VALL = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`");
// /usr/include/math.h:60:11
pub const HUGE_VAL_F32 = __builtin_huge_valf32();
pub const HUGE_VAL_F64 = __builtin_huge_valf64();
pub const HUGE_VAL_F32X = __builtin_huge_valf32x();
pub const HUGE_VAL_F64X = __builtin_huge_valf64x();
pub const INFINITY = __builtin_inff();
pub const NAN = __builtin_nanf("");
pub const SNANF = @compileError("unable to translate macro: undefined identifier `__builtin_nansf`");
// /usr/include/math.h:110:11
pub const SNAN = @compileError("unable to translate macro: undefined identifier `__builtin_nans`");
// /usr/include/math.h:111:11
pub const SNANL = @compileError("unable to translate macro: undefined identifier `__builtin_nansl`");
// /usr/include/math.h:112:11
pub const SNANF32 = __builtin_nansf32("");
pub const SNANF64 = __builtin_nansf64("");
pub const SNANF32X = __builtin_nansf32x("");
pub const SNANF64X = __builtin_nansf64x("");
pub const __GLIBC_FLT_EVAL_METHOD = @compileError("unable to translate macro: undefined identifier `__FLT_EVAL_METHOD__`");
// /usr/include/x86_64-linux-gnu/bits/flt-eval-method.h:27:11
pub const __FP_LOGB0_IS_MIN = @as(c_int, 1);
pub const __FP_LOGBNAN_IS_MIN = @as(c_int, 1);
pub const FP_ILOGB0 = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const FP_ILOGBNAN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const __FP_LONG_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 0x7fffffffffffffff, .hex);
pub const FP_LLOGB0 = -__FP_LONG_MAX - @as(c_int, 1);
pub const FP_LLOGBNAN = -__FP_LONG_MAX - @as(c_int, 1);
pub const __SIMD_DECL = @compileError("unable to translate macro: undefined identifier `__DECL_SIMD_`");
// /usr/include/math.h:276:9
pub inline fn __MATHCALL_VEC(function: anytype, suffix: anytype, args: anytype) @TypeOf(__SIMD_DECL(__MATH_PRECNAME(function, suffix)) ++ __MATHCALL(function, suffix, args)) {
    _ = &function;
    _ = &suffix;
    _ = &args;
    return __SIMD_DECL(__MATH_PRECNAME(function, suffix)) ++ __MATHCALL(function, suffix, args);
}
pub inline fn __MATHDECL_VEC(@"type": anytype, function: anytype, suffix: anytype, args: anytype) @TypeOf(__SIMD_DECL(__MATH_PRECNAME(function, suffix)) ++ __MATHDECL(@"type", function, suffix, args)) {
    _ = &@"type";
    _ = &function;
    _ = &suffix;
    _ = &args;
    return __SIMD_DECL(__MATH_PRECNAME(function, suffix)) ++ __MATHDECL(@"type", function, suffix, args);
}
pub inline fn __MATHCALL(function: anytype, suffix: anytype, args: anytype) @TypeOf(__MATHDECL(_Mdouble_, function, suffix, args)) {
    _ = &function;
    _ = &suffix;
    _ = &args;
    return __MATHDECL(_Mdouble_, function, suffix, args);
}
pub const __MATHDECL = @compileError("unable to translate C expr: unexpected token ';'");
// /usr/include/math.h:288:9
pub inline fn __MATHCALLX(function: anytype, suffix: anytype, args: anytype, attrib: anytype) @TypeOf(__MATHDECLX(_Mdouble_, function, suffix, args, attrib)) {
    _ = &function;
    _ = &suffix;
    _ = &args;
    _ = &attrib;
    return __MATHDECLX(_Mdouble_, function, suffix, args, attrib);
}
pub const __MATHDECLX = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /usr/include/math.h:293:9
pub const __MATHDECL_1_IMPL = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/math.h:296:9
pub inline fn __MATHDECL_1(@"type": anytype, function: anytype, suffix: anytype, args: anytype) @TypeOf(__MATHDECL_1_IMPL(@"type", function, suffix, args)) {
    _ = &@"type";
    _ = &function;
    _ = &suffix;
    _ = &args;
    return __MATHDECL_1_IMPL(@"type", function, suffix, args);
}
pub inline fn __MATHDECL_ALIAS(@"type": anytype, function: anytype, suffix: anytype, args: anytype, alias: anytype) @TypeOf(__MATHDECL_1(@"type", function, suffix, args)) {
    _ = &@"type";
    _ = &function;
    _ = &suffix;
    _ = &args;
    _ = &alias;
    return __MATHDECL_1(@"type", function, suffix, args);
}
pub const __MATHREDIR = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/math.h:305:9
pub const _Mdouble_ = f64;
pub inline fn __MATH_PRECNAME(name: anytype, r: anytype) @TypeOf(__CONCAT(name, r)) {
    _ = &name;
    _ = &r;
    return __CONCAT(name, r);
}
pub const __MATH_DECLARING_DOUBLE = @as(c_int, 1);
pub const __MATH_DECLARING_FLOATN = @as(c_int, 0);
pub const __MATH_DECLARE_LDOUBLE = @as(c_int, 1);
pub const __MATHCALL_NARROW_ARGS_1 = @compileError("unable to translate macro: undefined identifier `__x`");
// /usr/include/math.h:550:9
pub const __MATHCALL_NARROW_ARGS_2 = @compileError("unable to translate macro: undefined identifier `__x`");
// /usr/include/math.h:551:9
pub const __MATHCALL_NARROW_ARGS_3 = @compileError("unable to translate macro: undefined identifier `__x`");
// /usr/include/math.h:552:9
pub const __MATHCALL_NARROW_NORMAL = @compileError("unable to translate macro: undefined identifier `__MATHCALL_NARROW_ARGS_`");
// /usr/include/math.h:553:9
pub const __MATHCALL_NARROW_REDIR = @compileError("unable to translate macro: undefined identifier `__MATHCALL_NARROW_ARGS_`");
// /usr/include/math.h:555:9
pub inline fn __MATHCALL_NARROW(func: anytype, redir: anytype, nargs: anytype) @TypeOf(__MATHCALL_NARROW_NORMAL(func, nargs)) {
    _ = &func;
    _ = &redir;
    _ = &nargs;
    return __MATHCALL_NARROW_NORMAL(func, nargs);
}
pub const _Mret_ = f32;
pub const _Marg_ = f64;
pub const __MATHCALL_NAME = @compileError("unable to translate macro: undefined identifier `f`");
// /usr/include/math.h:565:10
pub const __MATH_TG = @compileError("unable to translate macro: undefined identifier `f`");
// /usr/include/math.h:922:10
pub const fpclassify = @compileError("unable to translate macro: undefined identifier `__builtin_fpclassify`");
// /usr/include/math.h:967:11
pub inline fn signbit(x: anytype) @TypeOf(__builtin_signbit(x)) {
    _ = &x;
    return __builtin_signbit(x);
}
pub const isfinite = @compileError("unable to translate macro: undefined identifier `__builtin_isfinite`");
// /usr/include/math.h:994:11
pub const isnormal = @compileError("unable to translate macro: undefined identifier `__builtin_isnormal`");
// /usr/include/math.h:1002:11
pub const MATH_ERRNO = @as(c_int, 1);
pub const MATH_ERREXCEPT = @as(c_int, 2);
pub const math_errhandling = MATH_ERRNO | MATH_ERREXCEPT;
pub const __iscanonicalf = @compileError("unable to translate C expr: unexpected token '__typeof'");
// /usr/include/x86_64-linux-gnu/bits/iscanonical.h:25:9
pub const __iscanonical = @compileError("unable to translate C expr: unexpected token '__typeof'");
// /usr/include/x86_64-linux-gnu/bits/iscanonical.h:26:9
pub inline fn iscanonical(x: anytype) @TypeOf(__MATH_TG(x, __iscanonical, x)) {
    _ = &x;
    return __MATH_TG(x, __iscanonical, x);
}
pub inline fn issignaling(x: anytype) @TypeOf(__MATH_TG(x, __issignaling, x)) {
    _ = &x;
    return __MATH_TG(x, __issignaling, x);
}
pub inline fn issubnormal(x: anytype) @TypeOf(fpclassify(x) == FP_SUBNORMAL) {
    _ = &x;
    return fpclassify(x) == FP_SUBNORMAL;
}
pub const iszero = @compileError("unable to translate C expr: unexpected token '__typeof'");
// /usr/include/math.h:1095:12
pub const MAXFLOAT = @as(f32, 3.40282347e+38);
pub const M_E = @as(f64, 2.7182818284590452354);
pub const M_LOG2E = @as(f64, 1.4426950408889634074);
pub const M_LOG10E = @as(f64, 0.43429448190325182765);
pub const M_LN2 = @as(f64, 0.69314718055994530942);
pub const M_LN10 = @as(f64, 2.30258509299404568402);
pub const M_PI = @as(f64, 3.14159265358979323846);
pub const M_PI_2 = @as(f64, 1.57079632679489661923);
pub const M_PI_4 = @as(f64, 0.78539816339744830962);
pub const M_1_PI = @as(f64, 0.31830988618379067154);
pub const M_2_PI = @as(f64, 0.63661977236758134308);
pub const M_2_SQRTPI = @as(f64, 1.12837916709551257390);
pub const M_SQRT2 = @as(f64, 1.41421356237309504880);
pub const M_SQRT1_2 = @as(f64, 0.70710678118654752440);
pub const M_Ef = @as(f32, 2.7182818284590452354);
pub const M_LOG2Ef = @as(f32, 1.4426950408889634074);
pub const M_LOG10Ef = @as(f32, 0.43429448190325182765);
pub const M_LN2f = @as(f32, 0.69314718055994530942);
pub const M_LN10f = @as(f32, 2.30258509299404568402);
pub const M_PIf = @as(f32, 3.14159265358979323846);
pub const M_PI_2f = @as(f32, 1.57079632679489661923);
pub const M_PI_4f = @as(f32, 0.78539816339744830962);
pub const M_1_PIf = @as(f32, 0.31830988618379067154);
pub const M_2_PIf = @as(f32, 0.63661977236758134308);
pub const M_2_SQRTPIf = @as(f32, 1.12837916709551257390);
pub const M_SQRT2f = @as(f32, 1.41421356237309504880);
pub const M_SQRT1_2f = @as(f32, 0.70710678118654752440);
pub const M_El = @as(c_longdouble, 2.718281828459045235360287471352662498);
pub const M_LOG2El = @as(c_longdouble, 1.442695040888963407359924681001892137);
pub const M_LOG10El = @as(c_longdouble, 0.434294481903251827651128918916605082);
pub const M_LN2l = @as(c_longdouble, 0.693147180559945309417232121458176568);
pub const M_LN10l = @as(c_longdouble, 2.302585092994045684017991454684364208);
pub const M_PIl = @as(c_longdouble, 3.141592653589793238462643383279502884);
pub const M_PI_2l = @as(c_longdouble, 1.570796326794896619231321691639751442);
pub const M_PI_4l = @as(c_longdouble, 0.785398163397448309615660845819875721);
pub const M_1_PIl = @as(c_longdouble, 0.318309886183790671537767526745028724);
pub const M_2_PIl = @as(c_longdouble, 0.636619772367581343075535053490057448);
pub const M_2_SQRTPIl = @as(c_longdouble, 1.128379167095512573896158903121545172);
pub const M_SQRT2l = @as(c_longdouble, 1.414213562373095048801688724209698079);
pub const M_SQRT1_2l = @as(c_longdouble, 0.707106781186547524400844362104849039);
pub const M_Ef32 = __f32(@as(f64, 2.718281828459045235360287471352662498));
pub const M_LOG2Ef32 = __f32(@as(f64, 1.442695040888963407359924681001892137));
pub const M_LOG10Ef32 = __f32(@as(f64, 0.434294481903251827651128918916605082));
pub const M_LN2f32 = __f32(@as(f64, 0.693147180559945309417232121458176568));
pub const M_LN10f32 = __f32(@as(f64, 2.302585092994045684017991454684364208));
pub const M_PIf32 = __f32(@as(f64, 3.141592653589793238462643383279502884));
pub const M_PI_2f32 = __f32(@as(f64, 1.570796326794896619231321691639751442));
pub const M_PI_4f32 = __f32(@as(f64, 0.785398163397448309615660845819875721));
pub const M_1_PIf32 = __f32(@as(f64, 0.318309886183790671537767526745028724));
pub const M_2_PIf32 = __f32(@as(f64, 0.636619772367581343075535053490057448));
pub const M_2_SQRTPIf32 = __f32(@as(f64, 1.128379167095512573896158903121545172));
pub const M_SQRT2f32 = __f32(@as(f64, 1.414213562373095048801688724209698079));
pub const M_SQRT1_2f32 = __f32(@as(f64, 0.707106781186547524400844362104849039));
pub const M_Ef64 = __f64(@as(f64, 2.718281828459045235360287471352662498));
pub const M_LOG2Ef64 = __f64(@as(f64, 1.442695040888963407359924681001892137));
pub const M_LOG10Ef64 = __f64(@as(f64, 0.434294481903251827651128918916605082));
pub const M_LN2f64 = __f64(@as(f64, 0.693147180559945309417232121458176568));
pub const M_LN10f64 = __f64(@as(f64, 2.302585092994045684017991454684364208));
pub const M_PIf64 = __f64(@as(f64, 3.141592653589793238462643383279502884));
pub const M_PI_2f64 = __f64(@as(f64, 1.570796326794896619231321691639751442));
pub const M_PI_4f64 = __f64(@as(f64, 0.785398163397448309615660845819875721));
pub const M_1_PIf64 = __f64(@as(f64, 0.318309886183790671537767526745028724));
pub const M_2_PIf64 = __f64(@as(f64, 0.636619772367581343075535053490057448));
pub const M_2_SQRTPIf64 = __f64(@as(f64, 1.128379167095512573896158903121545172));
pub const M_SQRT2f64 = __f64(@as(f64, 1.414213562373095048801688724209698079));
pub const M_SQRT1_2f64 = __f64(@as(f64, 0.707106781186547524400844362104849039));
pub const M_Ef32x = __f32x(@as(f64, 2.718281828459045235360287471352662498));
pub const M_LOG2Ef32x = __f32x(@as(f64, 1.442695040888963407359924681001892137));
pub const M_LOG10Ef32x = __f32x(@as(f64, 0.434294481903251827651128918916605082));
pub const M_LN2f32x = __f32x(@as(f64, 0.693147180559945309417232121458176568));
pub const M_LN10f32x = __f32x(@as(f64, 2.302585092994045684017991454684364208));
pub const M_PIf32x = __f32x(@as(f64, 3.141592653589793238462643383279502884));
pub const M_PI_2f32x = __f32x(@as(f64, 1.570796326794896619231321691639751442));
pub const M_PI_4f32x = __f32x(@as(f64, 0.785398163397448309615660845819875721));
pub const M_1_PIf32x = __f32x(@as(f64, 0.318309886183790671537767526745028724));
pub const M_2_PIf32x = __f32x(@as(f64, 0.636619772367581343075535053490057448));
pub const M_2_SQRTPIf32x = __f32x(@as(f64, 1.128379167095512573896158903121545172));
pub const M_SQRT2f32x = __f32x(@as(f64, 1.414213562373095048801688724209698079));
pub const M_SQRT1_2f32x = __f32x(@as(f64, 0.707106781186547524400844362104849039));
pub const M_Ef64x = __f64x(@as(f64, 2.718281828459045235360287471352662498));
pub const M_LOG2Ef64x = __f64x(@as(f64, 1.442695040888963407359924681001892137));
pub const M_LOG10Ef64x = __f64x(@as(f64, 0.434294481903251827651128918916605082));
pub const M_LN2f64x = __f64x(@as(f64, 0.693147180559945309417232121458176568));
pub const M_LN10f64x = __f64x(@as(f64, 2.302585092994045684017991454684364208));
pub const M_PIf64x = __f64x(@as(f64, 3.141592653589793238462643383279502884));
pub const M_PI_2f64x = __f64x(@as(f64, 1.570796326794896619231321691639751442));
pub const M_PI_4f64x = __f64x(@as(f64, 0.785398163397448309615660845819875721));
pub const M_1_PIf64x = __f64x(@as(f64, 0.318309886183790671537767526745028724));
pub const M_2_PIf64x = __f64x(@as(f64, 0.636619772367581343075535053490057448));
pub const M_2_SQRTPIf64x = __f64x(@as(f64, 1.128379167095512573896158903121545172));
pub const M_SQRT2f64x = __f64x(@as(f64, 1.414213562373095048801688724209698079));
pub const M_SQRT1_2f64x = __f64x(@as(f64, 0.707106781186547524400844362104849039));
pub const isgreater = @compileError("unable to translate macro: undefined identifier `__builtin_isgreater`");
// /usr/include/math.h:1306:11
pub const isgreaterequal = @compileError("unable to translate macro: undefined identifier `__builtin_isgreaterequal`");
// /usr/include/math.h:1307:11
pub const isless = @compileError("unable to translate macro: undefined identifier `__builtin_isless`");
// /usr/include/math.h:1308:11
pub const islessequal = @compileError("unable to translate macro: undefined identifier `__builtin_islessequal`");
// /usr/include/math.h:1309:11
pub const islessgreater = @compileError("unable to translate macro: undefined identifier `__builtin_islessgreater`");
// /usr/include/math.h:1310:11
pub const isunordered = @compileError("unable to translate macro: undefined identifier `__builtin_isunordered`");
// /usr/include/math.h:1311:11
pub inline fn __MATH_EVAL_FMT2(x: anytype, y: anytype) @TypeOf((x + y) + @as(f32, 0.0)) {
    _ = &x;
    _ = &y;
    return (x + y) + @as(f32, 0.0);
}
pub inline fn iseqsig(x: anytype, y: anytype) @TypeOf(__MATH_TG(__MATH_EVAL_FMT2(x, y), __iseqsig, blk_1: {
    _ = &x;
    break :blk_1 y;
})) {
    _ = &x;
    _ = &y;
    return __MATH_TG(__MATH_EVAL_FMT2(x, y), __iseqsig, blk_1: {
        _ = &x;
        break :blk_1 y;
    });
}
pub const _TIME_H = @as(c_int, 1);
pub const _BITS_TIME_H = @as(c_int, 1);
pub const CLOCKS_PER_SEC = @import("std").zig.c_translation.cast(__clock_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal));
pub const CLOCK_REALTIME = @as(c_int, 0);
pub const CLOCK_MONOTONIC = @as(c_int, 1);
pub const CLOCK_PROCESS_CPUTIME_ID = @as(c_int, 2);
pub const CLOCK_THREAD_CPUTIME_ID = @as(c_int, 3);
pub const CLOCK_MONOTONIC_RAW = @as(c_int, 4);
pub const CLOCK_REALTIME_COARSE = @as(c_int, 5);
pub const CLOCK_MONOTONIC_COARSE = @as(c_int, 6);
pub const CLOCK_BOOTTIME = @as(c_int, 7);
pub const CLOCK_REALTIME_ALARM = @as(c_int, 8);
pub const CLOCK_BOOTTIME_ALARM = @as(c_int, 9);
pub const CLOCK_TAI = @as(c_int, 11);
pub const TIMER_ABSTIME = @as(c_int, 1);
pub const _BITS_TIMEX_H = @as(c_int, 1);
pub const ADJ_OFFSET = @as(c_int, 0x0001);
pub const ADJ_FREQUENCY = @as(c_int, 0x0002);
pub const ADJ_MAXERROR = @as(c_int, 0x0004);
pub const ADJ_ESTERROR = @as(c_int, 0x0008);
pub const ADJ_STATUS = @as(c_int, 0x0010);
pub const ADJ_TIMECONST = @as(c_int, 0x0020);
pub const ADJ_TAI = @as(c_int, 0x0080);
pub const ADJ_SETOFFSET = @as(c_int, 0x0100);
pub const ADJ_MICRO = @as(c_int, 0x1000);
pub const ADJ_NANO = @as(c_int, 0x2000);
pub const ADJ_TICK = @as(c_int, 0x4000);
pub const ADJ_OFFSET_SINGLESHOT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8001, .hex);
pub const ADJ_OFFSET_SS_READ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xa001, .hex);
pub const MOD_OFFSET = ADJ_OFFSET;
pub const MOD_FREQUENCY = ADJ_FREQUENCY;
pub const MOD_MAXERROR = ADJ_MAXERROR;
pub const MOD_ESTERROR = ADJ_ESTERROR;
pub const MOD_STATUS = ADJ_STATUS;
pub const MOD_TIMECONST = ADJ_TIMECONST;
pub const MOD_CLKB = ADJ_TICK;
pub const MOD_CLKA = ADJ_OFFSET_SINGLESHOT;
pub const MOD_TAI = ADJ_TAI;
pub const MOD_MICRO = ADJ_MICRO;
pub const MOD_NANO = ADJ_NANO;
pub const STA_PLL = @as(c_int, 0x0001);
pub const STA_PPSFREQ = @as(c_int, 0x0002);
pub const STA_PPSTIME = @as(c_int, 0x0004);
pub const STA_FLL = @as(c_int, 0x0008);
pub const STA_INS = @as(c_int, 0x0010);
pub const STA_DEL = @as(c_int, 0x0020);
pub const STA_UNSYNC = @as(c_int, 0x0040);
pub const STA_FREQHOLD = @as(c_int, 0x0080);
pub const STA_PPSSIGNAL = @as(c_int, 0x0100);
pub const STA_PPSJITTER = @as(c_int, 0x0200);
pub const STA_PPSWANDER = @as(c_int, 0x0400);
pub const STA_PPSERROR = @as(c_int, 0x0800);
pub const STA_CLOCKERR = @as(c_int, 0x1000);
pub const STA_NANO = @as(c_int, 0x2000);
pub const STA_MODE = @as(c_int, 0x4000);
pub const STA_CLK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hex);
pub const STA_RONLY = ((((((STA_PPSSIGNAL | STA_PPSJITTER) | STA_PPSWANDER) | STA_PPSERROR) | STA_CLOCKERR) | STA_NANO) | STA_MODE) | STA_CLK;
pub const __struct_tm_defined = @as(c_int, 1);
pub const __itimerspec_defined = @as(c_int, 1);
pub const TIME_UTC = @as(c_int, 1);
pub inline fn __isleap(year: anytype) @TypeOf((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 4)) == @as(c_int, 0)) and ((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 100)) != @as(c_int, 0)) or (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 400)) == @as(c_int, 0)))) {
    _ = &year;
    return (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 4)) == @as(c_int, 0)) and ((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 100)) != @as(c_int, 0)) or (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 400)) == @as(c_int, 0)));
}
pub const _SYS_TIME_H = @as(c_int, 1);
pub const TIMEVAL_TO_TIMESPEC = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/x86_64-linux-gnu/sys/time.h:38:10
pub const TIMESPEC_TO_TIMEVAL = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/x86_64-linux-gnu/sys/time.h:42:10
pub inline fn timerisset(tvp: anytype) @TypeOf((tvp.*.tv_sec != 0) or (tvp.*.tv_usec != 0)) {
    _ = &tvp;
    return (tvp.*.tv_sec != 0) or (tvp.*.tv_usec != 0);
}
pub const timerclear = @compileError("unable to translate C expr: expected ')' instead got '='");
// /usr/include/x86_64-linux-gnu/sys/time.h:232:10
pub inline fn timercmp(a: anytype, b: anytype, CMP: anytype) @TypeOf(if (a.*.tv_sec == b.*.tv_sec) a.*.tv_usec ++ CMP(b).*.tv_usec else a.*.tv_sec ++ CMP(b).*.tv_sec) {
    _ = &a;
    _ = &b;
    _ = &CMP;
    return if (a.*.tv_sec == b.*.tv_sec) a.*.tv_usec ++ CMP(b).*.tv_usec else a.*.tv_sec ++ CMP(b).*.tv_sec;
}
pub const timeradd = @compileError("unable to translate C expr: unexpected token 'do'");
// /usr/include/x86_64-linux-gnu/sys/time.h:237:10
pub const timersub = @compileError("unable to translate C expr: unexpected token 'do'");
// /usr/include/x86_64-linux-gnu/sys/time.h:247:10
pub const HAVE_FINITE = @as(c_int, 1);
pub const RUBY = "";
pub const RB_GNUC_EXTENSION = @compileError("unable to translate C expr: unexpected token '__extension__'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/defines.h:89:10
pub const RB_GNUC_EXTENSION_BLOCK = @compileError("unable to translate C expr: unexpected token '__extension__'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/defines.h:91:10
pub const RUBY_MBCHAR_MAXSIZE = INT_MAX;
pub const FLUSH_REGISTER_WINDOWS = @import("std").zig.c_translation.cast(anyopaque, @as(c_int, 0));
pub const RUBY_ABI_H = "";
pub const RBIMPL_ANYARGS_H = "";
pub const RBIMPL_ATTR_WEAKREF_H = "";
pub const RBIMPL_ATTR_WEAKREF = @compileError("unable to translate macro: undefined identifier `__weakref__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/weakref.h:27:10
pub const RBIMPL_INTERN_CLASS_H = "";
pub const RBIMPL_VALUE_H = "";
pub const RBIMPL_STATIC_ASSERT_H = "";
pub const _ASSERT_H = @as(c_int, 1);
pub const __ASSERT_VOID_CAST = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/assert.h:40:10
pub inline fn assert(expr: anytype) @TypeOf(__ASSERT_VOID_CAST(@as(c_int, 0))) {
    _ = &expr;
    return __ASSERT_VOID_CAST(@as(c_int, 0));
}
pub inline fn assert_perror(errnum: anytype) @TypeOf(__ASSERT_VOID_CAST(@as(c_int, 0))) {
    _ = &errnum;
    return __ASSERT_VOID_CAST(@as(c_int, 0));
}
pub const static_assert = @compileError("unable to translate C expr: unexpected token '_Static_assert'");
// /usr/include/assert.h:158:10
pub const RBIMPL_STATIC_ASSERT0 = @compileError("unable to translate C expr: unexpected token '__extension__'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/static_assert.h:49:10
pub const RBIMPL_STATIC_ASSERT = @compileError("unable to translate C expr: unexpected token '#'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/static_assert.h:70:10
pub const RUBY_BACKWARD2_LIMITS_H = "";
pub const __CLANG_LIMITS_H = "";
pub const _GCC_LIMITS_H_ = "";
pub const _LIBC_LIMITS_H_ = @as(c_int, 1);
pub const MB_LEN_MAX = @as(c_int, 16);
pub const LLONG_MIN = -LLONG_MAX - @as(c_int, 1);
pub const LLONG_MAX = __LONG_LONG_MAX__;
pub const ULLONG_MAX = (LLONG_MAX * @as(c_ulonglong, 2)) + @as(c_int, 1);
pub const CHAR_WIDTH = @as(c_int, 8);
pub const SCHAR_WIDTH = @as(c_int, 8);
pub const UCHAR_WIDTH = @as(c_int, 8);
pub const SHRT_WIDTH = @as(c_int, 16);
pub const USHRT_WIDTH = @as(c_int, 16);
pub const INT_WIDTH = @as(c_int, 32);
pub const UINT_WIDTH = @as(c_int, 32);
pub const LONG_WIDTH = __WORDSIZE;
pub const ULONG_WIDTH = __WORDSIZE;
pub const LLONG_WIDTH = @as(c_int, 64);
pub const ULLONG_WIDTH = @as(c_int, 64);
pub const BOOL_MAX = @as(c_int, 1);
pub const BOOL_WIDTH = @as(c_int, 1);
pub const _BITS_POSIX1_LIM_H = @as(c_int, 1);
pub const _POSIX_AIO_LISTIO_MAX = @as(c_int, 2);
pub const _POSIX_AIO_MAX = @as(c_int, 1);
pub const _POSIX_ARG_MAX = @as(c_int, 4096);
pub const _POSIX_CHILD_MAX = @as(c_int, 25);
pub const _POSIX_DELAYTIMER_MAX = @as(c_int, 32);
pub const _POSIX_HOST_NAME_MAX = @as(c_int, 255);
pub const _POSIX_LINK_MAX = @as(c_int, 8);
pub const _POSIX_LOGIN_NAME_MAX = @as(c_int, 9);
pub const _POSIX_MAX_CANON = @as(c_int, 255);
pub const _POSIX_MAX_INPUT = @as(c_int, 255);
pub const _POSIX_MQ_OPEN_MAX = @as(c_int, 8);
pub const _POSIX_MQ_PRIO_MAX = @as(c_int, 32);
pub const _POSIX_NAME_MAX = @as(c_int, 14);
pub const _POSIX_NGROUPS_MAX = @as(c_int, 8);
pub const _POSIX_OPEN_MAX = @as(c_int, 20);
pub const _POSIX_FD_SETSIZE = _POSIX_OPEN_MAX;
pub const _POSIX_PATH_MAX = @as(c_int, 256);
pub const _POSIX_PIPE_BUF = @as(c_int, 512);
pub const _POSIX_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX_RTSIG_MAX = @as(c_int, 8);
pub const _POSIX_SEM_NSEMS_MAX = @as(c_int, 256);
pub const _POSIX_SEM_VALUE_MAX = @as(c_int, 32767);
pub const _POSIX_SIGQUEUE_MAX = @as(c_int, 32);
pub const _POSIX_SSIZE_MAX = @as(c_int, 32767);
pub const _POSIX_STREAM_MAX = @as(c_int, 8);
pub const _POSIX_SYMLINK_MAX = @as(c_int, 255);
pub const _POSIX_SYMLOOP_MAX = @as(c_int, 8);
pub const _POSIX_TIMER_MAX = @as(c_int, 32);
pub const _POSIX_TTY_NAME_MAX = @as(c_int, 9);
pub const _POSIX_TZNAME_MAX = @as(c_int, 6);
pub const _POSIX_QLIMIT = @as(c_int, 1);
pub const _POSIX_HIWAT = _POSIX_PIPE_BUF;
pub const _POSIX_UIO_MAXIOV = @as(c_int, 16);
pub const _POSIX_CLOCKRES_MIN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 20000000, .decimal);
pub const __undef_NR_OPEN = "";
pub const __undef_LINK_MAX = "";
pub const __undef_OPEN_MAX = "";
pub const __undef_ARG_MAX = "";
pub const _LINUX_LIMITS_H = "";
pub const NR_OPEN = @as(c_int, 1024);
pub const NGROUPS_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const ARG_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 131072, .decimal);
pub const LINK_MAX = @as(c_int, 127);
pub const MAX_CANON = @as(c_int, 255);
pub const MAX_INPUT = @as(c_int, 255);
pub const NAME_MAX = @as(c_int, 255);
pub const PATH_MAX = @as(c_int, 4096);
pub const PIPE_BUF = @as(c_int, 4096);
pub const XATTR_NAME_MAX = @as(c_int, 255);
pub const XATTR_SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const XATTR_LIST_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const RTSIG_MAX = @as(c_int, 32);
pub const _POSIX_THREAD_KEYS_MAX = @as(c_int, 128);
pub const PTHREAD_KEYS_MAX = @as(c_int, 1024);
pub const _POSIX_THREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 4);
pub const PTHREAD_DESTRUCTOR_ITERATIONS = _POSIX_THREAD_DESTRUCTOR_ITERATIONS;
pub const _POSIX_THREAD_THREADS_MAX = @as(c_int, 64);
pub const AIO_PRIO_DELTA_MAX = @as(c_int, 20);
pub const __SC_THREAD_STACK_MIN_VALUE = @as(c_int, 75);
pub const PTHREAD_STACK_MIN = __sysconf(__SC_THREAD_STACK_MIN_VALUE);
pub const DELAYTIMER_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const TTY_NAME_MAX = @as(c_int, 32);
pub const LOGIN_NAME_MAX = @as(c_int, 256);
pub const HOST_NAME_MAX = @as(c_int, 64);
pub const MQ_PRIO_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const SEM_VALUE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SSIZE_MAX = LONG_MAX;
pub const _BITS_POSIX2_LIM_H = @as(c_int, 1);
pub const _POSIX2_BC_BASE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_DIM_MAX = @as(c_int, 2048);
pub const _POSIX2_BC_SCALE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_STRING_MAX = @as(c_int, 1000);
pub const _POSIX2_COLL_WEIGHTS_MAX = @as(c_int, 2);
pub const _POSIX2_EXPR_NEST_MAX = @as(c_int, 32);
pub const _POSIX2_LINE_MAX = @as(c_int, 2048);
pub const _POSIX2_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX2_CHARCLASS_NAME_MAX = @as(c_int, 14);
pub const BC_BASE_MAX = _POSIX2_BC_BASE_MAX;
pub const BC_DIM_MAX = _POSIX2_BC_DIM_MAX;
pub const BC_SCALE_MAX = _POSIX2_BC_SCALE_MAX;
pub const BC_STRING_MAX = _POSIX2_BC_STRING_MAX;
pub const COLL_WEIGHTS_MAX = @as(c_int, 255);
pub const EXPR_NEST_MAX = _POSIX2_EXPR_NEST_MAX;
pub const LINE_MAX = _POSIX2_LINE_MAX;
pub const CHARCLASS_NAME_MAX = @as(c_int, 2048);
pub const RE_DUP_MAX = @as(c_int, 0x7fff);
pub const _XOPEN_LIM_H = @as(c_int, 1);
pub const _XOPEN_IOV_MAX = _POSIX_UIO_MAXIOV;
pub const _BITS_UIO_LIM_H = @as(c_int, 1);
pub const __IOV_MAX = @as(c_int, 1024);
pub const IOV_MAX = __IOV_MAX;
pub const NL_ARGMAX = _POSIX_ARG_MAX;
pub const NL_LANGMAX = _POSIX2_LINE_MAX;
pub const NL_MSGMAX = INT_MAX;
pub const NL_NMAX = INT_MAX;
pub const NL_SETMAX = INT_MAX;
pub const NL_TEXTMAX = INT_MAX;
pub const NZERO = @as(c_int, 20);
pub const WORD_BIT = @as(c_int, 32);
pub const LONG_BIT = @as(c_int, 64);
pub const SCHAR_MAX = __SCHAR_MAX__;
pub const SHRT_MAX = __SHRT_MAX__;
pub const INT_MAX = __INT_MAX__;
pub const LONG_MAX = __LONG_MAX__;
pub const SCHAR_MIN = -__SCHAR_MAX__ - @as(c_int, 1);
pub const SHRT_MIN = -__SHRT_MAX__ - @as(c_int, 1);
pub const INT_MIN = -__INT_MAX__ - @as(c_int, 1);
pub const LONG_MIN = -__LONG_MAX__ - @as(c_long, 1);
pub const UCHAR_MAX = (__SCHAR_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const USHRT_MAX = (__SHRT_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const UINT_MAX = (__INT_MAX__ * @as(c_uint, 2)) + @as(c_uint, 1);
pub const ULONG_MAX = (__LONG_MAX__ * @as(c_ulong, 2)) + @as(c_ulong, 1);
pub const CHAR_BIT = __CHAR_BIT__;
pub const CHAR_MIN = SCHAR_MIN;
pub const CHAR_MAX = __SCHAR_MAX__;
pub const LONG_LONG_MAX = __LONG_LONG_MAX__;
pub const LONG_LONG_MIN = -__LONG_LONG_MAX__ - @as(c_longlong, 1);
pub const ULONG_LONG_MAX = (__LONG_LONG_MAX__ * @as(c_ulonglong, 2)) + @as(c_ulonglong, 1);
pub const SIGNED_VALUE = c_long;
pub const SIZEOF_VALUE = SIZEOF_LONG;
pub const PRI_VALUE_PREFIX = "l";
pub const RBIMPL_VALUE_NULL = @as(c_ulong, 0);
pub const RBIMPL_VALUE_ONE = @as(c_ulong, 1);
pub const RBIMPL_VALUE_FULL = ULONG_MAX;
pub const RBIMPL_INTERN_VM_H = "";
pub const HAVE_RB_DEFINE_ALLOC_FUNC = @as(c_int, 1);
pub const RBIMPL_METHOD_H = "";
pub const RBIMPL_CFUNC_IS_rb_f_notimplement = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/anyargs.h:102:11
pub const RBIMPL_ANYARGS_DISPATCH = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/anyargs.h:111:11
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_m2(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 2), rb_define_singleton_method_m2, rb_define_singleton_method_m3)) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 2), rb_define_singleton_method_m2, rb_define_singleton_method_m3);
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_m1(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 1), rb_define_singleton_method_m1, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_m2(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 1), rb_define_singleton_method_m1, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_m2(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_00(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 0), rb_define_singleton_method_00, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_m1(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 0), rb_define_singleton_method_00, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_m1(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_01(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 1), rb_define_singleton_method_01, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_00(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 1), rb_define_singleton_method_01, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_00(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_02(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 2), rb_define_singleton_method_02, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_01(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 2), rb_define_singleton_method_02, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_01(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_03(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 3), rb_define_singleton_method_03, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_02(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 3), rb_define_singleton_method_03, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_02(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_04(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 4), rb_define_singleton_method_04, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_03(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 4), rb_define_singleton_method_04, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_03(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_05(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 5), rb_define_singleton_method_05, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_04(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 5), rb_define_singleton_method_05, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_04(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_06(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 6), rb_define_singleton_method_06, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_05(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 6), rb_define_singleton_method_06, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_05(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_07(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 7), rb_define_singleton_method_07, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_06(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 7), rb_define_singleton_method_07, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_06(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_08(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 8), rb_define_singleton_method_08, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_07(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 8), rb_define_singleton_method_08, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_07(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_09(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 9), rb_define_singleton_method_09, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_08(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 9), rb_define_singleton_method_09, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_08(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_10(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 10), rb_define_singleton_method_10, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_09(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 10), rb_define_singleton_method_10, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_09(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_11(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 11), rb_define_singleton_method_11, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_10(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 11), rb_define_singleton_method_11, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_10(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_12(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 12), rb_define_singleton_method_12, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_11(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 12), rb_define_singleton_method_12, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_11(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_13(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 13), rb_define_singleton_method_13, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_12(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 13), rb_define_singleton_method_13, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_12(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_14(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 14), rb_define_singleton_method_14, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_13(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 14), rb_define_singleton_method_14, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_13(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_15(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 15), rb_define_singleton_method_15, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_14(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 15), rb_define_singleton_method_15, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_14(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_m2(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 2), rb_define_protected_method_m2, rb_define_protected_method_m3)) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 2), rb_define_protected_method_m2, rb_define_protected_method_m3);
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_m1(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 1), rb_define_protected_method_m1, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_m2(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 1), rb_define_protected_method_m1, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_m2(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_00(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 0), rb_define_protected_method_00, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_m1(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 0), rb_define_protected_method_00, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_m1(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_01(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 1), rb_define_protected_method_01, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_00(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 1), rb_define_protected_method_01, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_00(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_02(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 2), rb_define_protected_method_02, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_01(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 2), rb_define_protected_method_02, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_01(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_03(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 3), rb_define_protected_method_03, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_02(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 3), rb_define_protected_method_03, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_02(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_04(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 4), rb_define_protected_method_04, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_03(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 4), rb_define_protected_method_04, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_03(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_05(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 5), rb_define_protected_method_05, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_04(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 5), rb_define_protected_method_05, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_04(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_06(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 6), rb_define_protected_method_06, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_05(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 6), rb_define_protected_method_06, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_05(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_07(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 7), rb_define_protected_method_07, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_06(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 7), rb_define_protected_method_07, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_06(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_08(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 8), rb_define_protected_method_08, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_07(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 8), rb_define_protected_method_08, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_07(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_09(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 9), rb_define_protected_method_09, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_08(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 9), rb_define_protected_method_09, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_08(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_10(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 10), rb_define_protected_method_10, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_09(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 10), rb_define_protected_method_10, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_09(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_11(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 11), rb_define_protected_method_11, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_10(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 11), rb_define_protected_method_11, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_10(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_12(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 12), rb_define_protected_method_12, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_11(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 12), rb_define_protected_method_12, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_11(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_13(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 13), rb_define_protected_method_13, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_12(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 13), rb_define_protected_method_13, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_12(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_14(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 14), rb_define_protected_method_14, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_13(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 14), rb_define_protected_method_14, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_13(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_15(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 15), rb_define_protected_method_15, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_14(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 15), rb_define_protected_method_15, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_14(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_m2(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 2), rb_define_private_method_m2, rb_define_private_method_m3)) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 2), rb_define_private_method_m2, rb_define_private_method_m3);
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_m1(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 1), rb_define_private_method_m1, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_m2(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 1), rb_define_private_method_m1, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_m2(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_00(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 0), rb_define_private_method_00, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_m1(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 0), rb_define_private_method_00, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_m1(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_01(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 1), rb_define_private_method_01, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_00(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 1), rb_define_private_method_01, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_00(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_02(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 2), rb_define_private_method_02, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_01(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 2), rb_define_private_method_02, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_01(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_03(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 3), rb_define_private_method_03, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_02(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 3), rb_define_private_method_03, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_02(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_04(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 4), rb_define_private_method_04, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_03(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 4), rb_define_private_method_04, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_03(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_05(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 5), rb_define_private_method_05, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_04(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 5), rb_define_private_method_05, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_04(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_06(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 6), rb_define_private_method_06, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_05(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 6), rb_define_private_method_06, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_05(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_07(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 7), rb_define_private_method_07, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_06(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 7), rb_define_private_method_07, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_06(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_08(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 8), rb_define_private_method_08, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_07(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 8), rb_define_private_method_08, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_07(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_09(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 9), rb_define_private_method_09, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_08(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 9), rb_define_private_method_09, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_08(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_10(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 10), rb_define_private_method_10, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_09(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 10), rb_define_private_method_10, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_09(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_11(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 11), rb_define_private_method_11, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_10(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 11), rb_define_private_method_11, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_10(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_12(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 12), rb_define_private_method_12, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_11(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 12), rb_define_private_method_12, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_11(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_13(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 13), rb_define_private_method_13, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_12(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 13), rb_define_private_method_13, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_12(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_14(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 14), rb_define_private_method_14, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_13(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 14), rb_define_private_method_14, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_13(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_15(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 15), rb_define_private_method_15, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_14(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 15), rb_define_private_method_15, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_14(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_m2(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 2), rb_define_module_function_m2, rb_define_module_function_m3)) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 2), rb_define_module_function_m2, rb_define_module_function_m3);
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_m1(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 1), rb_define_module_function_m1, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_m2(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 1), rb_define_module_function_m1, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_m2(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_00(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 0), rb_define_module_function_00, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_m1(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 0), rb_define_module_function_00, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_m1(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_01(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 1), rb_define_module_function_01, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_00(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 1), rb_define_module_function_01, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_00(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_02(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 2), rb_define_module_function_02, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_01(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 2), rb_define_module_function_02, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_01(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_03(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 3), rb_define_module_function_03, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_02(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 3), rb_define_module_function_03, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_02(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_04(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 4), rb_define_module_function_04, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_03(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 4), rb_define_module_function_04, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_03(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_05(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 5), rb_define_module_function_05, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_04(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 5), rb_define_module_function_05, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_04(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_06(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 6), rb_define_module_function_06, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_05(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 6), rb_define_module_function_06, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_05(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_07(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 7), rb_define_module_function_07, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_06(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 7), rb_define_module_function_07, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_06(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_08(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 8), rb_define_module_function_08, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_07(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 8), rb_define_module_function_08, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_07(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_09(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 9), rb_define_module_function_09, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_08(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 9), rb_define_module_function_09, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_08(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_10(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 10), rb_define_module_function_10, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_09(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 10), rb_define_module_function_10, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_09(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_11(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 11), rb_define_module_function_11, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_10(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 11), rb_define_module_function_11, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_10(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_12(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 12), rb_define_module_function_12, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_11(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 12), rb_define_module_function_12, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_11(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_13(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 13), rb_define_module_function_13, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_12(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 13), rb_define_module_function_13, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_12(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_14(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 14), rb_define_module_function_14, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_13(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 14), rb_define_module_function_14, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_13(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_15(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 15), rb_define_module_function_15, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_14(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 15), rb_define_module_function_15, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_14(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_m2(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 2), rb_define_global_function_m2, rb_define_global_function_m3)) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 2), rb_define_global_function_m2, rb_define_global_function_m3);
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_m1(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 1), rb_define_global_function_m1, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_m2(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 1), rb_define_global_function_m1, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_m2(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_00(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 0), rb_define_global_function_00, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_m1(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 0), rb_define_global_function_00, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_m1(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_01(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 1), rb_define_global_function_01, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_00(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 1), rb_define_global_function_01, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_00(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_02(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 2), rb_define_global_function_02, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_01(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 2), rb_define_global_function_02, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_01(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_03(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 3), rb_define_global_function_03, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_02(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 3), rb_define_global_function_03, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_02(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_04(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 4), rb_define_global_function_04, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_03(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 4), rb_define_global_function_04, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_03(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_05(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 5), rb_define_global_function_05, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_04(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 5), rb_define_global_function_05, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_04(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_06(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 6), rb_define_global_function_06, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_05(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 6), rb_define_global_function_06, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_05(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_07(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 7), rb_define_global_function_07, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_06(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 7), rb_define_global_function_07, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_06(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_08(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 8), rb_define_global_function_08, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_07(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 8), rb_define_global_function_08, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_07(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_09(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 9), rb_define_global_function_09, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_08(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 9), rb_define_global_function_09, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_08(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_10(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 10), rb_define_global_function_10, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_09(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 10), rb_define_global_function_10, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_09(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_11(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 11), rb_define_global_function_11, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_10(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 11), rb_define_global_function_11, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_10(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_12(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 12), rb_define_global_function_12, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_11(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 12), rb_define_global_function_12, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_11(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_13(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 13), rb_define_global_function_13, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_12(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 13), rb_define_global_function_13, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_12(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_14(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 14), rb_define_global_function_14, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_13(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 14), rb_define_global_function_14, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_13(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_15(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 15), rb_define_global_function_15, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_14(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 15), rb_define_global_function_15, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_14(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_m2(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 2), rb_define_method_id_m2, rb_define_method_id_m3)) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 2), rb_define_method_id_m2, rb_define_method_id_m3);
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_m1(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 1), rb_define_method_id_m1, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_m2(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 1), rb_define_method_id_m1, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_m2(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_00(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 0), rb_define_method_id_00, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_m1(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 0), rb_define_method_id_00, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_m1(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_01(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 1), rb_define_method_id_01, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_00(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 1), rb_define_method_id_01, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_00(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_02(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 2), rb_define_method_id_02, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_01(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 2), rb_define_method_id_02, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_01(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_03(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 3), rb_define_method_id_03, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_02(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 3), rb_define_method_id_03, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_02(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_04(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 4), rb_define_method_id_04, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_03(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 4), rb_define_method_id_04, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_03(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_05(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 5), rb_define_method_id_05, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_04(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 5), rb_define_method_id_05, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_04(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_06(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 6), rb_define_method_id_06, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_05(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 6), rb_define_method_id_06, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_05(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_07(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 7), rb_define_method_id_07, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_06(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 7), rb_define_method_id_07, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_06(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_08(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 8), rb_define_method_id_08, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_07(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 8), rb_define_method_id_08, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_07(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_09(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 9), rb_define_method_id_09, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_08(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 9), rb_define_method_id_09, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_08(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_10(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 10), rb_define_method_id_10, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_09(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 10), rb_define_method_id_10, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_09(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_11(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 11), rb_define_method_id_11, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_10(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 11), rb_define_method_id_11, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_10(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_12(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 12), rb_define_method_id_12, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_11(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 12), rb_define_method_id_12, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_11(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_13(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 13), rb_define_method_id_13, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_12(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 13), rb_define_method_id_13, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_12(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_14(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 14), rb_define_method_id_14, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_13(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 14), rb_define_method_id_14, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_13(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_15(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 15), rb_define_method_id_15, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_14(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 15), rb_define_method_id_15, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_14(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_m2(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 2), rb_define_method_m2, rb_define_method_m3)) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 2), rb_define_method_m2, rb_define_method_m3);
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_m1(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 1), rb_define_method_m1, RBIMPL_ANYARGS_DISPATCH_rb_define_method_m2(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == -@as(c_int, 1), rb_define_method_m1, RBIMPL_ANYARGS_DISPATCH_rb_define_method_m2(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_00(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 0), rb_define_method_00, RBIMPL_ANYARGS_DISPATCH_rb_define_method_m1(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 0), rb_define_method_00, RBIMPL_ANYARGS_DISPATCH_rb_define_method_m1(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_01(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 1), rb_define_method_01, RBIMPL_ANYARGS_DISPATCH_rb_define_method_00(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 1), rb_define_method_01, RBIMPL_ANYARGS_DISPATCH_rb_define_method_00(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_02(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 2), rb_define_method_02, RBIMPL_ANYARGS_DISPATCH_rb_define_method_01(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 2), rb_define_method_02, RBIMPL_ANYARGS_DISPATCH_rb_define_method_01(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_03(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 3), rb_define_method_03, RBIMPL_ANYARGS_DISPATCH_rb_define_method_02(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 3), rb_define_method_03, RBIMPL_ANYARGS_DISPATCH_rb_define_method_02(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_04(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 4), rb_define_method_04, RBIMPL_ANYARGS_DISPATCH_rb_define_method_03(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 4), rb_define_method_04, RBIMPL_ANYARGS_DISPATCH_rb_define_method_03(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_05(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 5), rb_define_method_05, RBIMPL_ANYARGS_DISPATCH_rb_define_method_04(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 5), rb_define_method_05, RBIMPL_ANYARGS_DISPATCH_rb_define_method_04(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_06(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 6), rb_define_method_06, RBIMPL_ANYARGS_DISPATCH_rb_define_method_05(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 6), rb_define_method_06, RBIMPL_ANYARGS_DISPATCH_rb_define_method_05(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_07(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 7), rb_define_method_07, RBIMPL_ANYARGS_DISPATCH_rb_define_method_06(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 7), rb_define_method_07, RBIMPL_ANYARGS_DISPATCH_rb_define_method_06(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_08(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 8), rb_define_method_08, RBIMPL_ANYARGS_DISPATCH_rb_define_method_07(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 8), rb_define_method_08, RBIMPL_ANYARGS_DISPATCH_rb_define_method_07(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_09(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 9), rb_define_method_09, RBIMPL_ANYARGS_DISPATCH_rb_define_method_08(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 9), rb_define_method_09, RBIMPL_ANYARGS_DISPATCH_rb_define_method_08(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_10(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 10), rb_define_method_10, RBIMPL_ANYARGS_DISPATCH_rb_define_method_09(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 10), rb_define_method_10, RBIMPL_ANYARGS_DISPATCH_rb_define_method_09(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_11(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 11), rb_define_method_11, RBIMPL_ANYARGS_DISPATCH_rb_define_method_10(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 11), rb_define_method_11, RBIMPL_ANYARGS_DISPATCH_rb_define_method_10(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_12(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 12), rb_define_method_12, RBIMPL_ANYARGS_DISPATCH_rb_define_method_11(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 12), rb_define_method_12, RBIMPL_ANYARGS_DISPATCH_rb_define_method_11(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_13(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 13), rb_define_method_13, RBIMPL_ANYARGS_DISPATCH_rb_define_method_12(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 13), rb_define_method_13, RBIMPL_ANYARGS_DISPATCH_rb_define_method_12(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_14(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 14), rb_define_method_14, RBIMPL_ANYARGS_DISPATCH_rb_define_method_13(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 14), rb_define_method_14, RBIMPL_ANYARGS_DISPATCH_rb_define_method_13(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_15(n: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 15), rb_define_method_15, RBIMPL_ANYARGS_DISPATCH_rb_define_method_14(n))) {
    _ = &n;
    return RBIMPL_ANYARGS_DISPATCH(n == @as(c_int, 15), rb_define_method_15, RBIMPL_ANYARGS_DISPATCH_rb_define_method_14(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method(n: anytype, f: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(RBIMPL_CFUNC_IS_rb_f_notimplement(f), rb_define_singleton_method_notimpl, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_15(n))) {
    _ = &n;
    _ = &f;
    return RBIMPL_ANYARGS_DISPATCH(RBIMPL_CFUNC_IS_rb_f_notimplement(f), rb_define_singleton_method_notimpl, RBIMPL_ANYARGS_DISPATCH_rb_define_singleton_method_15(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method(n: anytype, f: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(RBIMPL_CFUNC_IS_rb_f_notimplement(f), rb_define_protected_method_notimpl, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_15(n))) {
    _ = &n;
    _ = &f;
    return RBIMPL_ANYARGS_DISPATCH(RBIMPL_CFUNC_IS_rb_f_notimplement(f), rb_define_protected_method_notimpl, RBIMPL_ANYARGS_DISPATCH_rb_define_protected_method_15(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_private_method(n: anytype, f: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(RBIMPL_CFUNC_IS_rb_f_notimplement(f), rb_define_private_method_notimpl, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_15(n))) {
    _ = &n;
    _ = &f;
    return RBIMPL_ANYARGS_DISPATCH(RBIMPL_CFUNC_IS_rb_f_notimplement(f), rb_define_private_method_notimpl, RBIMPL_ANYARGS_DISPATCH_rb_define_private_method_15(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_module_function(n: anytype, f: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(RBIMPL_CFUNC_IS_rb_f_notimplement(f), rb_define_module_function_notimpl, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_15(n))) {
    _ = &n;
    _ = &f;
    return RBIMPL_ANYARGS_DISPATCH(RBIMPL_CFUNC_IS_rb_f_notimplement(f), rb_define_module_function_notimpl, RBIMPL_ANYARGS_DISPATCH_rb_define_module_function_15(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_global_function(n: anytype, f: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(RBIMPL_CFUNC_IS_rb_f_notimplement(f), rb_define_global_function_notimpl, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_15(n))) {
    _ = &n;
    _ = &f;
    return RBIMPL_ANYARGS_DISPATCH(RBIMPL_CFUNC_IS_rb_f_notimplement(f), rb_define_global_function_notimpl, RBIMPL_ANYARGS_DISPATCH_rb_define_global_function_15(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method_id(n: anytype, f: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(RBIMPL_CFUNC_IS_rb_f_notimplement(f), rb_define_method_id_notimpl, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_15(n))) {
    _ = &n;
    _ = &f;
    return RBIMPL_ANYARGS_DISPATCH(RBIMPL_CFUNC_IS_rb_f_notimplement(f), rb_define_method_id_notimpl, RBIMPL_ANYARGS_DISPATCH_rb_define_method_id_15(n));
}
pub inline fn RBIMPL_ANYARGS_DISPATCH_rb_define_method(n: anytype, f: anytype) @TypeOf(RBIMPL_ANYARGS_DISPATCH(RBIMPL_CFUNC_IS_rb_f_notimplement(f), rb_define_method_notimpl, RBIMPL_ANYARGS_DISPATCH_rb_define_method_15(n))) {
    _ = &n;
    _ = &f;
    return RBIMPL_ANYARGS_DISPATCH(RBIMPL_CFUNC_IS_rb_f_notimplement(f), rb_define_method_notimpl, RBIMPL_ANYARGS_DISPATCH_rb_define_method_15(n));
}
pub const RBIMPL_ANYARGS_ATTRSET = @compileError("unable to translate C expr: unexpected token ')'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/anyargs.h:252:10
pub const RBIMPL_ANYARGS_DECL = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/anyargs.h:253:10
pub const RUBY_METHOD_FUNC = @compileError("unable to translate C expr: expected ')' instead got '('");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/anyargs.h:385:10
pub const RBIMPL_ARITHMETIC_H = "";
pub const RBIMPL_ARITHMETIC_CHAR_H = "";
pub const RBIMPL_ARITHMETIC_INT_H = "";
pub const RBIMPL_ARITHMETIC_FIXNUM_H = "";
pub const FIXABLE = RB_FIXABLE;
pub const FIXNUM_MAX = RUBY_FIXNUM_MAX;
pub const FIXNUM_MIN = RUBY_FIXNUM_MIN;
pub const NEGFIXABLE = RB_NEGFIXABLE;
pub const POSFIXABLE = RB_POSFIXABLE;
pub inline fn RB_POSFIXABLE(__1: anytype) @TypeOf(__1 < (RUBY_FIXNUM_MAX + @as(c_int, 1))) {
    _ = &__1;
    return __1 < (RUBY_FIXNUM_MAX + @as(c_int, 1));
}
pub inline fn RB_NEGFIXABLE(__1: anytype) @TypeOf(__1 >= RUBY_FIXNUM_MIN) {
    _ = &__1;
    return __1 >= RUBY_FIXNUM_MIN;
}
pub inline fn RB_FIXABLE(__1: anytype) @TypeOf((RB_POSFIXABLE(__1) != 0) and (RB_NEGFIXABLE(__1) != 0)) {
    _ = &__1;
    return (RB_POSFIXABLE(__1) != 0) and (RB_NEGFIXABLE(__1) != 0);
}
pub const RUBY_FIXNUM_MAX = @import("std").zig.c_translation.MacroArithmetic.div(LONG_MAX, @as(c_int, 2));
pub const RUBY_FIXNUM_MIN = @import("std").zig.c_translation.MacroArithmetic.div(LONG_MIN, @as(c_int, 2));
pub const RBIMPL_ARITHMETIC_INTPTR_T_H = "";
pub const rb_int_new = rb_int2inum;
pub const rb_uint_new = rb_uint2inum;
pub inline fn PTR2NUM(x: anytype) @TypeOf(LONG2NUM(@import("std").zig.c_translation.cast(c_long, x))) {
    _ = &x;
    return LONG2NUM(@import("std").zig.c_translation.cast(c_long, x));
}
pub inline fn NUM2PTR(x: anytype) ?*anyopaque {
    _ = &x;
    return @import("std").zig.c_translation.cast(?*anyopaque, NUM2ULONG(x));
}
pub const RBIMPL_ARITHMETIC_LONG_H = "";
pub const RBIMPL_ATTR_ARTIFICIAL_H = "";
pub const RBIMPL_ATTR_ARTIFICIAL = @compileError("unable to translate macro: undefined identifier `__artificial__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/artificial.h:41:10
pub const RBIMPL_ATTR_CONSTEXPR_H = "";
pub const RBIMPL_HAS_ATTR_CONSTEXPR_CXX11 = @as(c_int, 0);
pub const RBIMPL_HAS_ATTR_CONSTEXPR_CXX14 = @as(c_int, 0);
pub const RBIMPL_ATTR_CONSTEXPR = @compileError("unable to translate C expr: unexpected token ''");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/constexpr.h:74:10
pub inline fn RBIMPL_ATTR_CONSTEXPR_UNLESS_DEBUG(__1: anytype) @TypeOf(RBIMPL_ATTR_CONSTEXPR(__1)) {
    _ = &__1;
    return RBIMPL_ATTR_CONSTEXPR(__1);
}
pub const RBIMPL_SPECIAL_CONSTS_H = "";
pub const RBIMPL_ATTR_ENUM_EXTENSIBILITY_H = "";
pub const RBIMPL_ATTR_ENUM_EXTENSIBILITY = @compileError("unable to translate macro: undefined identifier `__enum_extensibility__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/enum_extensibility.h:27:10
pub const USE_FLONUM = @as(c_int, 1);
pub const RTEST = RB_TEST;
pub const FIXNUM_P = RB_FIXNUM_P;
pub const IMMEDIATE_P = RB_IMMEDIATE_P;
pub const NIL_P = RB_NIL_P;
pub const SPECIAL_CONST_P = RB_SPECIAL_CONST_P;
pub const STATIC_SYM_P = RB_STATIC_SYM_P;
pub const Qfalse = RUBY_Qfalse;
pub const Qnil = RUBY_Qnil;
pub const Qtrue = RUBY_Qtrue;
pub const Qundef = RUBY_Qundef;
pub const FIXNUM_FLAG = RUBY_FIXNUM_FLAG;
pub const FLONUM_FLAG = RUBY_FLONUM_FLAG;
pub const FLONUM_MASK = RUBY_FLONUM_MASK;
pub const FLONUM_P = RB_FLONUM_P;
pub const IMMEDIATE_MASK = RUBY_IMMEDIATE_MASK;
pub const SYMBOL_FLAG = RUBY_SYMBOL_FLAG;
pub const FIX2LONG = RB_FIX2LONG;
pub const FIX2ULONG = RB_FIX2ULONG;
pub const INT2FIX = RB_INT2FIX;
pub const LONG2FIX = RB_INT2FIX;
pub const LONG2NUM = RB_LONG2NUM;
pub const NUM2LONG = RB_NUM2LONG;
pub const NUM2ULONG = RB_NUM2ULONG;
pub const RB_FIX2LONG = rb_fix2long;
pub const RB_FIX2ULONG = rb_fix2ulong;
pub const RB_LONG2FIX = RB_INT2FIX;
pub const RB_LONG2NUM = rb_long2num_inline;
pub const RB_NUM2LONG = rb_num2long_inline;
pub const RB_NUM2ULONG = rb_num2ulong_inline;
pub const RB_ULONG2NUM = rb_ulong2num_inline;
pub const ULONG2NUM = RB_ULONG2NUM;
pub const rb_fix_new = RB_INT2FIX;
pub const rb_long2int = rb_long2int_inline;
pub const RB_INT2NUM = rb_int2num_inline;
pub const RB_NUM2INT = rb_num2int_inline;
pub const RB_UINT2NUM = rb_uint2num_inline;
pub const FIX2INT = RB_FIX2INT;
pub const FIX2UINT = RB_FIX2UINT;
pub const INT2NUM = RB_INT2NUM;
pub const NUM2INT = RB_NUM2INT;
pub const NUM2UINT = RB_NUM2UINT;
pub const UINT2NUM = RB_UINT2NUM;
pub const RBIMPL_RSTRING_H = "";
pub const RBIMPL_RBASIC_H = "";
pub const RBIMPL_ATTR_NOALIAS_H = "";
pub const RBIMPL_ATTR_NOALIAS = @compileError("unable to translate C expr: unexpected token ''");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/noalias.h:66:10
pub inline fn RBASIC(obj: anytype) @TypeOf(RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]struct_RBasic, obj))) {
    _ = &obj;
    return RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]struct_RBasic, obj));
}
pub const RBIMPL_RVALUE_EMBED_LEN_MAX = @as(c_int, 3);
pub const RBIMPL_EMBED_LEN_MAX_OF = @compileError("unable to translate C expr: expected ')' instead got '['");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rbasic.h:45:9
pub const RBASIC_SHAPE_ID_FIELD = @as(c_int, 0);
pub const RBASIC_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rbasic.h:120:10
pub const RBIMPL_FL_TYPE_H = "";
pub const RBIMPL_ATTR_FLAG_ENUM_H = "";
pub const RBIMPL_ATTR_FLAG_ENUM = @compileError("unable to translate macro: undefined identifier `__flag_enum__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/flag_enum.h:28:10
pub const RBIMPL_VALUE_TYPE_H = "";
pub const RBIMPL_CONSTANT_P_H = "";
pub inline fn RBIMPL_CONSTANT_P(expr: anytype) @TypeOf(__builtin_constant_p(expr)) {
    _ = &expr;
    return __builtin_constant_p(expr);
}
pub const RBIMPL_ERROR_H = "";
pub const ruby_verbose = rb_ruby_verbose_ptr().*;
pub const ruby_debug = rb_ruby_debug_ptr().*;
pub const T_ARRAY = RUBY_T_ARRAY;
pub const T_BIGNUM = RUBY_T_BIGNUM;
pub const T_CLASS = RUBY_T_CLASS;
pub const T_COMPLEX = RUBY_T_COMPLEX;
pub const T_DATA = RUBY_T_DATA;
pub const T_FALSE = RUBY_T_FALSE;
pub const T_FILE = RUBY_T_FILE;
pub const T_FIXNUM = RUBY_T_FIXNUM;
pub const T_FLOAT = RUBY_T_FLOAT;
pub const T_HASH = RUBY_T_HASH;
pub const T_ICLASS = RUBY_T_ICLASS;
pub const T_IMEMO = RUBY_T_IMEMO;
pub const T_MASK = RUBY_T_MASK;
pub const T_MATCH = RUBY_T_MATCH;
pub const T_MODULE = RUBY_T_MODULE;
pub const T_MOVED = RUBY_T_MOVED;
pub const T_NIL = RUBY_T_NIL;
pub const T_NODE = RUBY_T_NODE;
pub const T_NONE = RUBY_T_NONE;
pub const T_OBJECT = RUBY_T_OBJECT;
pub const T_RATIONAL = RUBY_T_RATIONAL;
pub const T_REGEXP = RUBY_T_REGEXP;
pub const T_STRING = RUBY_T_STRING;
pub const T_STRUCT = RUBY_T_STRUCT;
pub const T_SYMBOL = RUBY_T_SYMBOL;
pub const T_TRUE = RUBY_T_TRUE;
pub const T_UNDEF = RUBY_T_UNDEF;
pub const T_ZOMBIE = RUBY_T_ZOMBIE;
pub const BUILTIN_TYPE = RB_BUILTIN_TYPE;
pub const DYNAMIC_SYM_P = RB_DYNAMIC_SYM_P;
pub const RB_INTEGER_TYPE_P = rb_integer_type_p;
pub const SYMBOL_P = RB_SYMBOL_P;
pub const rb_type_p = RB_TYPE_P;
pub inline fn RBIMPL_ASSERT_TYPE(v: anytype, t: anytype) @TypeOf(RBIMPL_ASSERT_OR_ASSUME(RB_TYPE_P(v, t), "actual type: %d", rb_type(v))) {
    _ = &v;
    _ = &t;
    return RBIMPL_ASSERT_OR_ASSUME(RB_TYPE_P(v, t), "actual type: %d", rb_type(v));
}
pub inline fn TYPE(__1: anytype) @TypeOf(RBIMPL_CAST(@import("std").zig.c_translation.cast(c_int, rb_type(__1)))) {
    _ = &__1;
    return RBIMPL_CAST(@import("std").zig.c_translation.cast(c_int, rb_type(__1)));
}
pub const RBIMPL_HAVE_ENUM_ATTRIBUTE = @as(c_int, 1);
pub const RBIMPL_WIDER_ENUM = @as(c_int, 1);
pub const FL_SINGLETON = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_SINGLETON));
pub const FL_WB_PROTECTED = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_WB_PROTECTED));
pub const FL_PROMOTED = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_PROMOTED));
pub const FL_FINALIZE = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_FINALIZE));
pub const FL_TAINT = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_TAINT));
pub const FL_SHAREABLE = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_SHAREABLE));
pub const FL_UNTRUSTED = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_UNTRUSTED));
pub const FL_EXIVAR = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_EXIVAR));
pub const FL_FREEZE = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_FREEZE));
pub const FL_USHIFT = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USHIFT));
pub const FL_USER0 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER0));
pub const FL_USER1 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER1));
pub const FL_USER2 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER2));
pub const FL_USER3 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER3));
pub const FL_USER4 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER4));
pub const FL_USER5 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER5));
pub const FL_USER6 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER6));
pub const FL_USER7 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER7));
pub const FL_USER8 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER8));
pub const FL_USER9 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER9));
pub const FL_USER10 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER10));
pub const FL_USER11 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER11));
pub const FL_USER12 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER12));
pub const FL_USER13 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER13));
pub const FL_USER14 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER14));
pub const FL_USER15 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER15));
pub const FL_USER16 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER16));
pub const FL_USER17 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER17));
pub const FL_USER18 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, RUBY_FL_USER18));
pub const FL_USER19 = RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, @import("std").zig.c_translation.cast(c_uint, RUBY_FL_USER19)));
pub const ELTS_SHARED = RUBY_ELTS_SHARED;
pub const RB_OBJ_FREEZE = rb_obj_freeze_inline;
pub const RB_OBJ_UNTRUST = RB_OBJ_TAINT;
pub const RB_OBJ_UNTRUSTED = RB_OBJ_TAINTED;
pub const FL_ABLE = RB_FL_ABLE;
pub const FL_ALL = RB_FL_ALL;
pub const FL_ALL_RAW = RB_FL_ALL_RAW;
pub const FL_ANY = RB_FL_ANY;
pub const FL_ANY_RAW = RB_FL_ANY_RAW;
pub const FL_REVERSE = RB_FL_REVERSE;
pub const FL_REVERSE_RAW = RB_FL_REVERSE_RAW;
pub const FL_SET = RB_FL_SET;
pub const FL_SET_RAW = RB_FL_SET_RAW;
pub const FL_TEST = RB_FL_TEST;
pub const FL_TEST_RAW = RB_FL_TEST_RAW;
pub const FL_UNSET = RB_FL_UNSET;
pub const FL_UNSET_RAW = RB_FL_UNSET_RAW;
pub const OBJ_FREEZE = RB_OBJ_FREEZE;
pub const OBJ_FREEZE_RAW = RB_OBJ_FREEZE_RAW;
pub const OBJ_FROZEN = RB_OBJ_FROZEN;
pub const OBJ_FROZEN_RAW = RB_OBJ_FROZEN_RAW;
pub const OBJ_INFECT = RB_OBJ_INFECT;
pub const OBJ_INFECT_RAW = RB_OBJ_INFECT_RAW;
pub const OBJ_TAINT = RB_OBJ_TAINT;
pub const OBJ_TAINTABLE = RB_OBJ_TAINTABLE;
pub const OBJ_TAINTED = RB_OBJ_TAINTED;
pub const OBJ_TAINTED_RAW = RB_OBJ_TAINTED_RAW;
pub const OBJ_TAINT_RAW = RB_OBJ_TAINT_RAW;
pub const OBJ_UNTRUST = RB_OBJ_UNTRUST;
pub const OBJ_UNTRUSTED = RB_OBJ_UNTRUSTED;
pub const RBIMPL_FL_USER_N = @compileError("unable to translate macro: undefined identifier `RUBY_FL_USER`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/fl_type.h:323:9
pub inline fn RSTRING(obj: anytype) @TypeOf(RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]struct_RString, obj))) {
    _ = &obj;
    return RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]struct_RString, obj));
}
pub inline fn StringValue(v: anytype) @TypeOf(rb_string_value(&v)) {
    _ = &v;
    return rb_string_value(&v);
}
pub inline fn StringValuePtr(v: anytype) @TypeOf(rb_string_value_ptr(&v)) {
    _ = &v;
    return rb_string_value_ptr(&v);
}
pub inline fn StringValueCStr(v: anytype) @TypeOf(rb_string_value_cstr(&v)) {
    _ = &v;
    return rb_string_value_cstr(&v);
}
pub inline fn SafeStringValue(v: anytype) @TypeOf(StringValue(v)) {
    _ = &v;
    return StringValue(v);
}
pub const ExportStringValue = @compileError("unable to translate C expr: unexpected token 'do'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rstring.h:117:9
pub inline fn Check_SafeStr(v: anytype) @TypeOf(rb_check_safe_str(RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, v)))) {
    _ = &v;
    return rb_check_safe_str(RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, v)));
}
pub const RSTRING_GETMEM = @compileError("unable to translate C expr: expected ')' instead got '='");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rstring.h:450:10
pub const RB_NUM2CHR = rb_num2char_inline;
pub const NUM2CHR = RB_NUM2CHR;
pub const CHR2FIX = RB_CHR2FIX;
pub const RBIMPL_ARITHMETIC_DOUBLE_H = "";
pub const NUM2DBL = rb_num2dbl;
pub const RFLOAT_VALUE = rb_float_value;
pub const DBL2NUM = rb_float_new;
pub const RBIMPL_ARITHMETIC_GID_T_H = "";
pub const RBIMPL_ARITHMETIC_LONG_LONG_H = "";
pub const RB_LL2NUM = rb_ll2num_inline;
pub const RB_ULL2NUM = rb_ull2num_inline;
pub const LL2NUM = RB_LL2NUM;
pub const ULL2NUM = RB_ULL2NUM;
pub const RB_NUM2LL = rb_num2ll_inline;
pub const RB_NUM2ULL = rb_num2ull_inline;
pub const NUM2LL = RB_NUM2LL;
pub const NUM2ULL = RB_NUM2ULL;
pub const RBIMPL_ARITHMETIC_MODE_T_H = "";
pub const RBIMPL_ARITHMETIC_OFF_T_H = "";
pub const RBIMPL_ARITHMETIC_PID_T_H = "";
pub const RBIMPL_ARITHMETIC_SHORT_H = "";
pub const RB_NUM2SHORT = rb_num2short_inline;
pub const RB_NUM2USHORT = rb_num2ushort;
pub const NUM2SHORT = RB_NUM2SHORT;
pub const NUM2USHORT = RB_NUM2USHORT;
pub const USHORT2NUM = RB_INT2FIX;
pub const RB_FIX2SHORT = rb_fix2short;
pub const FIX2SHORT = RB_FIX2SHORT;
pub const RBIMPL_ARITHMETIC_SIZE_T_H = "";
pub const RB_SIZE2NUM = RB_ULL2NUM;
pub const RB_SSIZE2NUM = RB_LL2NUM;
pub const RB_NUM2SIZE = RB_NUM2ULL;
pub const RB_NUM2SSIZE = RB_NUM2LL;
pub const NUM2SIZET = RB_NUM2SIZE;
pub const SIZET2NUM = RB_SIZE2NUM;
pub const NUM2SSIZET = RB_NUM2SSIZE;
pub const SSIZET2NUM = RB_SSIZE2NUM;
pub const RBIMPL_ARITHMERIC_ST_DATA_T_H = "";
pub const RUBY_ST_H = @as(c_int, 1);
pub const ST_DATA_T_DEFINED = "";
pub const MAX_ST_INDEX_VAL = ~@import("std").zig.c_translation.cast(st_index_t, @as(c_int, 0));
pub const SIZEOF_ST_INDEX_T = SIZEOF_VOIDP;
pub const ST_INDEX_BITS = SIZEOF_ST_INDEX_T * CHAR_BIT;
pub const ST_DATA_COMPATIBLE_P = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/st.h:69:10
pub inline fn st_is_member(table: anytype, key: anytype) @TypeOf(st_lookup(table, key, @import("std").zig.c_translation.cast([*c]st_data_t, @as(c_int, 0)))) {
    _ = &table;
    _ = &key;
    return st_lookup(table, key, @import("std").zig.c_translation.cast([*c]st_data_t, @as(c_int, 0)));
}
pub const st_table_size = rb_st_table_size;
pub const st_init_table = rb_st_init_table;
pub const st_init_table_with_size = rb_st_init_table_with_size;
pub const st_init_numtable = rb_st_init_numtable;
pub const st_init_numtable_with_size = rb_st_init_numtable_with_size;
pub const st_init_strtable = rb_st_init_strtable;
pub const st_init_strtable_with_size = rb_st_init_strtable_with_size;
pub const st_init_strcasetable = rb_st_init_strcasetable;
pub const st_init_strcasetable_with_size = rb_st_init_strcasetable_with_size;
pub const st_delete = rb_st_delete;
pub const st_delete_safe = rb_st_delete_safe;
pub const st_shift = rb_st_shift;
pub const st_insert = rb_st_insert;
pub const st_insert2 = rb_st_insert2;
pub const st_lookup = rb_st_lookup;
pub const st_get_key = rb_st_get_key;
pub const st_update = rb_st_update;
pub const st_foreach_with_replace = rb_st_foreach_with_replace;
pub const st_foreach = rb_st_foreach;
pub const st_foreach_check = rb_st_foreach_check;
pub const st_keys = rb_st_keys;
pub const st_keys_check = rb_st_keys_check;
pub const st_values = rb_st_values;
pub const st_values_check = rb_st_values_check;
pub const st_add_direct = rb_st_add_direct;
pub const st_free_table = rb_st_free_table;
pub const st_cleanup_safe = rb_st_cleanup_safe;
pub const st_clear = rb_st_clear;
pub const st_copy = rb_st_copy;
pub const st_numcmp = rb_st_numcmp;
pub const st_numhash = rb_st_numhash;
pub const st_locale_insensitive_strcasecmp = rb_st_locale_insensitive_strcasecmp;
pub const st_locale_insensitive_strncasecmp = rb_st_locale_insensitive_strncasecmp;
pub const st_strcasecmp = rb_st_locale_insensitive_strcasecmp;
pub const st_strncasecmp = rb_st_locale_insensitive_strncasecmp;
pub const st_memsize = rb_st_memsize;
pub const st_hash = rb_st_hash;
pub const st_hash_uint32 = rb_st_hash_uint32;
pub const st_hash_uint = rb_st_hash_uint;
pub const st_hash_end = rb_st_hash_end;
pub inline fn st_hash_start(h: anytype) st_index_t {
    _ = &h;
    return @import("std").zig.c_translation.cast(st_index_t, h);
}
pub const ST2FIX = RB_ST2FIX;
pub const RBIMPL_ARITHMETIC_UID_T_H = "";
pub const RBIMPL_CORE_H = "";
pub const RBIMPL_RARRAY_H = "";
pub const RBIMPL_GC_H = "";
pub inline fn RUBY_REF_EDGE(s: anytype, p: anytype) @TypeOf(offsetof(s, p)) {
    _ = &s;
    _ = &p;
    return offsetof(s, p);
}
pub inline fn RUBY_REFS_LIST_PTR(l: anytype) RUBY_DATA_FUNC {
    _ = &l;
    return @import("std").zig.c_translation.cast(RUBY_DATA_FUNC, @import("std").zig.c_translation.cast(usize, l));
}
pub const RUBY_REF_END = SIZE_MAX;
pub const RUBY_REFERENCES = @compileError("unable to translate C expr: unexpected token 'static'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/gc.h:50:9
pub const RUBY_REFERENCES_START = @compileError("unable to translate C expr: unexpected token '='");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/gc.h:51:9
pub const RUBY_REFERENCES_END = @compileError("unable to translate C expr: unexpected token '}'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/gc.h:52:9
pub const USE_RGENGC = @as(c_int, 1);
pub const USE_RGENGC_LOGGING_WB_UNPROTECT = @as(c_int, 0);
pub const RGENGC_WB_PROTECTED_ARRAY = @as(c_int, 1);
pub const RGENGC_WB_PROTECTED_HASH = @as(c_int, 1);
pub const RGENGC_WB_PROTECTED_STRUCT = @as(c_int, 1);
pub const RGENGC_WB_PROTECTED_STRING = @as(c_int, 1);
pub const RGENGC_WB_PROTECTED_OBJECT = @as(c_int, 1);
pub const RGENGC_WB_PROTECTED_REGEXP = @as(c_int, 1);
pub const RGENGC_WB_PROTECTED_MATCH = @as(c_int, 1);
pub const RGENGC_WB_PROTECTED_CLASS = @as(c_int, 1);
pub const RGENGC_WB_PROTECTED_FLOAT = @as(c_int, 1);
pub const RGENGC_WB_PROTECTED_COMPLEX = @as(c_int, 1);
pub const RGENGC_WB_PROTECTED_RATIONAL = @as(c_int, 1);
pub const RGENGC_WB_PROTECTED_BIGNUM = @as(c_int, 1);
pub const RGENGC_WB_PROTECTED_NODE_CREF = @as(c_int, 1);
pub const RB_OBJ_WRITE = @compileError("unable to translate macro: undefined identifier `__FILE__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/gc.h:603:9
pub const RB_OBJ_WRITTEN = @compileError("unable to translate macro: undefined identifier `__FILE__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/gc.h:615:9
pub const OBJ_PROMOTED_RAW = RB_OBJ_PROMOTED_RAW;
pub const OBJ_PROMOTED = RB_OBJ_PROMOTED;
pub const OBJ_WB_UNPROTECT = RB_OBJ_WB_UNPROTECT;
pub const RB_OBJ_WB_UNPROTECT = @compileError("unable to translate macro: undefined identifier `__FILE__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/gc.h:630:9
pub const RB_OBJ_WB_UNPROTECT_FOR = @compileError("unable to translate macro: undefined identifier `RGENGC_WB_PROTECTED_`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/gc.h:643:9
pub const RGENGC_LOGGING_WB_UNPROTECT = @compileError("unable to translate macro: undefined identifier `rb_gc_unprotect_logging`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/gc.h:652:9
pub inline fn RARRAY(obj: anytype) @TypeOf(RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]struct_RArray, obj))) {
    _ = &obj;
    return RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]struct_RArray, obj));
}
pub const RARRAY_LEN = rb_array_len;
pub const RARRAY_CONST_PTR = rb_array_const_ptr;
pub inline fn FIX_CONST_VALUE_PTR(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub const RBIMPL_RARRAY_STMT = @compileError("unable to translate macro: undefined identifier `rbimpl_ary`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rarray.h:315:9
pub inline fn RARRAY_PTR_USE(ary: anytype, ptr_name: anytype, expr: anytype) @TypeOf(RBIMPL_RARRAY_STMT(ary, ptr_name, expr)) {
    _ = &ary;
    _ = &ptr_name;
    _ = &expr;
    return RBIMPL_RARRAY_STMT(ary, ptr_name, expr);
}
pub inline fn RARRAY_AREF(a: anytype, i: anytype) @TypeOf(RARRAY_CONST_PTR(a)[@as(usize, @intCast(i))]) {
    _ = &a;
    _ = &i;
    return RARRAY_CONST_PTR(a)[@as(usize, @intCast(i))];
}
pub const RBIMPL_RBIGNUM_H = "";
pub const RBIGNUM_SIGN = rb_big_sign;
pub const RBIMPL_RCLASS_H = "";
pub inline fn RCLASS(obj: anytype) @TypeOf(RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]struct_RClass, obj))) {
    _ = &obj;
    return RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]struct_RClass, obj));
}
pub const RMODULE = RCLASS;
pub const RCLASS_SUPER = rb_class_get_superclass;
pub const RBIMPL_RDATA_H = "";
pub const RUBY_UNTYPED_DATA_WARNING = @as(c_int, 1);
pub const RBIMPL_DATA_FUNC = @compileError("unable to translate C expr: expected ')' instead got '('");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rdata.h:44:9
pub inline fn RBIMPL_ATTRSET_UNTYPED_DATA_FUNC() @TypeOf(RBIMPL_ATTR_WARNING("untyped Data is unsafe; use TypedData instead") ++ RBIMPL_ATTR_DEPRECATED("by TypedData")) {
    return RBIMPL_ATTR_WARNING("untyped Data is unsafe; use TypedData instead") ++ RBIMPL_ATTR_DEPRECATED("by TypedData");
}
pub const RBIMPL_MACRO_SELECT = @compileError("unable to translate C expr: unexpected token '##'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rdata.h:49:9
pub inline fn RUBY_MACRO_SELECT(x: anytype, y: anytype) @TypeOf(RBIMPL_MACRO_SELECT(x, y)) {
    _ = &x;
    _ = &y;
    return RBIMPL_MACRO_SELECT(x, y);
}
pub inline fn RDATA(obj: anytype) @TypeOf(RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]struct_RData, obj))) {
    _ = &obj;
    return RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]struct_RData, obj));
}
pub inline fn DATA_PTR(obj: anytype) @TypeOf(RDATA(obj).*.data) {
    _ = &obj;
    return RDATA(obj).*.data;
}
pub const RUBY_DEFAULT_FREE = RBIMPL_DATA_FUNC(-@as(c_int, 1));
pub const RUBY_NEVER_FREE = RBIMPL_DATA_FUNC(@as(c_int, 0));
pub inline fn RUBY_UNTYPED_DATA_FUNC(f: anytype) @TypeOf(f ++ RBIMPL_ATTRSET_UNTYPED_DATA_FUNC()) {
    _ = &f;
    return f ++ RBIMPL_ATTRSET_UNTYPED_DATA_FUNC();
}
pub inline fn Data_Wrap_Struct(klass: anytype, mark: anytype, free_1: anytype, sval: anytype) @TypeOf(rb_data_object_wrap(klass, sval, RBIMPL_DATA_FUNC(mark), RBIMPL_DATA_FUNC(free_1))) {
    _ = &klass;
    _ = &mark;
    _ = &free_1;
    _ = &sval;
    return rb_data_object_wrap(klass, sval, RBIMPL_DATA_FUNC(mark), RBIMPL_DATA_FUNC(free_1));
}
pub const Data_Make_Struct0 = @compileError("unable to translate C expr: unexpected token '='");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rdata.h:222:9
pub const Data_Make_Struct = @compileError("unable to translate macro: undefined identifier `data_struct_obj`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rdata.h:247:9
pub const Data_Get_Struct = @compileError("unable to translate C expr: expected ')' instead got '='");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rdata.h:277:9
pub const rb_data_object_wrap_0 = rb_data_object_wrap;
pub const rb_data_object_wrap_1 = rb_data_object_wrap_warning;
pub const rb_data_object_wrap_2 = @compileError("unable to translate macro: undefined identifier `rb_data_object_wrap_`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rdata.h:365:9
pub const rb_data_object_get_0 = rb_data_object_get;
pub const rb_data_object_get_1 = rb_data_object_get_warning;
pub const rb_data_object_get_2 = @compileError("unable to translate macro: undefined identifier `rb_data_object_get_`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rdata.h:369:9
pub const rb_data_object_make_0 = rb_data_object_make;
pub const rb_data_object_make_1 = @compileError("unable to translate macro: undefined identifier `rb_data_object_make_warning`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rdata.h:372:9
pub const rb_data_object_make_2 = @compileError("unable to translate macro: undefined identifier `rb_data_object_make_`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rdata.h:373:9
pub const RBIMPL_RFILE_H = "";
pub inline fn RFILE(obj: anytype) @TypeOf(RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]struct_RFile, obj))) {
    _ = &obj;
    return RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]struct_RFile, obj));
}
pub const RBIMPL_RHASH_H = "";
pub const RUBY_RUBY_BACKWARD_H = @as(c_int, 1);
pub const RBIMPL_INTERPRETER_H = "";
pub const RUBY_INIT_STACK = @compileError("unable to translate macro: undefined identifier `variable_in_this_stack_frame`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/interpreter.h:131:9
pub const RHASH_TBL = @compileError("unable to translate macro: undefined identifier `__FILE__`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rhash.h:46:9
pub const RHASH_IFNONE = @compileError("unable to translate macro: undefined identifier `rb_hash_ifnone`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rhash.h:59:9
pub inline fn RHASH_SIZE(h: anytype) @TypeOf(rb_hash_size_num(h)) {
    _ = &h;
    return rb_hash_size_num(h);
}
pub inline fn RHASH_EMPTY_P(h: anytype) @TypeOf(RHASH_SIZE(h) == @as(c_int, 0)) {
    _ = &h;
    return RHASH_SIZE(h) == @as(c_int, 0);
}
pub inline fn RHASH_SET_IFNONE(h: anytype, ifnone: anytype) @TypeOf(rb_hash_set_ifnone(@import("std").zig.c_translation.cast(VALUE, h), ifnone)) {
    _ = &h;
    _ = &ifnone;
    return rb_hash_set_ifnone(@import("std").zig.c_translation.cast(VALUE, h), ifnone);
}
pub const RBIMPL_ROBJECT_H = "";
pub inline fn ROBJECT(obj: anytype) @TypeOf(RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]struct_RObject, obj))) {
    _ = &obj;
    return RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]struct_RObject, obj));
}
pub const RBIMPL_RREGEXP_H = "";
pub inline fn RREGEXP(obj: anytype) @TypeOf(RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]struct_RRegexp, obj))) {
    _ = &obj;
    return RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]struct_RRegexp, obj));
}
pub inline fn RREGEXP_PTR(obj: anytype) @TypeOf(RREGEXP(obj).*.ptr) {
    _ = &obj;
    return RREGEXP(obj).*.ptr;
}
pub const RBIMPL_RSTRUCT_H = "";
pub const RSTRUCT_PTR = @compileError("unable to translate macro: undefined identifier `rb_struct_ptr`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rstruct.h:45:9
pub const RBIMPL_RTYPEDDATA_H = "";
pub const HAVE_TYPE_RB_DATA_TYPE_T = @as(c_int, 1);
pub const HAVE_RB_DATA_TYPE_T_FUNCTION = @as(c_int, 1);
pub const HAVE_RB_DATA_TYPE_T_PARENT = @as(c_int, 1);
pub const RUBY_TYPED_DEFAULT_FREE = RUBY_DEFAULT_FREE;
pub const RUBY_TYPED_NEVER_FREE = RUBY_NEVER_FREE;
pub inline fn RTYPEDDATA(obj: anytype) @TypeOf(RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]struct_RTypedData, obj))) {
    _ = &obj;
    return RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]struct_RTypedData, obj));
}
pub inline fn RTYPEDDATA_DATA(v: anytype) @TypeOf(RTYPEDDATA(v).*.data) {
    _ = &v;
    return RTYPEDDATA(v).*.data;
}
pub inline fn Check_TypedStruct(v: anytype, t: anytype) @TypeOf(rb_check_typeddata(RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, v)), t)) {
    _ = &v;
    _ = &t;
    return rb_check_typeddata(RBIMPL_CAST(@import("std").zig.c_translation.cast(VALUE, v)), t);
}
pub const TYPED_DATA_EMBEDDED = @import("std").zig.c_translation.cast(VALUE, @as(c_int, 1));
pub const TYPED_DATA_PTR_MASK = ~TYPED_DATA_EMBEDDED;
pub inline fn TypedData_Wrap_Struct(klass: anytype, data_type: anytype, sval: anytype) @TypeOf(rb_data_typed_object_wrap(klass, sval, data_type)) {
    _ = &klass;
    _ = &data_type;
    _ = &sval;
    return rb_data_typed_object_wrap(klass, sval, data_type);
}
pub const TypedData_Make_Struct0 = @compileError("unable to translate C expr: unexpected token '='");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rtypeddata.h:477:9
pub const TypedData_Make_Struct = @compileError("unable to translate macro: undefined identifier `data_struct_obj`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rtypeddata.h:496:9
pub const TypedData_Get_Struct = @compileError("unable to translate C expr: expected ')' instead got '='");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/core/rtypeddata.h:649:9
pub const RBIMPL_CTYPE_H = "";
pub const _CTYPE_H = @as(c_int, 1);
pub inline fn _ISbit(bit: anytype) @TypeOf(if (bit < @as(c_int, 8)) (@as(c_int, 1) << bit) << @as(c_int, 8) else (@as(c_int, 1) << bit) >> @as(c_int, 8)) {
    _ = &bit;
    return if (bit < @as(c_int, 8)) (@as(c_int, 1) << bit) << @as(c_int, 8) else (@as(c_int, 1) << bit) >> @as(c_int, 8);
}
pub inline fn __isctype(c: anytype, @"type": anytype) @TypeOf(__ctype_b_loc().*[@as(usize, @intCast(@import("std").zig.c_translation.cast(c_int, c)))] & @import("std").zig.c_translation.cast(c_ushort, @"type")) {
    _ = &c;
    _ = &@"type";
    return __ctype_b_loc().*[@as(usize, @intCast(@import("std").zig.c_translation.cast(c_int, c)))] & @import("std").zig.c_translation.cast(c_ushort, @"type");
}
pub inline fn __isascii(c: anytype) @TypeOf((c & ~@as(c_int, 0x7f)) == @as(c_int, 0)) {
    _ = &c;
    return (c & ~@as(c_int, 0x7f)) == @as(c_int, 0);
}
pub inline fn __toascii(c: anytype) @TypeOf(c & @as(c_int, 0x7f)) {
    _ = &c;
    return c & @as(c_int, 0x7f);
}
pub const __exctype = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/ctype.h:102:9
pub const __tobody = @compileError("unable to translate macro: undefined identifier `__res`");
// /usr/include/ctype.h:155:9
pub inline fn __isctype_l(c: anytype, @"type": anytype, locale: anytype) @TypeOf(locale.*.__ctype_b[@as(usize, @intCast(@import("std").zig.c_translation.cast(c_int, c)))] & @import("std").zig.c_translation.cast(c_ushort, @"type")) {
    _ = &c;
    _ = &@"type";
    _ = &locale;
    return locale.*.__ctype_b[@as(usize, @intCast(@import("std").zig.c_translation.cast(c_int, c)))] & @import("std").zig.c_translation.cast(c_ushort, @"type");
}
pub const __exctype_l = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/ctype.h:244:10
pub inline fn __isalnum_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISalnum, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISalnum, l);
}
pub inline fn __isalpha_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISalpha, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISalpha, l);
}
pub inline fn __iscntrl_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _IScntrl, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _IScntrl, l);
}
pub inline fn __isdigit_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISdigit, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISdigit, l);
}
pub inline fn __islower_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISlower, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISlower, l);
}
pub inline fn __isgraph_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISgraph, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISgraph, l);
}
pub inline fn __isprint_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISprint, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISprint, l);
}
pub inline fn __ispunct_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISpunct, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISpunct, l);
}
pub inline fn __isspace_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISspace, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISspace, l);
}
pub inline fn __isupper_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISupper, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISupper, l);
}
pub inline fn __isxdigit_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISxdigit, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISxdigit, l);
}
pub inline fn __isblank_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISblank, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISblank, l);
}
pub inline fn __isascii_l(c: anytype, l: anytype) @TypeOf(__isascii(c)) {
    _ = &c;
    _ = &l;
    return blk_1: {
        _ = &l;
        break :blk_1 __isascii(c);
    };
}
pub inline fn __toascii_l(c: anytype, l: anytype) @TypeOf(__toascii(c)) {
    _ = &c;
    _ = &l;
    return blk_1: {
        _ = &l;
        break :blk_1 __toascii(c);
    };
}
pub inline fn isascii_l(c: anytype, l: anytype) @TypeOf(__isascii_l(c, l)) {
    _ = &c;
    _ = &l;
    return __isascii_l(c, l);
}
pub inline fn toascii_l(c: anytype, l: anytype) @TypeOf(__toascii_l(c, l)) {
    _ = &c;
    _ = &l;
    return __toascii_l(c, l);
}
pub const ISASCII = rb_isascii;
pub const ISPRINT = rb_isprint;
pub const ISGRAPH = rb_isgraph;
pub const ISSPACE = rb_isspace;
pub const ISUPPER = rb_isupper;
pub const ISLOWER = rb_islower;
pub const ISALNUM = rb_isalnum;
pub const ISALPHA = rb_isalpha;
pub const ISDIGIT = rb_isdigit;
pub const ISXDIGIT = rb_isxdigit;
pub const ISBLANK = rb_isblank;
pub const ISCNTRL = rb_iscntrl;
pub const ISPUNCT = rb_ispunct;
pub const TOUPPER = rb_toupper;
pub const TOLOWER = rb_tolower;
pub const STRCASECMP = st_locale_insensitive_strcasecmp;
pub const STRNCASECMP = st_locale_insensitive_strncasecmp;
pub const STRTOUL = ruby_strtoul;
pub const RBIMPL_EVAL_H = "";
pub const rb_funcall2 = rb_funcallv;
pub const rb_funcall3 = rb_funcallv_public;
pub const RBIMPL_EVENT_H = "";
pub const RUBY_EVENT_NONE = @as(c_int, 0x0000);
pub const RUBY_EVENT_LINE = @as(c_int, 0x0001);
pub const RUBY_EVENT_CLASS = @as(c_int, 0x0002);
pub const RUBY_EVENT_END = @as(c_int, 0x0004);
pub const RUBY_EVENT_CALL = @as(c_int, 0x0008);
pub const RUBY_EVENT_RETURN = @as(c_int, 0x0010);
pub const RUBY_EVENT_C_CALL = @as(c_int, 0x0020);
pub const RUBY_EVENT_C_RETURN = @as(c_int, 0x0040);
pub const RUBY_EVENT_RAISE = @as(c_int, 0x0080);
pub const RUBY_EVENT_ALL = @as(c_int, 0x00ff);
pub const RUBY_EVENT_B_CALL = @as(c_int, 0x0100);
pub const RUBY_EVENT_B_RETURN = @as(c_int, 0x0200);
pub const RUBY_EVENT_THREAD_BEGIN = @as(c_int, 0x0400);
pub const RUBY_EVENT_THREAD_END = @as(c_int, 0x0800);
pub const RUBY_EVENT_FIBER_SWITCH = @as(c_int, 0x1000);
pub const RUBY_EVENT_SCRIPT_COMPILED = @as(c_int, 0x2000);
pub const RUBY_EVENT_RESCUE = @as(c_int, 0x4000);
pub const RUBY_EVENT_TRACEPOINT_ALL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hex);
pub const RUBY_EVENT_RESERVED_FOR_INTERNAL_USE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x030000, .hex);
pub const RUBY_INTERNAL_EVENT_SWITCH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000, .hex);
pub const RUBY_EVENT_SWITCH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000, .hex);
pub const RUBY_INTERNAL_EVENT_NEWOBJ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100000, .hex);
pub const RUBY_INTERNAL_EVENT_FREEOBJ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x200000, .hex);
pub const RUBY_INTERNAL_EVENT_GC_START = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x400000, .hex);
pub const RUBY_INTERNAL_EVENT_GC_END_MARK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x800000, .hex);
pub const RUBY_INTERNAL_EVENT_GC_END_SWEEP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000000, .hex);
pub const RUBY_INTERNAL_EVENT_GC_ENTER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x2000000, .hex);
pub const RUBY_INTERNAL_EVENT_GC_EXIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000000, .hex);
pub const RUBY_INTERNAL_EVENT_OBJSPACE_MASK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7f00000, .hex);
pub const RUBY_INTERNAL_EVENT_MASK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff0000, .hex);
pub const RB_EVENT_HOOKS_HAVE_CALLBACK_DATA = @as(c_int, 1);
pub const RBIMPL_GLOB_H = "";
pub const RBIMPL_GLOBALS_H = "";
pub const RUBY_INTEGER_UNIFICATION = @as(c_int, 1);
pub const CLASS_OF = rb_class_of;
pub const RBIMPL_ITERATOR_H = "";
pub const RB_BLOCK_CALL_FUNC_STRICT = @as(c_int, 1);
pub const RUBY_BLOCK_CALL_FUNC_TAKES_BLOCKARG = @as(c_int, 1);
pub const RB_BLOCK_CALL_FUNC_ARGLIST = @compileError("unable to translate macro: undefined identifier `argc`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/iterator.h:58:9
pub const RBIMPL_MEMORY_H = "";
pub const RBIMPL_STDCKDINT_H = "";
pub const RBIMPL_HAVE_STDCKDINT_H = "";
pub const __STDCKDINT_H = "";
pub const __STDC_VERSION_STDCKDINT_H__ = @as(c_long, 202311);
pub const ckd_add = @compileError("unable to translate macro: undefined identifier `__builtin_add_overflow`");
// /home/user/.config/Windsurf/User/globalStorage/ziglang.vscode-zig/zig/x86_64-linux-0.15.2/lib/include/stdckdint.h:37:9
pub const ckd_sub = @compileError("unable to translate macro: undefined identifier `__builtin_sub_overflow`");
// /home/user/.config/Windsurf/User/globalStorage/ziglang.vscode-zig/zig/x86_64-linux-0.15.2/lib/include/stdckdint.h:38:9
pub inline fn ckd_mul(R: anytype, A: anytype, B: anytype) @TypeOf(__builtin_mul_overflow(A, B, R)) {
    _ = &R;
    _ = &A;
    _ = &B;
    return __builtin_mul_overflow(A, B, R);
}
pub const DSIZE_T = uint128_t;
pub const RUBY_ALLOCV_LIMIT = @as(c_int, 1024);
pub const RB_GC_GUARD = @compileError("unable to translate macro: undefined identifier `rb_gc_guarded_ptr`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/memory.h:167:9
pub const RB_ALLOC_N = @compileError("unable to translate C expr: unexpected token ')'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/memory.h:199:9
pub const RB_ALLOC = @compileError("unable to translate C expr: unexpected token ')'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/memory.h:213:9
pub const RB_ZALLOC_N = @compileError("unable to translate C expr: unexpected token ')'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/memory.h:234:9
pub inline fn RB_ZALLOC(@"type": anytype) @TypeOf(RB_ZALLOC_N(@"type", @as(c_int, 1))) {
    _ = &@"type";
    return RB_ZALLOC_N(@"type", @as(c_int, 1));
}
pub const RB_REALLOC_N = @compileError("unable to translate C expr: expected ')' instead got '='");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/memory.h:282:9
pub const ALLOCA_N = @compileError("unable to translate C expr: unexpected token ')'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/memory.h:292:9
pub const RB_ALLOCV = @compileError("unable to translate C expr: expected ')' instead got '='");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/memory.h:304:9
pub const RB_ALLOCV_N = @compileError("unable to translate C expr: unexpected token ')'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/memory.h:336:9
pub inline fn RB_ALLOCV_END(v: anytype) @TypeOf(rb_free_tmp_buffer(&v)) {
    _ = &v;
    return rb_free_tmp_buffer(&v);
}
pub inline fn MEMZERO(p: anytype, @"type": anytype, n: anytype) @TypeOf(memset(p, @as(c_int, 0), rbimpl_size_mul_or_raise(@import("std").zig.c_translation.sizeof(@"type"), n))) {
    _ = &p;
    _ = &@"type";
    _ = &n;
    return memset(p, @as(c_int, 0), rbimpl_size_mul_or_raise(@import("std").zig.c_translation.sizeof(@"type"), n));
}
pub inline fn MEMCPY(p1: anytype, p2: anytype, @"type": anytype, n: anytype) @TypeOf(ruby_nonempty_memcpy(p1, p2, rbimpl_size_mul_or_raise(@import("std").zig.c_translation.sizeof(@"type"), n))) {
    _ = &p1;
    _ = &p2;
    _ = &@"type";
    _ = &n;
    return ruby_nonempty_memcpy(p1, p2, rbimpl_size_mul_or_raise(@import("std").zig.c_translation.sizeof(@"type"), n));
}
pub inline fn MEMMOVE(p1: anytype, p2: anytype, @"type": anytype, n: anytype) @TypeOf(memmove(p1, p2, rbimpl_size_mul_or_raise(@import("std").zig.c_translation.sizeof(@"type"), n))) {
    _ = &p1;
    _ = &p2;
    _ = &@"type";
    _ = &n;
    return memmove(p1, p2, rbimpl_size_mul_or_raise(@import("std").zig.c_translation.sizeof(@"type"), n));
}
pub inline fn MEMCMP(p1: anytype, p2: anytype, @"type": anytype, n: anytype) @TypeOf(memcmp(p1, p2, rbimpl_size_mul_or_raise(@import("std").zig.c_translation.sizeof(@"type"), n))) {
    _ = &p1;
    _ = &p2;
    _ = &@"type";
    _ = &n;
    return memcmp(p1, p2, rbimpl_size_mul_or_raise(@import("std").zig.c_translation.sizeof(@"type"), n));
}
pub const ALLOC_N = RB_ALLOC_N;
pub const ALLOC = RB_ALLOC;
pub const ZALLOC_N = RB_ZALLOC_N;
pub const ZALLOC = RB_ZALLOC;
pub const REALLOC_N = RB_REALLOC_N;
pub const ALLOCV = RB_ALLOCV;
pub const ALLOCV_N = RB_ALLOCV_N;
pub const ALLOCV_END = RB_ALLOCV_END;
pub const RBIMPL_MODULE_H = "";
pub const RBIMPL_NEWOBJ_H = "";
pub const OBJSETUP = rb_obj_setup;
pub const CLONESETUP = rb_clone_setup;
pub const DUPSETUP = rb_dup_setup;
pub const RBIMPL_SCAN_ARGS_H = "";
pub const RBIMPL_ATTR_DIAGNOSE_IF_H = "";
pub const RBIMPL_ATTR_DIAGNOSE_IF = @compileError("unable to translate macro: undefined identifier `Wgcc`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/attr/diagnose_if.h:32:10
pub const RBIMPL_INTERN_ARRAY_H = "";
pub const rb_ary_tmp_new = rb_ary_hidden_new;
pub const rb_ary_new2 = rb_ary_new_capa;
pub const rb_ary_new3 = rb_ary_new_from_args;
pub const rb_ary_new4 = rb_ary_new_from_values;
pub const RBIMPL_INTERN_ERROR_H = "";
pub const UNLIMITED_ARGUMENTS = -@as(c_int, 1);
pub const rb_exc_new2 = rb_exc_new_cstr;
pub const rb_exc_new3 = rb_exc_new_str;
pub const rb_check_frozen_internal = rb_check_frozen;
pub const RBIMPL_INTERN_HASH_H = "";
pub const st_foreach_safe = rb_st_foreach_safe;
pub const RBIMPL_INTERN_PROC_H = "";
pub const RB_SCAN_ARGS_PASS_CALLED_KEYWORDS = @as(c_int, 0);
pub const RB_SCAN_ARGS_KEYWORDS = @as(c_int, 1);
pub const RB_SCAN_ARGS_LAST_HASH_KEYWORDS = @as(c_int, 3);
pub const RB_NO_KEYWORDS = @as(c_int, 0);
pub const RB_PASS_KEYWORDS = @as(c_int, 1);
pub const RB_PASS_CALLED_KEYWORDS = !!(rb_keyword_given_p() != 0);
pub const HAVE_RB_SCAN_ARGS_OPTIONAL_HASH = @as(c_int, 1);
pub inline fn rb_scan_args_isdigit(c: anytype) @TypeOf(RBIMPL_CAST(@import("std").zig.c_translation.cast(u8, c - '0')) < @as(c_int, 10)) {
    _ = &c;
    return RBIMPL_CAST(@import("std").zig.c_translation.cast(u8, c - '0')) < @as(c_int, 10);
}
pub inline fn rb_scan_args_count_end(fmt: anytype, ofs: anytype, vari: anytype) @TypeOf(if (fmt[@as(usize, @intCast(ofs))] != 0) -@as(c_int, 1) else vari) {
    _ = &fmt;
    _ = &ofs;
    _ = &vari;
    return if (fmt[@as(usize, @intCast(ofs))] != 0) -@as(c_int, 1) else vari;
}
pub inline fn rb_scan_args_count_block(fmt: anytype, ofs: anytype, vari: anytype) @TypeOf(if (fmt[@as(usize, @intCast(ofs))] != '&') rb_scan_args_count_end(fmt, ofs, vari) else rb_scan_args_count_end(fmt, ofs + @as(c_int, 1), vari + @as(c_int, 1))) {
    _ = &fmt;
    _ = &ofs;
    _ = &vari;
    return if (fmt[@as(usize, @intCast(ofs))] != '&') rb_scan_args_count_end(fmt, ofs, vari) else rb_scan_args_count_end(fmt, ofs + @as(c_int, 1), vari + @as(c_int, 1));
}
pub inline fn rb_scan_args_count_hash(fmt: anytype, ofs: anytype, vari: anytype) @TypeOf(if (fmt[@as(usize, @intCast(ofs))] != ':') rb_scan_args_count_block(fmt, ofs, vari) else rb_scan_args_count_block(fmt, ofs + @as(c_int, 1), vari + @as(c_int, 1))) {
    _ = &fmt;
    _ = &ofs;
    _ = &vari;
    return if (fmt[@as(usize, @intCast(ofs))] != ':') rb_scan_args_count_block(fmt, ofs, vari) else rb_scan_args_count_block(fmt, ofs + @as(c_int, 1), vari + @as(c_int, 1));
}
pub inline fn rb_scan_args_count_trail(fmt: anytype, ofs: anytype, vari: anytype) @TypeOf(if (!(rb_scan_args_isdigit(fmt[@as(usize, @intCast(ofs))]) != 0)) rb_scan_args_count_hash(fmt, ofs, vari) else rb_scan_args_count_hash(fmt, ofs + @as(c_int, 1), vari + (fmt[@as(usize, @intCast(ofs))] - '0'))) {
    _ = &fmt;
    _ = &ofs;
    _ = &vari;
    return if (!(rb_scan_args_isdigit(fmt[@as(usize, @intCast(ofs))]) != 0)) rb_scan_args_count_hash(fmt, ofs, vari) else rb_scan_args_count_hash(fmt, ofs + @as(c_int, 1), vari + (fmt[@as(usize, @intCast(ofs))] - '0'));
}
pub inline fn rb_scan_args_count_var(fmt: anytype, ofs: anytype, vari: anytype) @TypeOf(if (fmt[@as(usize, @intCast(ofs))] != '*') rb_scan_args_count_trail(fmt, ofs, vari) else rb_scan_args_count_trail(fmt, ofs + @as(c_int, 1), vari + @as(c_int, 1))) {
    _ = &fmt;
    _ = &ofs;
    _ = &vari;
    return if (fmt[@as(usize, @intCast(ofs))] != '*') rb_scan_args_count_trail(fmt, ofs, vari) else rb_scan_args_count_trail(fmt, ofs + @as(c_int, 1), vari + @as(c_int, 1));
}
pub inline fn rb_scan_args_count_opt(fmt: anytype, ofs: anytype, vari: anytype) @TypeOf(if (!(rb_scan_args_isdigit(fmt[@as(usize, @intCast(ofs))]) != 0)) rb_scan_args_count_var(fmt, ofs, vari) else rb_scan_args_count_var(fmt, ofs + @as(c_int, 1), (vari + fmt[@as(usize, @intCast(ofs))]) - '0')) {
    _ = &fmt;
    _ = &ofs;
    _ = &vari;
    return if (!(rb_scan_args_isdigit(fmt[@as(usize, @intCast(ofs))]) != 0)) rb_scan_args_count_var(fmt, ofs, vari) else rb_scan_args_count_var(fmt, ofs + @as(c_int, 1), (vari + fmt[@as(usize, @intCast(ofs))]) - '0');
}
pub inline fn rb_scan_args_count_lead(fmt: anytype, ofs: anytype, vari: anytype) @TypeOf(if (!(rb_scan_args_isdigit(fmt[@as(usize, @intCast(ofs))]) != 0)) rb_scan_args_count_var(fmt, ofs, vari) else rb_scan_args_count_opt(fmt, ofs + @as(c_int, 1), (vari + fmt[@as(usize, @intCast(ofs))]) - '0')) {
    _ = &fmt;
    _ = &ofs;
    _ = &vari;
    return if (!(rb_scan_args_isdigit(fmt[@as(usize, @intCast(ofs))]) != 0)) rb_scan_args_count_var(fmt, ofs, vari) else rb_scan_args_count_opt(fmt, ofs + @as(c_int, 1), (vari + fmt[@as(usize, @intCast(ofs))]) - '0');
}
pub inline fn rb_scan_args_count(fmt: anytype) @TypeOf(rb_scan_args_count_lead(fmt, @as(c_int, 0), @as(c_int, 0))) {
    _ = &fmt;
    return rb_scan_args_count_lead(fmt, @as(c_int, 0), @as(c_int, 0));
}
pub inline fn rb_scan_args_verify(fmt: anytype, varc: anytype) @TypeOf(RBIMPL_ASSERT_NOTHING) {
    _ = &fmt;
    _ = &varc;
    return RBIMPL_ASSERT_NOTHING;
}
pub inline fn rb_scan_args0(argc: anytype, argv: anytype, fmt: anytype, varc: anytype, vars: anytype) @TypeOf(rb_scan_args_set(RB_SCAN_ARGS_PASS_CALLED_KEYWORDS, argc, argv, rb_scan_args_n_lead(fmt), rb_scan_args_n_opt(fmt), rb_scan_args_n_trail(fmt), rb_scan_args_f_var(fmt), rb_scan_args_f_hash(fmt), rb_scan_args_f_block(fmt), blk_1: {
    _ = rb_scan_args_verify(fmt, varc);
    break :blk_1 vars;
}, @import("std").zig.c_translation.cast([*c]u8, fmt), varc)) {
    _ = &argc;
    _ = &argv;
    _ = &fmt;
    _ = &varc;
    _ = &vars;
    return rb_scan_args_set(RB_SCAN_ARGS_PASS_CALLED_KEYWORDS, argc, argv, rb_scan_args_n_lead(fmt), rb_scan_args_n_opt(fmt), rb_scan_args_n_trail(fmt), rb_scan_args_f_var(fmt), rb_scan_args_f_hash(fmt), rb_scan_args_f_block(fmt), blk_1: {
        _ = rb_scan_args_verify(fmt, varc);
        break :blk_1 vars;
    }, @import("std").zig.c_translation.cast([*c]u8, fmt), varc);
}
pub inline fn rb_scan_args_kw0(kw_flag: anytype, argc: anytype, argv: anytype, fmt: anytype, varc: anytype, vars: anytype) @TypeOf(rb_scan_args_set(kw_flag, argc, argv, rb_scan_args_n_lead(fmt), rb_scan_args_n_opt(fmt), rb_scan_args_n_trail(fmt), rb_scan_args_f_var(fmt), rb_scan_args_f_hash(fmt), rb_scan_args_f_block(fmt), blk_1: {
    _ = rb_scan_args_verify(fmt, varc);
    break :blk_1 vars;
}, @import("std").zig.c_translation.cast([*c]u8, fmt), varc)) {
    _ = &kw_flag;
    _ = &argc;
    _ = &argv;
    _ = &fmt;
    _ = &varc;
    _ = &vars;
    return rb_scan_args_set(kw_flag, argc, argv, rb_scan_args_n_lead(fmt), rb_scan_args_n_opt(fmt), rb_scan_args_n_trail(fmt), rb_scan_args_f_var(fmt), rb_scan_args_f_hash(fmt), rb_scan_args_f_block(fmt), blk_1: {
        _ = rb_scan_args_verify(fmt, varc);
        break :blk_1 vars;
    }, @import("std").zig.c_translation.cast([*c]u8, fmt), varc);
}
pub const rb_scan_args_next_param = @compileError("unable to translate macro: undefined identifier `vars`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/scan_args.h:397:9
pub const RBIMPL_SYMBOL_H = "";
pub const RB_ID2SYM = rb_id2sym;
pub const RB_SYM2ID = rb_sym2id;
pub const ID2SYM = RB_ID2SYM;
pub const SYM2ID = RB_SYM2ID;
pub const CONST_ID_CACHE = RUBY_CONST_ID_CACHE;
pub const CONST_ID = RUBY_CONST_ID;
pub const RUBY_CONST_ID_CACHE = @compileError("unable to translate macro: undefined identifier `rb_intern_id_cache`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/symbol.h:312:9
pub const RUBY_CONST_ID = @compileError("unable to translate macro: undefined identifier `rbimpl_id`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/symbol.h:324:9
pub const RBIMPL_VARIABLE_H = "";
pub const RUBY_BACKWARD2_INTTYPES_H = "";
pub const PRI_INT_PREFIX = "";
pub const PRI_LONG_PREFIX = "l";
pub const PRI_SHORT_PREFIX = "h";
pub const PRI_64_PREFIX = PRI_LONG_PREFIX;
pub const RUBY_PRI_VALUE_MARK = "\x0B";
pub const PRIdVALUE = PRI_VALUE_PREFIX ++ "d";
pub const PRIoVALUE = PRI_VALUE_PREFIX ++ "o";
pub const PRIuVALUE = PRI_VALUE_PREFIX ++ "u";
pub const PRIxVALUE = PRI_VALUE_PREFIX ++ "x";
pub const PRIXVALUE = PRI_VALUE_PREFIX ++ "X";
pub const PRIsVALUE = PRI_VALUE_PREFIX ++ "i" ++ RUBY_PRI_VALUE_MARK;
pub const PRIdPTRDIFF = PRI_PTRDIFF_PREFIX ++ "d";
pub const PRIiPTRDIFF = PRI_PTRDIFF_PREFIX ++ "i";
pub const PRIoPTRDIFF = PRI_PTRDIFF_PREFIX ++ "o";
pub const PRIuPTRDIFF = PRI_PTRDIFF_PREFIX ++ "u";
pub const PRIxPTRDIFF = PRI_PTRDIFF_PREFIX ++ "x";
pub const PRIXPTRDIFF = PRI_PTRDIFF_PREFIX ++ "X";
pub const PRIdSIZE = PRI_SIZE_PREFIX ++ "d";
pub const PRIiSIZE = PRI_SIZE_PREFIX ++ "i";
pub const PRIoSIZE = PRI_SIZE_PREFIX ++ "o";
pub const PRIuSIZE = PRI_SIZE_PREFIX ++ "u";
pub const PRIxSIZE = PRI_SIZE_PREFIX ++ "x";
pub const PRIXSIZE = PRI_SIZE_PREFIX ++ "X";
pub const USE_SYMBOL_AS_METHOD_NAME = @as(c_int, 1);
pub const FilePathValue = @compileError("unable to translate C expr: expected ')' instead got '='");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/ruby.h:90:9
pub const FilePathStringValue = @compileError("unable to translate C expr: expected ')' instead got '='");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/ruby.h:105:9
pub inline fn rb_varargs_argc_check_runtime(argc: anytype, vargc: anytype) @TypeOf(if (argc <= vargc) argc else blk_2: {
    _ = rb_fatal("argc(%d) exceeds actual arguments(%d)", argc, vargc);
    break :blk_2 @as(c_int, 0);
}) {
    _ = &argc;
    _ = &vargc;
    return if (argc <= vargc) argc else blk_2: {
        _ = rb_fatal("argc(%d) exceeds actual arguments(%d)", argc, vargc);
        break :blk_2 @as(c_int, 0);
    };
}
pub inline fn rb_varargs_argc_valid_p(argc: anytype, vargc: anytype) @TypeOf(if (argc == @as(c_int, 0)) vargc <= @as(c_int, 1) else argc == vargc) {
    _ = &argc;
    _ = &vargc;
    return if (argc == @as(c_int, 0)) vargc <= @as(c_int, 1) else argc == vargc;
}
pub const rb_varargs_argc_check = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/ruby.h:123:12
pub const RUBY_INTERN_H = @as(c_int, 1);
pub const RBIMPL_INTERN_BIGNUM_H = "";
pub inline fn rb_big2int(x: anytype) @TypeOf(rb_big2long(x)) {
    _ = &x;
    return rb_big2long(x);
}
pub inline fn rb_big2uint(x: anytype) @TypeOf(rb_big2ulong(x)) {
    _ = &x;
    return rb_big2ulong(x);
}
pub const INTEGER_PACK_MSWORD_FIRST = @as(c_int, 0x01);
pub const INTEGER_PACK_LSWORD_FIRST = @as(c_int, 0x02);
pub const INTEGER_PACK_MSBYTE_FIRST = @as(c_int, 0x10);
pub const INTEGER_PACK_LSBYTE_FIRST = @as(c_int, 0x20);
pub const INTEGER_PACK_NATIVE_BYTE_ORDER = @as(c_int, 0x40);
pub const INTEGER_PACK_2COMP = @as(c_int, 0x80);
pub const INTEGER_PACK_FORCE_GENERIC_IMPLEMENTATION = @as(c_int, 0x400);
pub const INTEGER_PACK_FORCE_BIGNUM = @as(c_int, 0x100);
pub const INTEGER_PACK_NEGATIVE = @as(c_int, 0x200);
pub const INTEGER_PACK_LITTLE_ENDIAN = INTEGER_PACK_LSWORD_FIRST | INTEGER_PACK_LSBYTE_FIRST;
pub const INTEGER_PACK_BIG_ENDIAN = INTEGER_PACK_MSWORD_FIRST | INTEGER_PACK_MSBYTE_FIRST;
pub const RBIMPL_INTERN_COMPAR_H = "";
pub const RBIMPL_INTERN_COMPLEX_H = "";
pub inline fn rb_complex_raw1(x: anytype) @TypeOf(rb_complex_raw(x, INT2FIX(@as(c_int, 0)))) {
    _ = &x;
    return rb_complex_raw(x, INT2FIX(@as(c_int, 0)));
}
pub inline fn rb_complex_raw2(x: anytype, y: anytype) @TypeOf(rb_complex_raw(x, y)) {
    _ = &x;
    _ = &y;
    return rb_complex_raw(x, y);
}
pub inline fn rb_complex_new1(x: anytype) @TypeOf(rb_complex_new(x, INT2FIX(@as(c_int, 0)))) {
    _ = &x;
    return rb_complex_new(x, INT2FIX(@as(c_int, 0)));
}
pub inline fn rb_complex_new2(x: anytype, y: anytype) @TypeOf(rb_complex_new(x, y)) {
    _ = &x;
    _ = &y;
    return rb_complex_new(x, y);
}
pub const rb_complex_add = rb_complex_plus;
pub const rb_complex_sub = rb_complex_minus;
pub const rb_complex_nagate = rb_complex_uminus;
pub inline fn rb_Complex1(x: anytype) @TypeOf(rb_Complex(x, INT2FIX(@as(c_int, 0)))) {
    _ = &x;
    return rb_Complex(x, INT2FIX(@as(c_int, 0)));
}
pub inline fn rb_Complex2(x: anytype, y: anytype) @TypeOf(rb_Complex(x, y)) {
    _ = &x;
    _ = &y;
    return rb_Complex(x, y);
}
pub const RBIMPL_INTERN_CONT_H = "";
pub const RBIMPL_INTERN_DIR_H = "";
pub const RBIMPL_INTERN_ENUM_H = "";
pub const RBIMPL_INTERN_ENUMERATOR_H = "";
pub const RBIMPL_INTERN_EVAL_H = "";
pub inline fn SIZED_ENUMERATOR(obj: anytype, argc: anytype, argv: anytype, size_fn: anytype) @TypeOf(rb_enumeratorize_with_size(obj, ID2SYM(rb_frame_this_func()), argc, argv, size_fn)) {
    _ = &obj;
    _ = &argc;
    _ = &argv;
    _ = &size_fn;
    return rb_enumeratorize_with_size(obj, ID2SYM(rb_frame_this_func()), argc, argv, size_fn);
}
pub inline fn SIZED_ENUMERATOR_KW(obj: anytype, argc: anytype, argv: anytype, size_fn: anytype, kw_splat: anytype) @TypeOf(rb_enumeratorize_with_size_kw(obj, ID2SYM(rb_frame_this_func()), argc, argv, size_fn, kw_splat)) {
    _ = &obj;
    _ = &argc;
    _ = &argv;
    _ = &size_fn;
    _ = &kw_splat;
    return rb_enumeratorize_with_size_kw(obj, ID2SYM(rb_frame_this_func()), argc, argv, size_fn, kw_splat);
}
pub const RETURN_SIZED_ENUMERATOR = @compileError("unable to translate C expr: unexpected token 'do'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/intern/enumerator.h:208:9
pub const RETURN_SIZED_ENUMERATOR_KW = @compileError("unable to translate C expr: unexpected token 'do'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/intern/enumerator.h:229:9
pub inline fn RETURN_ENUMERATOR(obj: anytype, argc: anytype, argv: anytype) @TypeOf(RETURN_SIZED_ENUMERATOR(obj, argc, argv, @as(c_int, 0))) {
    _ = &obj;
    _ = &argc;
    _ = &argv;
    return RETURN_SIZED_ENUMERATOR(obj, argc, argv, @as(c_int, 0));
}
pub inline fn RETURN_ENUMERATOR_KW(obj: anytype, argc: anytype, argv: anytype, kw_splat: anytype) @TypeOf(RETURN_SIZED_ENUMERATOR_KW(obj, argc, argv, @as(c_int, 0), kw_splat)) {
    _ = &obj;
    _ = &argc;
    _ = &argv;
    _ = &kw_splat;
    return RETURN_SIZED_ENUMERATOR_KW(obj, argc, argv, @as(c_int, 0), kw_splat);
}
pub const RBIMPL_INTERN_FILE_H = "";
pub const RBIMPL_INTERN_IO_H = "";
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/intern/io.h:37:9: warning: macro 'rb_defout' contains a runtime value, translated to function
pub inline fn rb_defout() @TypeOf(rb_stdout) {
    return rb_stdout;
}
pub inline fn RB_RESERVED_FD_P(fd: anytype) @TypeOf(rb_reserved_fd_p(fd)) {
    _ = &fd;
    return rb_reserved_fd_p(fd);
}
pub const RBIMPL_INTERN_LOAD_H = "";
pub const HAVE_RB_EXT_RESOLVE_SYMBOL = @as(c_int, 1);
pub inline fn RB_EXT_RACTOR_SAFE(f: anytype) @TypeOf(rb_ext_ractor_safe(f)) {
    _ = &f;
    return rb_ext_ractor_safe(f);
}
pub const HAVE_RB_EXT_RACTOR_SAFE = @as(c_int, 1);
pub const RBIMPL_INTERN_MARSHAL_H = "";
pub const RBIMPL_INTERN_NUMERIC_H = "";
pub const RB_NUM_COERCE_FUNCS_NEED_OPID = @as(c_int, 1);
pub const RBIMPL_INTERN_OBJECT_H = "";
pub inline fn RB_OBJ_INIT_COPY(obj: anytype, orig: anytype) @TypeOf((obj != orig) and ((blk_2: {
    _ = rb_obj_init_copy(obj, orig);
    break :blk_2 @as(c_int, 1);
}) != 0)) {
    _ = &obj;
    _ = &orig;
    return (obj != orig) and ((blk_2: {
        _ = rb_obj_init_copy(obj, orig);
        break :blk_2 @as(c_int, 1);
    }) != 0);
}
pub inline fn OBJ_INIT_COPY(obj: anytype, orig: anytype) @TypeOf(RB_OBJ_INIT_COPY(obj, orig)) {
    _ = &obj;
    _ = &orig;
    return RB_OBJ_INIT_COPY(obj, orig);
}
pub const RBIMPL_INTERN_PARSE_H = "";
pub const RBIMPL_INTERN_PROCESS_H = "";
pub const RBIMPL_INTERN_RANDOM_H = "";
pub const RBIMPL_INTERN_RANGE_H = "";
pub const RBIMPL_INTERN_RATIONAL_H = "";
pub inline fn rb_rational_raw1(x: anytype) @TypeOf(rb_rational_raw(x, INT2FIX(@as(c_int, 1)))) {
    _ = &x;
    return rb_rational_raw(x, INT2FIX(@as(c_int, 1)));
}
pub inline fn rb_rational_raw2(x: anytype, y: anytype) @TypeOf(rb_rational_raw(x, y)) {
    _ = &x;
    _ = &y;
    return rb_rational_raw(x, y);
}
pub inline fn rb_rational_new1(x: anytype) @TypeOf(rb_rational_new(x, INT2FIX(@as(c_int, 1)))) {
    _ = &x;
    return rb_rational_new(x, INT2FIX(@as(c_int, 1)));
}
pub inline fn rb_rational_new2(x: anytype, y: anytype) @TypeOf(rb_rational_new(x, y)) {
    _ = &x;
    _ = &y;
    return rb_rational_new(x, y);
}
pub inline fn rb_Rational1(x: anytype) @TypeOf(rb_Rational(x, INT2FIX(@as(c_int, 1)))) {
    _ = &x;
    return rb_Rational(x, INT2FIX(@as(c_int, 1)));
}
pub inline fn rb_Rational2(x: anytype, y: anytype) @TypeOf(rb_Rational(x, y)) {
    _ = &x;
    _ = &y;
    return rb_Rational(x, y);
}
pub const RBIMPL_INTERN_RE_H = "";
pub const rb_memcmp = memcmp;
pub const HAVE_RB_REG_NEW_STR = @as(c_int, 1);
pub const RBIMPL_INTERN_RUBY_H = "";
pub const rb_argv = rb_get_argv();
pub const RBIMPL_INTERN_SELECT_H = "";
pub const RBIMPL_INTERN_SELECT_LARGESIZE_H = "";
pub const RBIMPL_INTERN_SET_H = "";
pub const RBIMPL_INTERN_SIGNAL_H = "";
pub const RBIMPL_INTERN_SPRINTF_H = "";
pub const RBIMPL_INTERN_STRING_H = "";
pub inline fn rb_hash_uint32(h: anytype, i: anytype) @TypeOf(st_hash_uint32(h, i)) {
    _ = &h;
    _ = &i;
    return st_hash_uint32(h, i);
}
pub inline fn rb_hash_uint(h: anytype, i: anytype) @TypeOf(st_hash_uint(h, i)) {
    _ = &h;
    _ = &i;
    return st_hash_uint(h, i);
}
pub inline fn rb_hash_end(h: anytype) @TypeOf(st_hash_end(h)) {
    _ = &h;
    return st_hash_end(h);
}
pub const rb_str_new2 = rb_str_new_cstr;
pub const rb_str_new3 = rb_str_new_shared;
pub const rb_str_new4 = rb_str_new_frozen;
pub const rb_str_new5 = rb_str_new_with_class;
pub const rb_str_buf_new2 = rb_str_buf_new_cstr;
pub const rb_usascii_str_new2 = rb_usascii_str_new_cstr;
pub const rb_strlen_lit = @compileError("unable to translate C expr: expected ')' instead got 'a string literal'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/internal/intern/string.h:1691:9
pub inline fn rb_str_new_lit(str: anytype) @TypeOf(rb_str_new_static(str, rb_strlen_lit(str))) {
    _ = &str;
    return rb_str_new_static(str, rb_strlen_lit(str));
}
pub inline fn rb_usascii_str_new_lit(str: anytype) @TypeOf(rb_usascii_str_new_static(str, rb_strlen_lit(str))) {
    _ = &str;
    return rb_usascii_str_new_static(str, rb_strlen_lit(str));
}
pub inline fn rb_utf8_str_new_lit(str: anytype) @TypeOf(rb_utf8_str_new_static(str, rb_strlen_lit(str))) {
    _ = &str;
    return rb_utf8_str_new_static(str, rb_strlen_lit(str));
}
pub inline fn rb_enc_str_new_lit(str: anytype, enc: anytype) @TypeOf(rb_enc_str_new_static(str, rb_strlen_lit(str), enc)) {
    _ = &str;
    _ = &enc;
    return rb_enc_str_new_static(str, rb_strlen_lit(str), enc);
}
pub inline fn rb_str_new_literal(str: anytype) @TypeOf(rb_str_new_lit(str)) {
    _ = &str;
    return rb_str_new_lit(str);
}
pub inline fn rb_usascii_str_new_literal(str: anytype) @TypeOf(rb_usascii_str_new_lit(str)) {
    _ = &str;
    return rb_usascii_str_new_lit(str);
}
pub inline fn rb_utf8_str_new_literal(str: anytype) @TypeOf(rb_utf8_str_new_lit(str)) {
    _ = &str;
    return rb_utf8_str_new_lit(str);
}
pub inline fn rb_enc_str_new_literal(str: anytype, enc: anytype) @TypeOf(rb_enc_str_new_lit(str, enc)) {
    _ = &str;
    _ = &enc;
    return rb_enc_str_new_lit(str, enc);
}
pub const RBIMPL_INTERN_STRUCT_H = "";
pub const RBIMPL_INTERN_THREAD_H = "";
pub const RUBY_UBF_IO = RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]rb_unblock_function_t, -@as(c_int, 1)));
pub const RUBY_UBF_PROCESS = RBIMPL_CAST(@import("std").zig.c_translation.cast([*c]rb_unblock_function_t, -@as(c_int, 1)));
pub const RBIMPL_INTERN_TIME_H = "";
pub const RBIMPL_INTERN_VARIABLE_H = "";
pub const RUBY_VM = @as(c_int, 1);
pub const HAVE_NATIVETHREAD = "";
pub const InitVM = @compileError("unable to translate macro: undefined identifier `InitVM_`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/ruby.h:231:9
pub const _ERRNO_H = @as(c_int, 1);
pub const _BITS_ERRNO_H = @as(c_int, 1);
pub const _ASM_GENERIC_ERRNO_H = "";
pub const _ASM_GENERIC_ERRNO_BASE_H = "";
pub const EPERM = @as(c_int, 1);
pub const ENOENT = @as(c_int, 2);
pub const ESRCH = @as(c_int, 3);
pub const EINTR = @as(c_int, 4);
pub const EIO = @as(c_int, 5);
pub const ENXIO = @as(c_int, 6);
pub const E2BIG = @as(c_int, 7);
pub const ENOEXEC = @as(c_int, 8);
pub const EBADF = @as(c_int, 9);
pub const ECHILD = @as(c_int, 10);
pub const EAGAIN = @as(c_int, 11);
pub const ENOMEM = @as(c_int, 12);
pub const EACCES = @as(c_int, 13);
pub const EFAULT = @as(c_int, 14);
pub const ENOTBLK = @as(c_int, 15);
pub const EBUSY = @as(c_int, 16);
pub const EEXIST = @as(c_int, 17);
pub const EXDEV = @as(c_int, 18);
pub const ENODEV = @as(c_int, 19);
pub const ENOTDIR = @as(c_int, 20);
pub const EISDIR = @as(c_int, 21);
pub const EINVAL = @as(c_int, 22);
pub const ENFILE = @as(c_int, 23);
pub const EMFILE = @as(c_int, 24);
pub const ENOTTY = @as(c_int, 25);
pub const ETXTBSY = @as(c_int, 26);
pub const EFBIG = @as(c_int, 27);
pub const ENOSPC = @as(c_int, 28);
pub const ESPIPE = @as(c_int, 29);
pub const EROFS = @as(c_int, 30);
pub const EMLINK = @as(c_int, 31);
pub const EPIPE = @as(c_int, 32);
pub const EDOM = @as(c_int, 33);
pub const ERANGE = @as(c_int, 34);
pub const EDEADLK = @as(c_int, 35);
pub const ENAMETOOLONG = @as(c_int, 36);
pub const ENOLCK = @as(c_int, 37);
pub const ENOSYS = @as(c_int, 38);
pub const ENOTEMPTY = @as(c_int, 39);
pub const ELOOP = @as(c_int, 40);
pub const EWOULDBLOCK = EAGAIN;
pub const ENOMSG = @as(c_int, 42);
pub const EIDRM = @as(c_int, 43);
pub const ECHRNG = @as(c_int, 44);
pub const EL2NSYNC = @as(c_int, 45);
pub const EL3HLT = @as(c_int, 46);
pub const EL3RST = @as(c_int, 47);
pub const ELNRNG = @as(c_int, 48);
pub const EUNATCH = @as(c_int, 49);
pub const ENOCSI = @as(c_int, 50);
pub const EL2HLT = @as(c_int, 51);
pub const EBADE = @as(c_int, 52);
pub const EBADR = @as(c_int, 53);
pub const EXFULL = @as(c_int, 54);
pub const ENOANO = @as(c_int, 55);
pub const EBADRQC = @as(c_int, 56);
pub const EBADSLT = @as(c_int, 57);
pub const EDEADLOCK = EDEADLK;
pub const EBFONT = @as(c_int, 59);
pub const ENOSTR = @as(c_int, 60);
pub const ENODATA = @as(c_int, 61);
pub const ETIME = @as(c_int, 62);
pub const ENOSR = @as(c_int, 63);
pub const ENONET = @as(c_int, 64);
pub const ENOPKG = @as(c_int, 65);
pub const EREMOTE = @as(c_int, 66);
pub const ENOLINK = @as(c_int, 67);
pub const EADV = @as(c_int, 68);
pub const ESRMNT = @as(c_int, 69);
pub const ECOMM = @as(c_int, 70);
pub const EPROTO = @as(c_int, 71);
pub const EMULTIHOP = @as(c_int, 72);
pub const EDOTDOT = @as(c_int, 73);
pub const EBADMSG = @as(c_int, 74);
pub const EOVERFLOW = @as(c_int, 75);
pub const ENOTUNIQ = @as(c_int, 76);
pub const EBADFD = @as(c_int, 77);
pub const EREMCHG = @as(c_int, 78);
pub const ELIBACC = @as(c_int, 79);
pub const ELIBBAD = @as(c_int, 80);
pub const ELIBSCN = @as(c_int, 81);
pub const ELIBMAX = @as(c_int, 82);
pub const ELIBEXEC = @as(c_int, 83);
pub const EILSEQ = @as(c_int, 84);
pub const ERESTART = @as(c_int, 85);
pub const ESTRPIPE = @as(c_int, 86);
pub const EUSERS = @as(c_int, 87);
pub const ENOTSOCK = @as(c_int, 88);
pub const EDESTADDRREQ = @as(c_int, 89);
pub const EMSGSIZE = @as(c_int, 90);
pub const EPROTOTYPE = @as(c_int, 91);
pub const ENOPROTOOPT = @as(c_int, 92);
pub const EPROTONOSUPPORT = @as(c_int, 93);
pub const ESOCKTNOSUPPORT = @as(c_int, 94);
pub const EOPNOTSUPP = @as(c_int, 95);
pub const EPFNOSUPPORT = @as(c_int, 96);
pub const EAFNOSUPPORT = @as(c_int, 97);
pub const EADDRINUSE = @as(c_int, 98);
pub const EADDRNOTAVAIL = @as(c_int, 99);
pub const ENETDOWN = @as(c_int, 100);
pub const ENETUNREACH = @as(c_int, 101);
pub const ENETRESET = @as(c_int, 102);
pub const ECONNABORTED = @as(c_int, 103);
pub const ECONNRESET = @as(c_int, 104);
pub const ENOBUFS = @as(c_int, 105);
pub const EISCONN = @as(c_int, 106);
pub const ENOTCONN = @as(c_int, 107);
pub const ESHUTDOWN = @as(c_int, 108);
pub const ETOOMANYREFS = @as(c_int, 109);
pub const ETIMEDOUT = @as(c_int, 110);
pub const ECONNREFUSED = @as(c_int, 111);
pub const EHOSTDOWN = @as(c_int, 112);
pub const EHOSTUNREACH = @as(c_int, 113);
pub const EALREADY = @as(c_int, 114);
pub const EINPROGRESS = @as(c_int, 115);
pub const ESTALE = @as(c_int, 116);
pub const EUCLEAN = @as(c_int, 117);
pub const ENOTNAM = @as(c_int, 118);
pub const ENAVAIL = @as(c_int, 119);
pub const EISNAM = @as(c_int, 120);
pub const EREMOTEIO = @as(c_int, 121);
pub const EDQUOT = @as(c_int, 122);
pub const ENOMEDIUM = @as(c_int, 123);
pub const EMEDIUMTYPE = @as(c_int, 124);
pub const ECANCELED = @as(c_int, 125);
pub const ENOKEY = @as(c_int, 126);
pub const EKEYEXPIRED = @as(c_int, 127);
pub const EKEYREVOKED = @as(c_int, 128);
pub const EKEYREJECTED = @as(c_int, 129);
pub const EOWNERDEAD = @as(c_int, 130);
pub const ENOTRECOVERABLE = @as(c_int, 131);
pub const ERFKILL = @as(c_int, 132);
pub const EHWPOISON = @as(c_int, 133);
pub const ENOTSUP = EOPNOTSUPP;
pub const errno = __errno_location().*;
pub const __error_t_defined = @as(c_int, 1);
pub const rb_orig_errno = errno;
pub const RUBY_SUBST_H = @as(c_int, 1);
pub const RUBY__ASAN_DEFAULT_OPTIONS = "";
pub const RUBY_GLOBAL_SETUP = "";
pub inline fn ruby_start_main(main: anytype, argc: anytype, argv: anytype) @TypeOf(main(argc, argv)) {
    _ = &main;
    _ = &argc;
    _ = &argv;
    return main(argc, argv);
}
pub const RUBY_ENCODING_H = @as(c_int, 1);
pub const RUBY_INTERNAL_ENCODING_CODERANGE_H = "";
pub const ENC_CODERANGE_MASK = RUBY_ENC_CODERANGE_MASK;
pub const ENC_CODERANGE_UNKNOWN = RUBY_ENC_CODERANGE_UNKNOWN;
pub const ENC_CODERANGE_7BIT = RUBY_ENC_CODERANGE_7BIT;
pub const ENC_CODERANGE_VALID = RUBY_ENC_CODERANGE_VALID;
pub const ENC_CODERANGE_BROKEN = RUBY_ENC_CODERANGE_BROKEN;
pub inline fn ENC_CODERANGE_CLEAN_P(cr: anytype) @TypeOf(RB_ENC_CODERANGE_CLEAN_P(cr)) {
    _ = &cr;
    return RB_ENC_CODERANGE_CLEAN_P(cr);
}
pub inline fn ENC_CODERANGE(obj: anytype) @TypeOf(RB_ENC_CODERANGE(obj)) {
    _ = &obj;
    return RB_ENC_CODERANGE(obj);
}
pub inline fn ENC_CODERANGE_ASCIIONLY(obj: anytype) @TypeOf(RB_ENC_CODERANGE_ASCIIONLY(obj)) {
    _ = &obj;
    return RB_ENC_CODERANGE_ASCIIONLY(obj);
}
pub inline fn ENC_CODERANGE_SET(obj: anytype, cr: anytype) @TypeOf(RB_ENC_CODERANGE_SET(obj, cr)) {
    _ = &obj;
    _ = &cr;
    return RB_ENC_CODERANGE_SET(obj, cr);
}
pub inline fn ENC_CODERANGE_CLEAR(obj: anytype) @TypeOf(RB_ENC_CODERANGE_CLEAR(obj)) {
    _ = &obj;
    return RB_ENC_CODERANGE_CLEAR(obj);
}
pub inline fn ENC_CODERANGE_AND(a: anytype, b: anytype) @TypeOf(RB_ENC_CODERANGE_AND(a, b)) {
    _ = &a;
    _ = &b;
    return RB_ENC_CODERANGE_AND(a, b);
}
pub inline fn ENCODING_CODERANGE_SET(obj: anytype, encindex: anytype, cr: anytype) @TypeOf(RB_ENCODING_CODERANGE_SET(obj, encindex, cr)) {
    _ = &obj;
    _ = &encindex;
    _ = &cr;
    return RB_ENCODING_CODERANGE_SET(obj, encindex, cr);
}
pub const RUBY_INTERNAL_ENCODING_CTYPE_H = "";
pub const ONIGMO_H = "";
pub const ONIGMO_VERSION_MAJOR = @as(c_int, 6);
pub const ONIGMO_VERSION_MINOR = @as(c_int, 1);
pub const ONIGMO_VERSION_TEENY = @as(c_int, 3);
pub const ONIG_EXTERN = RUBY_EXTERN;
pub const UChar = OnigUChar;
pub const ONIG_INFINITE_DISTANCE = ~@import("std").zig.c_translation.cast(OnigDistance, @as(c_int, 0));
pub const OnigCodePointMaskWidth = @as(c_int, 3);
pub const OnigCodePointMask = (@as(c_int, 1) << OnigCodePointMaskWidth) - @as(c_int, 1);
pub inline fn OnigCodePointCount(n: anytype) @TypeOf(n & OnigCodePointMask) {
    _ = &n;
    return n & OnigCodePointMask;
}
pub inline fn OnigCaseFoldFlags(n: anytype) @TypeOf(n & ~OnigCodePointMask) {
    _ = &n;
    return n & ~OnigCodePointMask;
}
pub const OnigSpecialIndexShift = @as(c_int, 3);
pub const OnigSpecialIndexWidth = @as(c_int, 10);
pub const ONIGENC_CASE_UPCASE = @as(c_int, 1) << @as(c_int, 13);
pub const ONIGENC_CASE_DOWNCASE = @as(c_int, 1) << @as(c_int, 14);
pub const ONIGENC_CASE_TITLECASE = @as(c_int, 1) << @as(c_int, 15);
pub const ONIGENC_CASE_SPECIAL_OFFSET = @as(c_int, 3);
pub const ONIGENC_CASE_UP_SPECIAL = @as(c_int, 1) << @as(c_int, 16);
pub const ONIGENC_CASE_DOWN_SPECIAL = @as(c_int, 1) << @as(c_int, 17);
pub const ONIGENC_CASE_MODIFIED = @as(c_int, 1) << @as(c_int, 18);
pub const ONIGENC_CASE_FOLD = @as(c_int, 1) << @as(c_int, 19);
pub const ONIGENC_CASE_FOLD_TURKISH_AZERI = @as(c_int, 1) << @as(c_int, 20);
pub const ONIGENC_CASE_FOLD_LITHUANIAN = @as(c_int, 1) << @as(c_int, 21);
pub const ONIGENC_CASE_ASCII_ONLY = @as(c_int, 1) << @as(c_int, 22);
pub const ONIGENC_CASE_IS_TITLECASE = @as(c_int, 1) << @as(c_int, 23);
pub const INTERNAL_ONIGENC_CASE_FOLD_MULTI_CHAR = @as(c_int, 1) << @as(c_int, 30);
pub const ONIGENC_CASE_FOLD_MIN = INTERNAL_ONIGENC_CASE_FOLD_MULTI_CHAR;
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/onigmo.h:131:9: warning: macro 'ONIGENC_CASE_FOLD_DEFAULT' contains a runtime value, translated to function
pub inline fn ONIGENC_CASE_FOLD_DEFAULT() @TypeOf(OnigDefaultCaseFoldFlag) {
    return OnigDefaultCaseFoldFlag;
}
pub const ONIGENC_MAX_COMP_CASE_FOLD_CODE_LEN = @as(c_int, 3);
pub const ONIGENC_GET_CASE_FOLD_CODES_MAX_NUM = @as(c_int, 13);
pub inline fn ONIGENC_CODE_RANGE_NUM(range: anytype) c_int {
    _ = &range;
    return @import("std").zig.c_translation.cast(c_int, range[@as(usize, @intCast(@as(c_int, 0)))]);
}
pub inline fn ONIGENC_CODE_RANGE_FROM(range: anytype, i: anytype) @TypeOf(range[@as(usize, @intCast((i * @as(c_int, 2)) + @as(c_int, 1)))]) {
    _ = &range;
    _ = &i;
    return range[@as(usize, @intCast((i * @as(c_int, 2)) + @as(c_int, 1)))];
}
pub inline fn ONIGENC_CODE_RANGE_TO(range: anytype, i: anytype) @TypeOf(range[@as(usize, @intCast((i * @as(c_int, 2)) + @as(c_int, 2)))]) {
    _ = &range;
    _ = &i;
    return range[@as(usize, @intCast((i * @as(c_int, 2)) + @as(c_int, 2)))];
}
pub const ONIG_ENCODING_ASCII = &OnigEncodingASCII;
pub const ONIG_ENCODING_UNDEF = @import("std").zig.c_translation.cast(OnigEncoding, @as(c_int, 0));
pub const ONIGENC_CODE_TO_MBC_MAXLEN = @as(c_int, 7);
pub const ONIGENC_MBC_CASE_FOLD_MAXLEN = @as(c_int, 18);
pub const ONIGENC_CTYPE_NEWLINE = @as(c_int, 0);
pub const ONIGENC_CTYPE_ALPHA = @as(c_int, 1);
pub const ONIGENC_CTYPE_BLANK = @as(c_int, 2);
pub const ONIGENC_CTYPE_CNTRL = @as(c_int, 3);
pub const ONIGENC_CTYPE_DIGIT = @as(c_int, 4);
pub const ONIGENC_CTYPE_GRAPH = @as(c_int, 5);
pub const ONIGENC_CTYPE_LOWER = @as(c_int, 6);
pub const ONIGENC_CTYPE_PRINT = @as(c_int, 7);
pub const ONIGENC_CTYPE_PUNCT = @as(c_int, 8);
pub const ONIGENC_CTYPE_SPACE = @as(c_int, 9);
pub const ONIGENC_CTYPE_UPPER = @as(c_int, 10);
pub const ONIGENC_CTYPE_XDIGIT = @as(c_int, 11);
pub const ONIGENC_CTYPE_WORD = @as(c_int, 12);
pub const ONIGENC_CTYPE_ALNUM = @as(c_int, 13);
pub const ONIGENC_CTYPE_ASCII = @as(c_int, 14);
pub const ONIGENC_MAX_STD_CTYPE = ONIGENC_CTYPE_ASCII;
pub const ONIGENC_FLAG_NONE = @as(c_uint, 0);
pub const ONIGENC_FLAG_UNICODE = @as(c_uint, 1);
pub inline fn onig_enc_len(enc: anytype, p: anytype, e: anytype) @TypeOf(ONIGENC_MBC_ENC_LEN(enc, p, e)) {
    _ = &enc;
    _ = &p;
    _ = &e;
    return ONIGENC_MBC_ENC_LEN(enc, p, e);
}
pub inline fn ONIGENC_IS_UNDEF(enc: anytype) @TypeOf(enc == ONIG_ENCODING_UNDEF) {
    _ = &enc;
    return enc == ONIG_ENCODING_UNDEF;
}
pub inline fn ONIGENC_IS_SINGLEBYTE(enc: anytype) @TypeOf(ONIGENC_MBC_MAXLEN(enc) == @as(c_int, 1)) {
    _ = &enc;
    return ONIGENC_MBC_MAXLEN(enc) == @as(c_int, 1);
}
pub inline fn ONIGENC_IS_MBC_HEAD(enc: anytype, p: anytype, e: anytype) @TypeOf(ONIGENC_MBC_ENC_LEN(enc, p, e) != @as(c_int, 1)) {
    _ = &enc;
    _ = &p;
    _ = &e;
    return ONIGENC_MBC_ENC_LEN(enc, p, e) != @as(c_int, 1);
}
pub inline fn ONIGENC_IS_MBC_ASCII(p: anytype) @TypeOf(p.* < @as(c_int, 128)) {
    _ = &p;
    return p.* < @as(c_int, 128);
}
pub inline fn ONIGENC_IS_CODE_ASCII(code: anytype) @TypeOf(code < @as(c_int, 128)) {
    _ = &code;
    return code < @as(c_int, 128);
}
pub inline fn ONIGENC_IS_MBC_WORD(enc: anytype, s: anytype, end: anytype) @TypeOf(ONIGENC_IS_CODE_WORD(enc, ONIGENC_MBC_TO_CODE(enc, s, end))) {
    _ = &enc;
    _ = &s;
    _ = &end;
    return ONIGENC_IS_CODE_WORD(enc, ONIGENC_MBC_TO_CODE(enc, s, end));
}
pub const ONIGENC_IS_MBC_ASCII_WORD = @compileError("unable to translate macro: undefined identifier `onigenc_ascii_is_code_ctype`");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/onigmo.h:324:9
pub inline fn ONIGENC_IS_UNICODE(enc: anytype) @TypeOf(enc.*.flags & ONIGENC_FLAG_UNICODE) {
    _ = &enc;
    return enc.*.flags & ONIGENC_FLAG_UNICODE;
}
pub inline fn ONIGENC_NAME(enc: anytype) @TypeOf(enc.*.name) {
    _ = &enc;
    return enc.*.name;
}
pub const ONIGENC_MBC_CASE_FOLD = @compileError("unable to translate C expr: unexpected token 'const'");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/onigmo.h:332:9
pub inline fn ONIGENC_IS_ALLOWED_REVERSE_MATCH(enc: anytype, s: anytype, end: anytype) @TypeOf(enc.*.is_allowed_reverse_match(s, end, enc)) {
    _ = &enc;
    _ = &s;
    _ = &end;
    return enc.*.is_allowed_reverse_match(s, end, enc);
}
pub inline fn ONIGENC_LEFT_ADJUST_CHAR_HEAD(enc: anytype, start: anytype, s: anytype, end: anytype) @TypeOf(enc.*.left_adjust_char_head(start, s, end, enc)) {
    _ = &enc;
    _ = &start;
    _ = &s;
    _ = &end;
    return enc.*.left_adjust_char_head(start, s, end, enc);
}
pub inline fn ONIGENC_APPLY_ALL_CASE_FOLD(enc: anytype, case_fold_flag: anytype, f: anytype, arg: anytype) @TypeOf(enc.*.apply_all_case_fold(case_fold_flag, f, arg, enc)) {
    _ = &enc;
    _ = &case_fold_flag;
    _ = &f;
    _ = &arg;
    return enc.*.apply_all_case_fold(case_fold_flag, f, arg, enc);
}
pub inline fn ONIGENC_GET_CASE_FOLD_CODES_BY_STR(enc: anytype, case_fold_flag: anytype, p: anytype, end: anytype, acs: anytype) @TypeOf(enc.*.get_case_fold_codes_by_str(case_fold_flag, p, end, acs, enc)) {
    _ = &enc;
    _ = &case_fold_flag;
    _ = &p;
    _ = &end;
    _ = &acs;
    return enc.*.get_case_fold_codes_by_str(case_fold_flag, p, end, acs, enc);
}
pub inline fn ONIGENC_STEP_BACK(enc: anytype, start: anytype, s: anytype, end: anytype, n: anytype) @TypeOf(onigenc_step_back(enc, start, s, end, n)) {
    _ = &enc;
    _ = &start;
    _ = &s;
    _ = &end;
    _ = &n;
    return onigenc_step_back(enc, start, s, end, n);
}
pub inline fn ONIGENC_CONSTRUCT_MBCLEN_CHARFOUND(n: anytype) @TypeOf(n) {
    _ = &n;
    return n;
}
pub inline fn ONIGENC_MBCLEN_CHARFOUND_P(r: anytype) @TypeOf(@as(c_int, 0) < r) {
    _ = &r;
    return @as(c_int, 0) < r;
}
pub inline fn ONIGENC_MBCLEN_CHARFOUND_LEN(r: anytype) @TypeOf(r) {
    _ = &r;
    return r;
}
pub inline fn ONIGENC_CONSTRUCT_MBCLEN_INVALID() @TypeOf(-@as(c_int, 1)) {
    return -@as(c_int, 1);
}
pub inline fn ONIGENC_MBCLEN_INVALID_P(r: anytype) @TypeOf(r == -@as(c_int, 1)) {
    _ = &r;
    return r == -@as(c_int, 1);
}
pub inline fn ONIGENC_CONSTRUCT_MBCLEN_NEEDMORE(n: anytype) @TypeOf(-@as(c_int, 1) - n) {
    _ = &n;
    return -@as(c_int, 1) - n;
}
pub inline fn ONIGENC_MBCLEN_NEEDMORE_P(r: anytype) @TypeOf(r < -@as(c_int, 1)) {
    _ = &r;
    return r < -@as(c_int, 1);
}
pub inline fn ONIGENC_MBCLEN_NEEDMORE_LEN(r: anytype) @TypeOf(-@as(c_int, 1) - r) {
    _ = &r;
    return -@as(c_int, 1) - r;
}
pub inline fn ONIGENC_PRECISE_MBC_ENC_LEN(enc: anytype, p: anytype, e: anytype) @TypeOf(enc.*.precise_mbc_enc_len(p, e, enc)) {
    _ = &enc;
    _ = &p;
    _ = &e;
    return enc.*.precise_mbc_enc_len(p, e, enc);
}
pub inline fn ONIGENC_MBC_ENC_LEN(enc: anytype, p: anytype, e: anytype) @TypeOf(onigenc_mbclen(p, e, enc)) {
    _ = &enc;
    _ = &p;
    _ = &e;
    return onigenc_mbclen(p, e, enc);
}
pub inline fn ONIGENC_MBC_MAXLEN(enc: anytype) @TypeOf(enc.*.max_enc_len) {
    _ = &enc;
    return enc.*.max_enc_len;
}
pub inline fn ONIGENC_MBC_MAXLEN_DIST(enc: anytype) @TypeOf(ONIGENC_MBC_MAXLEN(enc)) {
    _ = &enc;
    return ONIGENC_MBC_MAXLEN(enc);
}
pub inline fn ONIGENC_MBC_MINLEN(enc: anytype) @TypeOf(enc.*.min_enc_len) {
    _ = &enc;
    return enc.*.min_enc_len;
}
pub inline fn ONIGENC_IS_MBC_NEWLINE(enc: anytype, p: anytype, end: anytype) @TypeOf(enc.*.is_mbc_newline(p, end, enc)) {
    _ = &enc;
    _ = &p;
    _ = &end;
    return enc.*.is_mbc_newline(p, end, enc);
}
pub inline fn ONIGENC_MBC_TO_CODE(enc: anytype, p: anytype, end: anytype) @TypeOf(enc.*.mbc_to_code(p, end, enc)) {
    _ = &enc;
    _ = &p;
    _ = &end;
    return enc.*.mbc_to_code(p, end, enc);
}
pub inline fn ONIGENC_CODE_TO_MBCLEN(enc: anytype, code: anytype) @TypeOf(enc.*.code_to_mbclen(code, enc)) {
    _ = &enc;
    _ = &code;
    return enc.*.code_to_mbclen(code, enc);
}
pub inline fn ONIGENC_CODE_TO_MBC(enc: anytype, code: anytype, buf: anytype) @TypeOf(enc.*.code_to_mbc(code, buf, enc)) {
    _ = &enc;
    _ = &code;
    _ = &buf;
    return enc.*.code_to_mbc(code, buf, enc);
}
pub inline fn ONIGENC_PROPERTY_NAME_TO_CTYPE(enc: anytype, p: anytype, end: anytype) @TypeOf(enc.*.property_name_to_ctype(enc, p, end)) {
    _ = &enc;
    _ = &p;
    _ = &end;
    return enc.*.property_name_to_ctype(enc, p, end);
}
pub inline fn ONIGENC_IS_CODE_CTYPE(enc: anytype, code: anytype, ctype: anytype) @TypeOf(enc.*.is_code_ctype(code, ctype, enc)) {
    _ = &enc;
    _ = &code;
    _ = &ctype;
    return enc.*.is_code_ctype(code, ctype, enc);
}
pub inline fn ONIGENC_IS_CODE_NEWLINE(enc: anytype, code: anytype) @TypeOf(ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_NEWLINE)) {
    _ = &enc;
    _ = &code;
    return ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_NEWLINE);
}
pub inline fn ONIGENC_IS_CODE_GRAPH(enc: anytype, code: anytype) @TypeOf(ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_GRAPH)) {
    _ = &enc;
    _ = &code;
    return ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_GRAPH);
}
pub inline fn ONIGENC_IS_CODE_PRINT(enc: anytype, code: anytype) @TypeOf(ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_PRINT)) {
    _ = &enc;
    _ = &code;
    return ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_PRINT);
}
pub inline fn ONIGENC_IS_CODE_ALNUM(enc: anytype, code: anytype) @TypeOf(ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_ALNUM)) {
    _ = &enc;
    _ = &code;
    return ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_ALNUM);
}
pub inline fn ONIGENC_IS_CODE_ALPHA(enc: anytype, code: anytype) @TypeOf(ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_ALPHA)) {
    _ = &enc;
    _ = &code;
    return ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_ALPHA);
}
pub inline fn ONIGENC_IS_CODE_LOWER(enc: anytype, code: anytype) @TypeOf(ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_LOWER)) {
    _ = &enc;
    _ = &code;
    return ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_LOWER);
}
pub inline fn ONIGENC_IS_CODE_UPPER(enc: anytype, code: anytype) @TypeOf(ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_UPPER)) {
    _ = &enc;
    _ = &code;
    return ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_UPPER);
}
pub inline fn ONIGENC_IS_CODE_CNTRL(enc: anytype, code: anytype) @TypeOf(ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_CNTRL)) {
    _ = &enc;
    _ = &code;
    return ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_CNTRL);
}
pub inline fn ONIGENC_IS_CODE_PUNCT(enc: anytype, code: anytype) @TypeOf(ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_PUNCT)) {
    _ = &enc;
    _ = &code;
    return ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_PUNCT);
}
pub inline fn ONIGENC_IS_CODE_SPACE(enc: anytype, code: anytype) @TypeOf(ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_SPACE)) {
    _ = &enc;
    _ = &code;
    return ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_SPACE);
}
pub inline fn ONIGENC_IS_CODE_BLANK(enc: anytype, code: anytype) @TypeOf(ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_BLANK)) {
    _ = &enc;
    _ = &code;
    return ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_BLANK);
}
pub inline fn ONIGENC_IS_CODE_DIGIT(enc: anytype, code: anytype) @TypeOf(ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_DIGIT)) {
    _ = &enc;
    _ = &code;
    return ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_DIGIT);
}
pub inline fn ONIGENC_IS_CODE_XDIGIT(enc: anytype, code: anytype) @TypeOf(ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_XDIGIT)) {
    _ = &enc;
    _ = &code;
    return ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_XDIGIT);
}
pub inline fn ONIGENC_IS_CODE_WORD(enc: anytype, code: anytype) @TypeOf(ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_WORD)) {
    _ = &enc;
    _ = &code;
    return ONIGENC_IS_CODE_CTYPE(enc, code, ONIGENC_CTYPE_WORD);
}
pub inline fn ONIGENC_GET_CTYPE_CODE_RANGE(enc: anytype, ctype: anytype, sbout: anytype, ranges: anytype) @TypeOf(enc.*.get_ctype_code_range(ctype, sbout, ranges, enc)) {
    _ = &enc;
    _ = &ctype;
    _ = &sbout;
    _ = &ranges;
    return enc.*.get_ctype_code_range(ctype, sbout, ranges, enc);
}
pub const ONIG_NREGION = @as(c_int, 4);
pub const ONIG_MAX_CAPTURE_GROUP_NUM = @as(c_int, 32767);
pub const ONIG_MAX_BACKREF_NUM = @as(c_int, 1000);
pub const ONIG_MAX_REPEAT_NUM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const ONIG_MAX_MULTI_BYTE_RANGES_NUM = @as(c_int, 10000);
pub const ONIG_MAX_ERROR_MESSAGE_LEN = @as(c_int, 90);
pub const ONIG_OPTION_DEFAULT = ONIG_OPTION_NONE;
pub const ONIG_OPTION_NONE = @as(c_uint, 0);
pub const ONIG_OPTION_IGNORECASE = @as(c_uint, 1);
pub const ONIG_OPTION_EXTEND = ONIG_OPTION_IGNORECASE << @as(c_int, 1);
pub const ONIG_OPTION_MULTILINE = ONIG_OPTION_EXTEND << @as(c_int, 1);
pub const ONIG_OPTION_DOTALL = ONIG_OPTION_MULTILINE;
pub const ONIG_OPTION_SINGLELINE = ONIG_OPTION_MULTILINE << @as(c_int, 1);
pub const ONIG_OPTION_FIND_LONGEST = ONIG_OPTION_SINGLELINE << @as(c_int, 1);
pub const ONIG_OPTION_FIND_NOT_EMPTY = ONIG_OPTION_FIND_LONGEST << @as(c_int, 1);
pub const ONIG_OPTION_NEGATE_SINGLELINE = ONIG_OPTION_FIND_NOT_EMPTY << @as(c_int, 1);
pub const ONIG_OPTION_DONT_CAPTURE_GROUP = ONIG_OPTION_NEGATE_SINGLELINE << @as(c_int, 1);
pub const ONIG_OPTION_CAPTURE_GROUP = ONIG_OPTION_DONT_CAPTURE_GROUP << @as(c_int, 1);
pub const ONIG_OPTION_NOTBOL = ONIG_OPTION_CAPTURE_GROUP << @as(c_int, 1);
pub const ONIG_OPTION_NOTEOL = ONIG_OPTION_NOTBOL << @as(c_int, 1);
pub const ONIG_OPTION_NOTBOS = ONIG_OPTION_NOTEOL << @as(c_int, 1);
pub const ONIG_OPTION_NOTEOS = ONIG_OPTION_NOTBOS << @as(c_int, 1);
pub const ONIG_OPTION_ASCII_RANGE = ONIG_OPTION_NOTEOS << @as(c_int, 1);
pub const ONIG_OPTION_POSIX_BRACKET_ALL_RANGE = ONIG_OPTION_ASCII_RANGE << @as(c_int, 1);
pub const ONIG_OPTION_WORD_BOUND_ALL_RANGE = ONIG_OPTION_POSIX_BRACKET_ALL_RANGE << @as(c_int, 1);
pub const ONIG_OPTION_NEWLINE_CRLF = ONIG_OPTION_WORD_BOUND_ALL_RANGE << @as(c_int, 1);
pub const ONIG_OPTION_MAXBIT = ONIG_OPTION_NEWLINE_CRLF;
pub const ONIG_OPTION_ON = @compileError("unable to translate C expr: expected ')' instead got '|='");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/onigmo.h:474:9
pub const ONIG_OPTION_OFF = @compileError("unable to translate C expr: expected ')' instead got '&='");
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/onigmo.h:475:9
pub inline fn ONIG_IS_OPTION_ON(options: anytype, option: anytype) @TypeOf(options & option) {
    _ = &options;
    _ = &option;
    return options & option;
}
pub const ONIG_SYNTAX_ASIS = &OnigSyntaxASIS;
pub const ONIG_SYNTAX_POSIX_BASIC = &OnigSyntaxPosixBasic;
pub const ONIG_SYNTAX_POSIX_EXTENDED = &OnigSyntaxPosixExtended;
pub const ONIG_SYNTAX_EMACS = &OnigSyntaxEmacs;
pub const ONIG_SYNTAX_GREP = &OnigSyntaxGrep;
pub const ONIG_SYNTAX_GNU_REGEX = &OnigSyntaxGnuRegex;
pub const ONIG_SYNTAX_JAVA = &OnigSyntaxJava;
pub const ONIG_SYNTAX_PERL58 = &OnigSyntaxPerl58;
pub const ONIG_SYNTAX_PERL58_NG = &OnigSyntaxPerl58_NG;
pub const ONIG_SYNTAX_PERL = &OnigSyntaxPerl;
pub const ONIG_SYNTAX_RUBY = &OnigSyntaxRuby;
pub const ONIG_SYNTAX_PYTHON = &OnigSyntaxPython;
// /home/user/.rbenv/versions/4.0.1/include/ruby-4.0.0/ruby/onigmo.h:516:9: warning: macro 'ONIG_SYNTAX_DEFAULT' contains a runtime value, translated to function
pub inline fn ONIG_SYNTAX_DEFAULT() @TypeOf(OnigDefaultSyntax) {
    return OnigDefaultSyntax;
}
pub const ONIG_SYN_OP_VARIABLE_META_CHARACTERS = @as(c_uint, 1) << @as(c_int, 0);
pub const ONIG_SYN_OP_DOT_ANYCHAR = @as(c_uint, 1) << @as(c_int, 1);
pub const ONIG_SYN_OP_ASTERISK_ZERO_INF = @as(c_uint, 1) << @as(c_int, 2);
pub const ONIG_SYN_OP_ESC_ASTERISK_ZERO_INF = @as(c_uint, 1) << @as(c_int, 3);
pub const ONIG_SYN_OP_PLUS_ONE_INF = @as(c_uint, 1) << @as(c_int, 4);
pub const ONIG_SYN_OP_ESC_PLUS_ONE_INF = @as(c_uint, 1) << @as(c_int, 5);
pub const ONIG_SYN_OP_QMARK_ZERO_ONE = @as(c_uint, 1) << @as(c_int, 6);
pub const ONIG_SYN_OP_ESC_QMARK_ZERO_ONE = @as(c_uint, 1) << @as(c_int, 7);
pub const ONIG_SYN_OP_BRACE_INTERVAL = @as(c_uint, 1) << @as(c_int, 8);
pub const ONIG_SYN_OP_ESC_BRACE_INTERVAL = @as(c_uint, 1) << @as(c_int, 9);
pub const ONIG_SYN_OP_VBAR_ALT = @as(c_uint, 1) << @as(c_int, 10);
pub const ONIG_SYN_OP_ESC_VBAR_ALT = @as(c_uint, 1) << @as(c_int, 11);
pub const ONIG_SYN_OP_LPAREN_SUBEXP = @as(c_uint, 1) << @as(c_int, 12);
pub const ONIG_SYN_OP_ESC_LPAREN_SUBEXP = @as(c_uint, 1) << @as(c_int, 13);
pub const ONIG_SYN_OP_ESC_AZ_BUF_ANCHOR = @as(c_uint, 1) << @as(c_int, 14);
pub const ONIG_SYN_OP_ESC_CAPITAL_G_BEGIN_ANCHOR = @as(c_uint, 1) << @as(c_int, 15);
pub const ONIG_SYN_OP_DECIMAL_BACKREF = @as(c_uint, 1) << @as(c_int, 16);
pub const ONIG_SYN_OP_BRACKET_CC = @as(c_uint, 1) << @as(c_int, 17);
pub const ONIG_SYN_OP_ESC_W_WORD = @as(c_uint, 1) << @as(c_int, 18);
pub const ONIG_SYN_OP_ESC_LTGT_WORD_BEGIN_END = @as(c_uint, 1) << @as(c_int, 19);
pub const ONIG_SYN_OP_ESC_B_WORD_BOUND = @as(c_uint, 1) << @as(c_int, 20);
pub const ONIG_SYN_OP_ESC_S_WHITE_SPACE = @as(c_uint, 1) << @as(c_int, 21);
pub const ONIG_SYN_OP_ESC_D_DIGIT = @as(c_uint, 1) << @as(c_int, 22);
pub const ONIG_SYN_OP_LINE_ANCHOR = @as(c_uint, 1) << @as(c_int, 23);
pub const ONIG_SYN_OP_POSIX_BRACKET = @as(c_uint, 1) << @as(c_int, 24);
pub const ONIG_SYN_OP_QMARK_NON_GREEDY = @as(c_uint, 1) << @as(c_int, 25);
pub const ONIG_SYN_OP_ESC_CONTROL_CHARS = @as(c_uint, 1) << @as(c_int, 26);
pub const ONIG_SYN_OP_ESC_C_CONTROL = @as(c_uint, 1) << @as(c_int, 27);
pub const ONIG_SYN_OP_ESC_OCTAL3 = @as(c_uint, 1) << @as(c_int, 28);
pub const ONIG_SYN_OP_ESC_X_HEX2 = @as(c_uint, 1) << @as(c_int, 29);
pub const ONIG_SYN_OP_ESC_X_BRACE_HEX8 = @as(c_uint, 1) << @as(c_int, 30);
pub const ONIG_SYN_OP_ESC_O_BRACE_OCTAL = @as(c_uint, 1) << @as(c_int, 31);
pub const ONIG_SYN_OP2_ESC_CAPITAL_Q_QUOTE = @as(c_uint, 1) << @as(c_int, 0);
pub const ONIG_SYN_OP2_QMARK_GROUP_EFFECT = @as(c_uint, 1) << @as(c_int, 1);
pub const ONIG_SYN_OP2_OPTION_PERL = @as(c_uint, 1) << @as(c_int, 2);
pub const ONIG_SYN_OP2_OPTION_RUBY = @as(c_uint, 1) << @as(c_int, 3);
pub const ONIG_SYN_OP2_PLUS_POSSESSIVE_REPEAT = @as(c_uint, 1) << @as(c_int, 4);
pub const ONIG_SYN_OP2_PLUS_POSSESSIVE_INTERVAL = @as(c_uint, 1) << @as(c_int, 5);
pub const ONIG_SYN_OP2_CCLASS_SET_OP = @as(c_uint, 1) << @as(c_int, 6);
pub const ONIG_SYN_OP2_QMARK_LT_NAMED_GROUP = @as(c_uint, 1) << @as(c_int, 7);
pub const ONIG_SYN_OP2_ESC_K_NAMED_BACKREF = @as(c_uint, 1) << @as(c_int, 8);
pub const ONIG_SYN_OP2_ESC_G_SUBEXP_CALL = @as(c_uint, 1) << @as(c_int, 9);
pub const ONIG_SYN_OP2_ATMARK_CAPTURE_HISTORY = @as(c_uint, 1) << @as(c_int, 10);
pub const ONIG_SYN_OP2_ESC_CAPITAL_C_BAR_CONTROL = @as(c_uint, 1) << @as(c_int, 11);
pub const ONIG_SYN_OP2_ESC_CAPITAL_M_BAR_META = @as(c_uint, 1) << @as(c_int, 12);
pub const ONIG_SYN_OP2_ESC_V_VTAB = @as(c_uint, 1) << @as(c_int, 13);
pub const ONIG_SYN_OP2_ESC_U_HEX4 = @as(c_uint, 1) << @as(c_int, 14);
pub const ONIG_SYN_OP2_ESC_GNU_BUF_ANCHOR = @as(c_uint, 1) << @as(c_int, 15);
pub const ONIG_SYN_OP2_ESC_P_BRACE_CHAR_PROPERTY = @as(c_uint, 1) << @as(c_int, 16);
pub const ONIG_SYN_OP2_ESC_P_BRACE_CIRCUMFLEX_NOT = @as(c_uint, 1) << @as(c_int, 17);
pub const ONIG_SYN_OP2_ESC_H_XDIGIT = @as(c_uint, 1) << @as(c_int, 19);
pub const ONIG_SYN_OP2_INEFFECTIVE_ESCAPE = @as(c_uint, 1) << @as(c_int, 20);
pub const ONIG_SYN_OP2_ESC_CAPITAL_R_LINEBREAK = @as(c_uint, 1) << @as(c_int, 21);
pub const ONIG_SYN_OP2_ESC_CAPITAL_X_EXTENDED_GRAPHEME_CLUSTER = @as(c_uint, 1) << @as(c_int, 22);
pub const ONIG_SYN_OP2_ESC_V_VERTICAL_WHITESPACE = @as(c_uint, 1) << @as(c_int, 23);
pub const ONIG_SYN_OP2_ESC_H_HORIZONTAL_WHITESPACE = @as(c_uint, 1) << @as(c_int, 24);
pub const ONIG_SYN_OP2_ESC_CAPITAL_K_KEEP = @as(c_uint, 1) << @as(c_int, 25);
pub const ONIG_SYN_OP2_ESC_G_BRACE_BACKREF = @as(c_uint, 1) << @as(c_int, 26);
pub const ONIG_SYN_OP2_QMARK_SUBEXP_CALL = @as(c_uint, 1) << @as(c_int, 27);
pub const ONIG_SYN_OP2_QMARK_VBAR_BRANCH_RESET = @as(c_uint, 1) << @as(c_int, 28);
pub const ONIG_SYN_OP2_QMARK_LPAREN_CONDITION = @as(c_uint, 1) << @as(c_int, 29);
pub const ONIG_SYN_OP2_QMARK_CAPITAL_P_NAMED_GROUP = @as(c_uint, 1) << @as(c_int, 30);
pub const ONIG_SYN_OP2_QMARK_TILDE_ABSENT = @as(c_uint, 1) << @as(c_int, 31);
pub const ONIG_SYN_CONTEXT_INDEP_ANCHORS = @as(c_uint, 1) << @as(c_int, 31);
pub const ONIG_SYN_CONTEXT_INDEP_REPEAT_OPS = @as(c_uint, 1) << @as(c_int, 0);
pub const ONIG_SYN_CONTEXT_INVALID_REPEAT_OPS = @as(c_uint, 1) << @as(c_int, 1);
pub const ONIG_SYN_ALLOW_UNMATCHED_CLOSE_SUBEXP = @as(c_uint, 1) << @as(c_int, 2);
pub const ONIG_SYN_ALLOW_INVALID_INTERVAL = @as(c_uint, 1) << @as(c_int, 3);
pub const ONIG_SYN_ALLOW_INTERVAL_LOW_ABBREV = @as(c_uint, 1) << @as(c_int, 4);
pub const ONIG_SYN_STRICT_CHECK_BACKREF = @as(c_uint, 1) << @as(c_int, 5);
pub const ONIG_SYN_DIFFERENT_LEN_ALT_LOOK_BEHIND = @as(c_uint, 1) << @as(c_int, 6);
pub const ONIG_SYN_CAPTURE_ONLY_NAMED_GROUP = @as(c_uint, 1) << @as(c_int, 7);
pub const ONIG_SYN_ALLOW_MULTIPLEX_DEFINITION_NAME = @as(c_uint, 1) << @as(c_int, 8);
pub const ONIG_SYN_FIXED_INTERVAL_IS_GREEDY_ONLY = @as(c_uint, 1) << @as(c_int, 9);
pub const ONIG_SYN_ALLOW_MULTIPLEX_DEFINITION_NAME_CALL = @as(c_uint, 1) << @as(c_int, 10);
pub const ONIG_SYN_USE_LEFT_MOST_NAMED_GROUP = @as(c_uint, 1) << @as(c_int, 11);
pub const ONIG_SYN_NOT_NEWLINE_IN_NEGATIVE_CC = @as(c_uint, 1) << @as(c_int, 20);
pub const ONIG_SYN_BACKSLASH_ESCAPE_IN_CC = @as(c_uint, 1) << @as(c_int, 21);
pub const ONIG_SYN_ALLOW_EMPTY_RANGE_IN_CC = @as(c_uint, 1) << @as(c_int, 22);
pub const ONIG_SYN_ALLOW_DOUBLE_RANGE_OP_IN_CC = @as(c_uint, 1) << @as(c_int, 23);
pub const ONIG_SYN_WARN_CC_OP_NOT_ESCAPED = @as(c_uint, 1) << @as(c_int, 24);
pub const ONIG_SYN_WARN_REDUNDANT_NESTED_REPEAT = @as(c_uint, 1) << @as(c_int, 25);
pub const ONIG_SYN_WARN_CC_DUP = @as(c_uint, 1) << @as(c_int, 26);
pub const ONIG_META_CHAR_ESCAPE = @as(c_int, 0);
pub const ONIG_META_CHAR_ANYCHAR = @as(c_int, 1);
pub const ONIG_META_CHAR_ANYTIME = @as(c_int, 2);
pub const ONIG_META_CHAR_ZERO_OR_ONE_TIME = @as(c_int, 3);
pub const ONIG_META_CHAR_ONE_OR_MORE_TIME = @as(c_int, 4);
pub const ONIG_META_CHAR_ANYCHAR_ANYTIME = @as(c_int, 5);
pub const ONIG_INEFFECTIVE_META_CHAR = @as(c_int, 0);
pub inline fn ONIG_IS_PATTERN_ERROR(ecode: anytype) @TypeOf((ecode <= -@as(c_int, 100)) and (ecode > -@as(c_int, 1000))) {
    _ = &ecode;
    return (ecode <= -@as(c_int, 100)) and (ecode > -@as(c_int, 1000));
}
pub const ONIG_NORMAL = @as(c_int, 0);
pub const ONIG_MISMATCH = -@as(c_int, 1);
pub const ONIG_NO_SUPPORT_CONFIG = -@as(c_int, 2);
pub const ONIGERR_MEMORY = -@as(c_int, 5);
pub const ONIGERR_TYPE_BUG = -@as(c_int, 6);
pub const ONIGERR_PARSER_BUG = -@as(c_int, 11);
pub const ONIGERR_STACK_BUG = -@as(c_int, 12);
pub const ONIGERR_UNDEFINED_BYTECODE = -@as(c_int, 13);
pub const ONIGERR_UNEXPECTED_BYTECODE = -@as(c_int, 14);
pub const ONIGERR_MATCH_STACK_LIMIT_OVER = -@as(c_int, 15);
pub const ONIGERR_PARSE_DEPTH_LIMIT_OVER = -@as(c_int, 16);
pub const ONIGERR_DEFAULT_ENCODING_IS_NOT_SET = -@as(c_int, 21);
pub const ONIGERR_SPECIFIED_ENCODING_CANT_CONVERT_TO_WIDE_CHAR = -@as(c_int, 22);
pub const ONIGERR_TIMEOUT = -@as(c_int, 23);
pub const ONIGERR_INVALID_ARGUMENT = -@as(c_int, 30);
pub const ONIGERR_END_PATTERN_AT_LEFT_BRACE = -@as(c_int, 100);
pub const ONIGERR_END_PATTERN_AT_LEFT_BRACKET = -@as(c_int, 101);
pub const ONIGERR_EMPTY_CHAR_CLASS = -@as(c_int, 102);
pub const ONIGERR_PREMATURE_END_OF_CHAR_CLASS = -@as(c_int, 103);
pub const ONIGERR_END_PATTERN_AT_ESCAPE = -@as(c_int, 104);
pub const ONIGERR_END_PATTERN_AT_META = -@as(c_int, 105);
pub const ONIGERR_END_PATTERN_AT_CONTROL = -@as(c_int, 106);
pub const ONIGERR_META_CODE_SYNTAX = -@as(c_int, 108);
pub const ONIGERR_CONTROL_CODE_SYNTAX = -@as(c_int, 109);
pub const ONIGERR_CHAR_CLASS_VALUE_AT_END_OF_RANGE = -@as(c_int, 110);
pub const ONIGERR_CHAR_CLASS_VALUE_AT_START_OF_RANGE = -@as(c_int, 111);
pub const ONIGERR_UNMATCHED_RANGE_SPECIFIER_IN_CHAR_CLASS = -@as(c_int, 112);
pub const ONIGERR_TARGET_OF_REPEAT_OPERATOR_NOT_SPECIFIED = -@as(c_int, 113);
pub const ONIGERR_TARGET_OF_REPEAT_OPERATOR_INVALID = -@as(c_int, 114);
pub const ONIGERR_NESTED_REPEAT_OPERATOR = -@as(c_int, 115);
pub const ONIGERR_UNMATCHED_CLOSE_PARENTHESIS = -@as(c_int, 116);
pub const ONIGERR_END_PATTERN_WITH_UNMATCHED_PARENTHESIS = -@as(c_int, 117);
pub const ONIGERR_END_PATTERN_IN_GROUP = -@as(c_int, 118);
pub const ONIGERR_UNDEFINED_GROUP_OPTION = -@as(c_int, 119);
pub const ONIGERR_INVALID_POSIX_BRACKET_TYPE = -@as(c_int, 121);
pub const ONIGERR_INVALID_LOOK_BEHIND_PATTERN = -@as(c_int, 122);
pub const ONIGERR_INVALID_REPEAT_RANGE_PATTERN = -@as(c_int, 123);
pub const ONIGERR_INVALID_CONDITION_PATTERN = -@as(c_int, 124);
pub const ONIGERR_TOO_BIG_NUMBER = -@as(c_int, 200);
pub const ONIGERR_TOO_BIG_NUMBER_FOR_REPEAT_RANGE = -@as(c_int, 201);
pub const ONIGERR_UPPER_SMALLER_THAN_LOWER_IN_REPEAT_RANGE = -@as(c_int, 202);
pub const ONIGERR_EMPTY_RANGE_IN_CHAR_CLASS = -@as(c_int, 203);
pub const ONIGERR_MISMATCH_CODE_LENGTH_IN_CLASS_RANGE = -@as(c_int, 204);
pub const ONIGERR_TOO_MANY_MULTI_BYTE_RANGES = -@as(c_int, 205);
pub const ONIGERR_TOO_SHORT_MULTI_BYTE_STRING = -@as(c_int, 206);
pub const ONIGERR_TOO_BIG_BACKREF_NUMBER = -@as(c_int, 207);
pub const ONIGERR_INVALID_BACKREF = -@as(c_int, 208);
pub const ONIGERR_NUMBERED_BACKREF_OR_CALL_NOT_ALLOWED = -@as(c_int, 209);
pub const ONIGERR_TOO_MANY_CAPTURE_GROUPS = -@as(c_int, 210);
pub const ONIGERR_TOO_SHORT_DIGITS = -@as(c_int, 211);
pub const ONIGERR_TOO_LONG_WIDE_CHAR_VALUE = -@as(c_int, 212);
pub const ONIGERR_EMPTY_GROUP_NAME = -@as(c_int, 214);
pub const ONIGERR_INVALID_GROUP_NAME = -@as(c_int, 215);
pub const ONIGERR_INVALID_CHAR_IN_GROUP_NAME = -@as(c_int, 216);
pub const ONIGERR_UNDEFINED_NAME_REFERENCE = -@as(c_int, 217);
pub const ONIGERR_UNDEFINED_GROUP_REFERENCE = -@as(c_int, 218);
pub const ONIGERR_MULTIPLEX_DEFINED_NAME = -@as(c_int, 219);
pub const ONIGERR_MULTIPLEX_DEFINITION_NAME_CALL = -@as(c_int, 220);
pub const ONIGERR_NEVER_ENDING_RECURSION = -@as(c_int, 221);
pub const ONIGERR_GROUP_NUMBER_OVER_FOR_CAPTURE_HISTORY = -@as(c_int, 222);
pub const ONIGERR_INVALID_CHAR_PROPERTY_NAME = -@as(c_int, 223);
pub const ONIGERR_INVALID_CODE_POINT_VALUE = -@as(c_int, 400);
pub const ONIGERR_INVALID_WIDE_CHAR_VALUE = -@as(c_int, 400);
pub const ONIGERR_TOO_BIG_WIDE_CHAR_VALUE = -@as(c_int, 401);
pub const ONIGERR_NOT_SUPPORTED_ENCODING_COMBINATION = -@as(c_int, 402);
pub const ONIGERR_INVALID_COMBINATION_OF_OPTIONS = -@as(c_int, 403);
pub const ONIG_MAX_CAPTURE_HISTORY_GROUP = @as(c_int, 31);
pub inline fn ONIG_IS_CAPTURE_HISTORY_GROUP(r: anytype, i: anytype) @TypeOf(((i <= ONIG_MAX_CAPTURE_HISTORY_GROUP) and (r.*.list != 0)) and (r.*.list[@as(usize, @intCast(i))] != 0)) {
    _ = &r;
    _ = &i;
    return ((i <= ONIG_MAX_CAPTURE_HISTORY_GROUP) and (r.*.list != 0)) and (r.*.list[@as(usize, @intCast(i))] != 0);
}
pub const ONIG_TRAVERSE_CALLBACK_AT_FIRST = @as(c_int, 1);
pub const ONIG_TRAVERSE_CALLBACK_AT_LAST = @as(c_int, 2);
pub const ONIG_TRAVERSE_CALLBACK_AT_BOTH = ONIG_TRAVERSE_CALLBACK_AT_FIRST | ONIG_TRAVERSE_CALLBACK_AT_LAST;
pub const ONIG_REGION_NOTPOS = -@as(c_int, 1);
pub const ONIG_NULL_WARN = onig_null_warn;
pub const ONIG_CHAR_TABLE_SIZE = @as(c_int, 256);
pub const RUBY_INTERNAL_ENCODING_ENCODING_H = "";
pub const ONIGURUMA_H = "";
pub const ONIGURUMA = "";
pub const ONIGURUMA_VERSION_MAJOR = ONIGMO_VERSION_MAJOR;
pub const ONIGURUMA_VERSION_MINOR = ONIGMO_VERSION_MINOR;
pub const ONIGURUMA_VERSION_TEENY = ONIGMO_VERSION_TEENY;
pub const ENCODING_INLINE_MAX = RUBY_ENCODING_INLINE_MAX;
pub const ENCODING_SHIFT = RUBY_ENCODING_SHIFT;
pub const ENCODING_MASK = RUBY_ENCODING_MASK;
pub inline fn ENCODING_SET_INLINED(obj: anytype, i: anytype) @TypeOf(RB_ENCODING_SET_INLINED(obj, i)) {
    _ = &obj;
    _ = &i;
    return RB_ENCODING_SET_INLINED(obj, i);
}
pub inline fn ENCODING_SET(obj: anytype, i: anytype) @TypeOf(RB_ENCODING_SET(obj, i)) {
    _ = &obj;
    _ = &i;
    return RB_ENCODING_SET(obj, i);
}
pub inline fn ENCODING_GET_INLINED(obj: anytype) @TypeOf(RB_ENCODING_GET_INLINED(obj)) {
    _ = &obj;
    return RB_ENCODING_GET_INLINED(obj);
}
pub inline fn ENCODING_GET(obj: anytype) @TypeOf(RB_ENCODING_GET(obj)) {
    _ = &obj;
    return RB_ENCODING_GET(obj);
}
pub inline fn ENCODING_IS_ASCII8BIT(obj: anytype) @TypeOf(RB_ENCODING_IS_ASCII8BIT(obj)) {
    _ = &obj;
    return RB_ENCODING_IS_ASCII8BIT(obj);
}
pub const ENCODING_MAXNAMELEN = RUBY_ENCODING_MAXNAMELEN;
pub inline fn MBCLEN_CHARFOUND_P(ret: anytype) @TypeOf(ONIGENC_MBCLEN_CHARFOUND_P(ret)) {
    _ = &ret;
    return ONIGENC_MBCLEN_CHARFOUND_P(ret);
}
pub inline fn MBCLEN_CHARFOUND_LEN(ret: anytype) @TypeOf(ONIGENC_MBCLEN_CHARFOUND_LEN(ret)) {
    _ = &ret;
    return ONIGENC_MBCLEN_CHARFOUND_LEN(ret);
}
pub inline fn MBCLEN_INVALID_P(ret: anytype) @TypeOf(ONIGENC_MBCLEN_INVALID_P(ret)) {
    _ = &ret;
    return ONIGENC_MBCLEN_INVALID_P(ret);
}
pub inline fn MBCLEN_NEEDMORE_P(ret: anytype) @TypeOf(ONIGENC_MBCLEN_NEEDMORE_P(ret)) {
    _ = &ret;
    return ONIGENC_MBCLEN_NEEDMORE_P(ret);
}
pub inline fn MBCLEN_NEEDMORE_LEN(ret: anytype) @TypeOf(ONIGENC_MBCLEN_NEEDMORE_LEN(ret)) {
    _ = &ret;
    return ONIGENC_MBCLEN_NEEDMORE_LEN(ret);
}
pub const RUBY_INTERNAL_ENCODING_PATHNAME_H = "";
pub const RUBY_INTERNAL_ENCODING_RE_H = "";
pub const RUBY_INTERNAL_ENCODING_SPRINTF_H = "";
pub const RUBY_INTERNAL_ENCODING_STRING_H = "";
pub const RUBY_INTERNAL_ENCODING_SYMBOL_H = "";
pub const RUBY_INTERNAL_ENCODING_TRANSCODE_H = "";
pub const ECONV_ERROR_HANDLER_MASK = RUBY_ECONV_ERROR_HANDLER_MASK;
pub const ECONV_INVALID_MASK = RUBY_ECONV_INVALID_MASK;
pub const ECONV_INVALID_REPLACE = RUBY_ECONV_INVALID_REPLACE;
pub const ECONV_UNDEF_MASK = RUBY_ECONV_UNDEF_MASK;
pub const ECONV_UNDEF_REPLACE = RUBY_ECONV_UNDEF_REPLACE;
pub const ECONV_UNDEF_HEX_CHARREF = RUBY_ECONV_UNDEF_HEX_CHARREF;
pub const ECONV_DECORATOR_MASK = RUBY_ECONV_DECORATOR_MASK;
pub const ECONV_NEWLINE_DECORATOR_MASK = RUBY_ECONV_NEWLINE_DECORATOR_MASK;
pub const ECONV_NEWLINE_DECORATOR_READ_MASK = RUBY_ECONV_NEWLINE_DECORATOR_READ_MASK;
pub const ECONV_NEWLINE_DECORATOR_WRITE_MASK = RUBY_ECONV_NEWLINE_DECORATOR_WRITE_MASK;
pub const ECONV_UNIVERSAL_NEWLINE_DECORATOR = RUBY_ECONV_UNIVERSAL_NEWLINE_DECORATOR;
pub const ECONV_CRLF_NEWLINE_DECORATOR = RUBY_ECONV_CRLF_NEWLINE_DECORATOR;
pub const ECONV_CR_NEWLINE_DECORATOR = RUBY_ECONV_CR_NEWLINE_DECORATOR;
pub const ECONV_LF_NEWLINE_DECORATOR = RUBY_ECONV_LF_NEWLINE_DECORATOR;
pub const ECONV_XML_TEXT_DECORATOR = RUBY_ECONV_XML_TEXT_DECORATOR;
pub const ECONV_XML_ATTR_CONTENT_DECORATOR = RUBY_ECONV_XML_ATTR_CONTENT_DECORATOR;
pub const ECONV_STATEFUL_DECORATOR_MASK = RUBY_ECONV_STATEFUL_DECORATOR_MASK;
pub const ECONV_XML_ATTR_QUOTE_DECORATOR = RUBY_ECONV_XML_ATTR_QUOTE_DECORATOR;
pub const ECONV_DEFAULT_NEWLINE_DECORATOR = RUBY_ECONV_DEFAULT_NEWLINE_DECORATOR;
pub const ECONV_PARTIAL_INPUT = RUBY_ECONV_PARTIAL_INPUT;
pub const ECONV_AFTER_OUTPUT = RUBY_ECONV_AFTER_OUTPUT;
pub const _G_fpos_t = struct__G_fpos_t;
pub const _G_fpos64_t = struct__G_fpos64_t;
pub const _IO_marker = struct__IO_marker;
pub const _IO_codecvt = struct__IO_codecvt;
pub const _IO_wide_data = struct__IO_wide_data;
pub const _IO_FILE = struct__IO_FILE;
pub const _IO_cookie_io_functions_t = struct__IO_cookie_io_functions_t;
pub const obstack = struct_obstack;
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_internal_slist = struct___pthread_internal_slist;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const statx_timestamp = struct_statx_timestamp;
pub const __locale_struct = struct___locale_struct;
pub const random_data = struct_random_data;
pub const drand48_data = struct_drand48_data;
pub const timex = struct_timex;
pub const tm = struct_tm;
pub const itimerspec = struct_itimerspec;
pub const sigevent = struct_sigevent;
pub const __itimer_which = enum___itimer_which;
pub const itimerval = struct_itimerval;
pub const ruby_special_consts = enum_ruby_special_consts;
pub const ruby_rvalue_flags = enum_ruby_rvalue_flags;
pub const RBasic = struct_RBasic;
pub const rb_io_wait_readwrite = enum_rb_io_wait_readwrite;
pub const ruby_value_type = enum_ruby_value_type;
pub const ruby_fl_ushift = enum_ruby_fl_ushift;
pub const ruby_fl_type = enum_ruby_fl_type;
pub const ruby_rstring_flags = enum_ruby_rstring_flags;
pub const RString = struct_RString;
pub const st_hash_type = struct_st_hash_type;
pub const st_retval = enum_st_retval;
pub const ruby_rarray_flags = enum_ruby_rarray_flags;
pub const ruby_rarray_consts = enum_ruby_rarray_consts;
pub const RArray = struct_RArray;
pub const ruby_rmodule_flags = enum_ruby_rmodule_flags;
pub const RClass = struct_RClass;
pub const RData = struct_RData;
pub const rb_io = struct_rb_io;
pub const RFile = struct_RFile;
pub const ruby_robject_flags = enum_ruby_robject_flags;
pub const RObject = struct_RObject;
pub const re_patter_buffer = struct_re_patter_buffer;
pub const OnigEncodingTypeST = struct_OnigEncodingTypeST;
pub const re_pattern_buffer = struct_re_pattern_buffer;
pub const RRegexp = struct_RRegexp;
pub const rbimpl_typeddata_flags = enum_rbimpl_typeddata_flags;
pub const rb_data_type_struct = struct_rb_data_type_struct;
pub const RTypedData = struct_RTypedData;
pub const rbimpl_size_overflow_tag = struct_rbimpl_size_overflow_tag;
pub const ruby_coderange_type = enum_ruby_coderange_type;
pub const re_registers = struct_re_registers;
pub const ruby_encoding_consts = enum_ruby_encoding_consts;
pub const ruby_econv_flag_type = enum_ruby_econv_flag_type;
