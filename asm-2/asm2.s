intel_syntax noprefix
.bits 32

.global blackbox

blackbox:
	push	ebp
	mov	ebp,esp
	cmp	DWORD PTR [ebp+0x8],0x98    
	jg 	part_a                      
	cmp	DWORD PTR [ebp+0x8],0x46     
	jne	part_b                     
	mov	eax,DWORD PTR [ebp+0x8]
	add	eax,0x3
	jmp	part_d
part_a:
	cmp	DWORD PTR [ebp+0x8],0x16
	jne	part_c
	mov	eax,DWORD PTR [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
part_b:
	mov	eax,DWORD PTR [ebp+0x8]  
	sub	eax,0x3                    
	jmp	part_d                     
	cmp	DWORD PTR [ebp+0x8],0xbc
	jne	part_c
	mov	eax,DWORD PTR [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
part_c:
	mov	eax,DWORD PTR [ebp+0x8]
	add	eax,0x3
part_d:
	pop	ebp                       
	ret

