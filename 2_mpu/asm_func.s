.syntax unified

.global	read_sp
read_sp:
	//??????
	mov 	r0,sp
	bx 	lr
	ISB

.global	read_msp
read_msp:
	//??????
	mrs 	r0,msp
	bx 	lr
//	ISB

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
//	ISB


.global	start_user
start_user:
	//??????
	movs	lr,r0 //user_task
	msr	psp,r1 //psp_init

	movs	r3,#0b11
	msr	control,r3
	isb

	bx	lr


.global	sw_priv
sw_priv:
	//??????
	movs	r3,#0
	msr	control,r3
	isb
	bx	lr

