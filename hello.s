.global _start
.align 2

_start:
	b _printf
	b _terminate

_printf:
	mov x0, #1 ;stdout
	adr x1, helloworld
	mov x2, #12 ;length of hello world string
	mov x16, #4 ;write to stdout
	svc 0 ;syscall

_terminate:
	mov x0, #0 ;return 0
	mov x16, #1 ;syscall number for exit
	svc 0 ;supervisor call to allow app code to call the os

//hello world string
helloworld:
	.ascii "hello world\n"
