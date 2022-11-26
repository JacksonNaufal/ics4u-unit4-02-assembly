
; --------------------------------------------------------------
; Writes "Hello, World!" to the console using only system calls.
; Runs on 64-bit x86 Linux only.
;
; By Jackson Naufal
; Version 1.0
; Since: 2022-11-22
; --------------------------------------------------------------

section .bss
    ; variables

section .data
    ; constants
    hello: db "Hello, World!", 10
    helloLen: equ $-hello

section .text
    global _start

    _start:
        mov rax,1
        mov rdi,1
        mov rsi,hello
        mov rdx,helloLen
        syscall

        mov rax,60
        mov rdi,0
        syscall
