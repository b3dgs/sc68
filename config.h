#define _CRT_SECURE_NO_WARNINGS

#ifndef inline
# define inline __inline
#endif
#define snprintf _snprintf

#undef HAVE_DECLSPEC

#if defined (_DEBUG) && !defined(DEBUG)
# define DEBUG _DEBUG
#endif
#if defined (_NDEBUG) && !defined(NDEBUG)
# define NDEBUG _NDEBUG
#endif

/* headers */
#define HAVE_WINDOWS_H 1
#define HAVE_WINREG_H 1
#define HAVE_ASSERT_H 1
#define HAVE_LIMITS_H 1
#define HAVE_STDIO_H  1
#define HAVE_STDLIB_H 1
#define HAVE_STRING_H 1
#define HAVE_STDINT_H 1
#define HAVE_FREOPEN 1
#define HAVE_UNISTD_H 1
#undef HAVE_LIBGEN_H

/* functions */
#define HAVE_GETENV 1
#define HAVE_FREE 1
#define HAVE_MALLOC 1
#undef HAVE_BASENAME

/* Other stuff */
#define NATIVE_WIN32 1
//#define _POSIX_ 0

//#define memcmp(a,b,c) _memcmp(a,b,c)
//#define read(a,b,c) _read(a,b,c)
//#define lseek(a,b,c) _lseek(a,b,c)
//#define _CRT_NONSTDC_DEPRECATE

#define CPP_SUPPORTS_VA_MACROS 1
//#pragma warning(disable: 4996)

#define USE_REPLAY68 1
/* debug facilities for file68 */
/* #undef DEBUG_FILE68 */

/* Defined if file68 supports audio (via libao) */
//#define FILE68_AO 1
/* Defined if file68 supports remote files (via libcurl) */
//#define FILE68_CURL 1
/* Defined if file68 supports !ice depacker (via unice68) */
#define FILE68_UNICE68 1

/* Defined if file68 supports deflate (via zlib) */
#define FILE68_Z 1

/* Define to 1 if you have the `ao_file_extension' function. */
/* #undef HAVE_AO_FILE_EXTENSION */

/* Support __declspec() */
//#define HAVE_DECLSPEC 1
/* Define to 1 if you have the <dlfcn.h> header file. */
/* #undef HAVE_DLFCN_H */

/* Define to 1 if you have the `fdatasync' function. */
/* #undef HAVE_FDATASYNC */

/* Define to 1 if you have the `fsync' function. */
/* #undef HAVE_FSYNC */

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define to 1 if you have the `sleep' function. */
/* #undef HAVE_SLEEP */

/* Define to 1 if you have the <strings.h> header file. */
#define HAVE_STRINGS_H 1

/* Define to 1 if you have the `usleep' function. */
// #define HAVE_USLEEP 1
/* Support visibility __attribute__ */
/* #undef HAVE_VISIBILITY */

/* Define to 1 if you have the `vsnprintf' function. */
#define HAVE_VSNPRINTF 1

/* Define to 1 if you have the `vsprintf' function. */
#define HAVE_VSPRINTF 1

/* Disable file decriptor stream support */
#define ISTREAM68_NO_FD 1

/* Disable FILE* stream support */
/* #undef ISTREAM68_NO_FILE */

/* Disable memory stream support */
/* #undef ISTREAM68_NO_MEM */

/* Define to the sub-directory in which libtool stores uninstalled libraries.
 */
//#define LT_OBJDIR ".libs/"
/* suppress all debug facilities for file68 */
//#define NDEBUG_FILE68 1
/* Define to 1 if your C compiler doesn't accept -c and -o together. */
/* #undef NO_MINUS_C_MINUS_O */

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT " "

/* Define to the home page for this package. */
#define PACKAGE_URL " "

/* Version number */
#define PACKAGE_VERNUM 300

/* Define to the version of this package. */
#define PACKAGE_VERSION " "

#define PACKAGE_STRING " "

#define PACKAGE_NAME " "

/* Using ao library */
//#define USE_AO 1
/* Using curl library */
//#define USE_CURL 1
/* Using Windows registry */
#define USE_REGISTRY68 1

/* Enable extensions on AIX 3, Interix.  */
//#ifndef _ALL_SOURCE
//# define _ALL_SOURCE 1
//#endif
/* Enable GNU extensions on systems that have them.  */
//#ifndef _GNU_SOURCE
//# define _GNU_SOURCE 1
//#endif
/* Enable threading extensions on Solaris.  */
//#ifndef _POSIX_PTHREAD_SEMANTICS
//# define _POSIX_PTHREAD_SEMANTICS 1
//#endif
/* Enable extensions on HP NonStop.  */
//#ifndef _TANDEM_SOURCE
//# define _TANDEM_SOURCE 1
//#endif
/* Enable general extensions on Solaris.  */
//#ifndef __EXTENSIONS__
//# define __EXTENSIONS__ 1
//#endif

/* Using unice68 library */
#define USE_UNICE68 1

/* Using z library */
#define USE_Z 1

/* Version number of package */
#define VERSION " "

/* Define to 1 if on MINIX. */
/* #undef _MINIX */

/* Define to 2 if the system does not provide POSIX.1 features except with
 this defined. */
/* #undef _POSIX_1_SOURCE */

/* Define to 1 if you need to in order for `stat' and other things to work. */
/* #undef _POSIX_SOURCE */

/* Define to empty if `const' does not conform to ANSI C. */
/* #undef const */

/* Define to `__inline__' or `__inline' if that's what the C compiler
 calls it, or to nothing if 'inline' is not supported under any name.  */
//#ifndef __cplusplus
///* #undef inline */
//#endif
/* Define to the equivalent of the C99 'restrict' keyword, or to
 nothing if this is not supported.  Do not define if restrict is
 supported directly.  */
//#define restrict __restrict
/* Work around a bug in Sun C++: it does not support _Restrict or
 __restrict__, even though the corresponding Sun C compiler ends up with
 "#define restrict _Restrict" or "#define restrict __restrict__" in the
 previous line.  Perhaps some future version of Sun C++ will work with
 restrict; if so, hopefully it defines __RESTRICT like Sun C does.  */
//#if defined __SUNPRO_CC && !defined __RESTRICT
//# define _Restrict
//# define __restrict__
//#endif
/* #undef volatile */

#undef EMU68_MONOLITIC
#define EMU68_EXPORT 1

/* Support __declspec() */
//#define HAVE_DECLSPEC 1
/* Define to 1 if you have the <dlfcn.h> header file. */
/* #undef HAVE_DLFCN_H */

/* Define to 1 if the system has the type `intmax_t'. */
#define HAVE_INTMAX_T 1

/* Define to 1 if the system has the type `long long int'. */
#define HAVE_LONG_LONG_INT 1

/* Define to 1 if you have the `stpcpy' function. */
/* #undef HAVE_STPCPY */

/* Define to 1 if you have the `strtol' function. */
#define HAVE_STRTOL 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if the system has the type `uintmax_t'. */
#define HAVE_UINTMAX_T 1

/* Define to 1 if the system has the type `unsigned long long int'. */
#define HAVE_UNSIGNED_LONG_LONG_INT 1

/* Support visibility __attribute__ */
/* #undef HAVE_VISIBILITY */

/* Define to the sub-directory in which libtool stores uninstalled libraries.
 */
//#define LT_OBJDIR ".libs/"
/* Define to 1 if assertions should be disabled. */
#define NDEBUG 1

#ifdef NDEBUG
/* suppress all debug facilities for libsc68 */
#define NDEBUG_LIBSC68 1
#endif

/* Define to 1 if your C compiler doesn't accept -c and -o together. */
/* #undef NO_MINUS_C_MINUS_O */

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* Using file68 library */
#define USE_FILE68 1

/* Enable extensions on AIX 3, Interix.  */
//#ifndef _ALL_SOURCE
//# define _ALL_SOURCE 1
//#endif
/* Enable GNU extensions on systems that have them.  */
//#ifndef _GNU_SOURCE
//# define _GNU_SOURCE 1
//#endif
/* Enable threading extensions on Solaris.  */
//#ifndef _POSIX_PTHREAD_SEMANTICS
//# define _POSIX_PTHREAD_SEMANTICS 1
//#endif
/* Enable extensions on HP NonStop.  */
//#ifndef _TANDEM_SOURCE
//# define _TANDEM_SOURCE 1
//#endif
/* Enable general extensions on Solaris.  */
//#ifndef __EXTENSIONS__
//# define __EXTENSIONS__ 1
//#endif
/* set default YM engine */
/* #undef YM_ENGINE */

/* Define to 1 if on MINIX. */
/* #undef _MINIX */

/* Define to 2 if the system does not provide POSIX.1 features except with
 this defined. */
/* #undef _POSIX_1_SOURCE */

/* Define to 1 if you need to in order for `stat' and other things to work. */
/* #undef _POSIX_SOURCE */

/* Define for Solaris 2.5.1 so the uint32_t typedef from <sys/synch.h>,
 <pthread.h>, or <semaphore.h> is not used. If the typedef were allowed, the
 #define below would cause a syntax error. */
/* #undef _UINT32_T */

/* Define for Solaris 2.5.1 so the uint64_t typedef from <sys/synch.h>,
 <pthread.h>, or <semaphore.h> is not used. If the typedef were allowed, the
 #define below would cause a syntax error. */
/* #undef _UINT64_T */

/* Define for Solaris 2.5.1 so the uint8_t typedef from <sys/synch.h>,
 <pthread.h>, or <semaphore.h> is not used. If the typedef were allowed, the
 #define below would cause a syntax error. */
/* #undef _UINT8_T */

/* Define to empty if `const' does not conform to ANSI C. */
/* #undef const */

/* Define to `__inline__' or `__inline' if that's what the C compiler
 calls it, or to nothing if 'inline' is not supported under any name.  */
//#ifndef __cplusplus
///* #undef inline */
//#endif
/* Define to the type of a signed integer type of width exactly 16 bits if
 such a type exists and the standard includes do not define it. */
/* #undef int16_t */

/* Define to the type of a signed integer type of width exactly 32 bits if
 such a type exists and the standard includes do not define it. */
/* #undef int32_t */

/* Define to the type of a signed integer type of width exactly 64 bits if
 such a type exists and the standard includes do not define it. */
/* #undef int64_t */

/* Define to the type of a signed integer type of width exactly 8 bits if such
 a type exists and the standard includes do not define it. */
/* #undef int8_t */

/* Define to the widest signed integer type if <stdint.h> and <inttypes.h> do
 not define. */
/* #undef intmax_t */

/* Define to the equivalent of the C99 'restrict' keyword, or to
 nothing if this is not supported.  Do not define if restrict is
 supported directly.  */
//#define restrict __restrict
/* Work around a bug in Sun C++: it does not support _Restrict or
 __restrict__, even though the corresponding Sun C compiler ends up with
 "#define restrict _Restrict" or "#define restrict __restrict__" in the
 previous line.  Perhaps some future version of Sun C++ will work with
 restrict; if so, hopefully it defines __RESTRICT like Sun C does.  */
//#if defined __SUNPRO_CC && !defined __RESTRICT
//# define _Restrict
//# define __restrict__
//#endif
/* Define to the type of an unsigned integer type of width exactly 16 bits if
 such a type exists and the standard includes do not define it. */
/* #undef uint16_t */

/* Define to the type of an unsigned integer type of width exactly 32 bits if
 such a type exists and the standard includes do not define it. */
/* #undef uint32_t */

/* Define to the type of an unsigned integer type of width exactly 64 bits if
 such a type exists and the standard includes do not define it. */
/* #undef uint64_t */

/* Define to the type of an unsigned integer type of width exactly 8 bits if
 such a type exists and the standard includes do not define it. */
/* #undef uint8_t */

/* Define to the widest unsigned integer type if <stdint.h> and <inttypes.h>
 do not define. */
/* #undef uintmax_t */

/* Define to empty if the keyword `volatile' does not work. Warning: valid
 code using `volatile' can become incorrect without. Disable with care. */
/* #undef volatile */
