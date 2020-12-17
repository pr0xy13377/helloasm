section .text
msg db "Hello, World!", 0x0a
len equ $ - msg 
global _start

_start:
    mov eax, 4 ; sys_write
    mov ebx, 1 ; 1=stdout
    mov ecx, msg
    mov edx, len ;length
    int 0x80
