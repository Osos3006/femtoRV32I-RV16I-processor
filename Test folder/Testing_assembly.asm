.data


.globl main
.text 

main:
	lui x1 , 12
	auipc x2,10
	jal x3, jum
	nop 
	nop
	jum:jalr x4 , x3 , 2
	nop 
	nop 
	jumr:li x3 , 2
	li x4 , 2
	beq x4 , x3 , happy
	
	
	
	
	nothappy:
	
	lw x1,0(x0)
	lb x2, 0(x0)
	lbu x3, 0(x0)
	lh  x4, 0(x0)
	lhu x5, 0(x0)
	
	sw x1,12(x0)
	sb x1, 15(x0)
	sh x1,17(x0)
	
	happy: addi x3,x0,4
	bne  x4,x3, nothappy
	
	
	xori  x6,x4, 1
	ori  x6,x4,1
	
	
	addi x1,x0,5
	addi x2,x0,1
	bge  x1,x2, happy
	
	label1:
	addi x4,x0,6 
	slti x6,x4, 12
	sltiu x6,x4,12
	bge x1,x2, label2
	
	label2: 
	andi  x5,x4,0
	blt   x5, x4, label3
	
	label3:
	addi x4,x0,-2
	bltu x0,x4, label4
	
	label4: 
	
	bgeu x4,x0, label5
	
	label5:
	jal x1, label4
	
	label6:
	
	jalr x2,x1, -24
	
	 label7: 
	 
	 ebreak 
	 
	
	
	
	
	
	
	
			
	li a7, 10	#exit the program
	ecall
	 
	fence.i
