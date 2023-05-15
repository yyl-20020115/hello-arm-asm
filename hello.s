.syntax unified
.data
message:
        .ascii "Hello, ARM! Written by Yiiln.\n"
len = . - message
.text
.global _start
_start:
        /* syscall write(int fd, const void *buf, size_t count) */
        mov     %r0, $1     /* fd -> stdout */
        ldr     %r1, =message   /* buf -> message */
        ldr     %r2, =len   /* count -> len(message) */
        mov     %r7, $4     /* write is syscall #4 */
        swi     $0          /* invoke syscall */

        /* syscall exit(int status) */
        mov     %r0, $0     /* status -> 0 */
        mov     %r7, $1     /* exit is syscall #1 */
        swi     $0          /* invoke syscall */

