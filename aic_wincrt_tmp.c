#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

#ifdef __GNUC__
#define SYSV __attribute__((sysv_abi))
#else
#define SYSV
#endif

void * SYSV aic_calloc(size_t n, size_t s) { return calloc(n, s); }
void * SYSV aic_malloc(size_t n) { return malloc(n); }
size_t SYSV aic_strlen(const char *s) { return strlen(s); }
long SYSV aic_strtol(const char *s, char **endp, int base) { return strtol(s, endp, base); }
FILE * SYSV aic_fopen(const char *path, const char *mode) { return fopen(path, mode); }
long SYSV aic_ftell(FILE *f) { return ftell(f); }
int SYSV aic_fseek(FILE *f, long off, int whence) { return fseek(f, off, whence); }
size_t SYSV aic_fread(void *ptr, size_t size, size_t nmemb, FILE *stream) { return fread(ptr, size, nmemb, stream); }
size_t SYSV aic_fwrite(const void *ptr, size_t size, size_t nmemb, FILE *stream) { return fwrite(ptr, size, nmemb, stream); }
int SYSV aic_fclose(FILE *f) { return fclose(f); }
int SYSV aic_printf(const char *fmt, long value) { return printf(fmt, value); }
int SYSV aic_sprintf(char *buf, const char *fmt, long value) { return sprintf(buf, fmt, value); }
void SYSV aic_runtime_error(const char *msg) { fputs(msg, stderr); exit(1); }
