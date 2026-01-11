section .text

global f
f:
    push ebp
    mov ebp, esp
    mov eax, [ebp + 8]

begin:
    mov cl, [eax]
    cmp cl, 0
    jz end

    add cl, 1
    mov [eax], cl
    inc eax
    jmp begin

end:
    mov esp, ebp
    pop ebp
    ret