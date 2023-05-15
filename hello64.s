msg:

    .ascii        "Hello, ARM64! Written by Yiiln.\n"

len = . - msg

.text

/* Our application's entry point. */

.globl _start

_start:

    /* syscall write(int fd, const void *buf, size_t count) */

        mov     x0, x0
        mov     x1, x1
        add     x0, x0,#0
        add     x0, x0,#1
        cmp     x0, #0
        cmp     x0, #1
        cmp     x0, x1
        mov     x0, #1      /* fd := STDOUT_FILENO */
        ldr     x1, =msg    /* buf := msg */
        ldr     x2, =len    /* count := len */
        mov     w8, #64     /* write is syscall #64 */
        svc     #0          /* invoke syscall */

    /* syscall exit(int status) */
        mov     x0, #0      /* status := 0 */
        mov     w8, #93     /* exit is syscall #93 */
        svc     #0          /* invoke syscall */

