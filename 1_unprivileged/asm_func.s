.syntax unified

.global	read_sp
read_sp:
	//??????
	mrs 	r0,sp
	bx 	lr
	ISB

.global	read_msp
read_msp:
	//??????
	mrs 	r0,msp
	bx 	lr
	ISB

.global	read_psp
read_psp:
	//??????
//	mov	r4,#1
//	msr 	spsel,r4
	mrs 	r0,psp
	bx 	lr
	ISB

.global	read_ctrl
read_ctrl:
	//??????
//	mrs	r0,ctrl
	mrs	r0,control
	bx	lr
	ISB


.global	start_user
start_user:
	//??????
	movs	lr,r0
	msr	psp,r1

	movs	r3,#0b11
	msr	control,r3
	isb

	bx	lr


.global	sw_priv
sw_priv:
	//??????
	movs	r3,#0b10
	msr	control,r3
