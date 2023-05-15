/* Data segment: define our message string and calculate its length. */

msg:

    .ascii        "Hello, ARM64! Written by Yiiln.\n"

len = . - msg

.text

/* Our application's entry point. */

.globl _start

_start:

    /* syscall write(int fd, const void *buf, size_t count) */

	mov     r0, r0 
	mov     r1, r1
	add     r0, r0,#0
	add     r0, r0,#1
	cmp     r0, #0
	cmp     r0, #1
	cmp     r0, r1
	mov     r0, #1      /* fd := STDOUT_FILENO */
	ldr     r1, =msg    /* buf := msg */
	ldr     r2, =len    /* count := len */
	mov     r8, #64     /* write is syscall #64 */
	svc     #0          /* invoke syscall */

    /* syscall exit(int status) */
	mov     r0, #0      /* status := 0 */
	mov     r8, #93     /* exit is syscall #93 */
	svc     #0          /* invoke syscall */

