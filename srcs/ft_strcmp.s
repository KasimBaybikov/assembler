global	_ft_strcmp

section	.text
_ft_strcmp:
	mov		rax, 0
	mov		rdx, 0
.loop:
	mov		al, [rdi]
	mov		dl, [rsi]
	cmp		al, 0
	jz		.return
	cmp		dl, 0
	jz		.return
	cmp		al, dl
	jnz		.return
	inc		rdi
	inc		rsi
	jmp		.loop
.return:
	sub		rax, rdx ; rax = rax - rdx
	ret
