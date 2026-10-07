.data
title:      .asciiz "\n===== Student Grade Calculator =====\n"
ask1:       .asciiz "Enter grade for Subject 1: "
ask2:       .asciiz "Enter grade for Subject 2: "
ask3:       .asciiz "Enter grade for Subject 3: "
sumMsg:     .asciiz "\nTotal = "
avgMsg:     .asciiz "\nAverage = "
gradeMsg:   .asciiz "\nFinal Grade = "
newline:    .asciiz "\n"

.text
.globl main

main:
    li $v0, 4
    la $a0, title
    syscall

    li $v0, 4
    la $a0, ask1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, ask2
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    li $v0, 4
    la $a0, ask3
    syscall

    li $v0, 5
    syscall
    move $t2, $v0

    add $t3, $t0, $t1
    add $t3, $t3, $t2

    li $v0, 4
    la $a0, sumMsg
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

    li $t4, 3
    div $t3, $t4
    mflo $t5

    li $v0, 4
    la $a0, avgMsg
    syscall

    li $v0, 1
    move $a0, $t5
    syscall

    li $t6, 90
    bge $t5, $t6, GradeA

    li $t6, 80
    bge $t5, $t6, GradeB

    li $t6, 70
    bge $t5, $t6, GradeC

    li $t6, 60
    bge $t5, $t6, GradeD

    j GradeF

GradeA:
    li $v0, 4
    la $a0, gradeMsg
    syscall

    li $a0, 'A'
    li $v0, 11
    syscall

    j Exit

GradeB:
    li $v0, 4
    la $a0, gradeMsg
    syscall

    li $a0, 'B'
    li $v0, 11
    syscall

    j Exit

GradeC:
    li $v0, 4
    la $a0, gradeMsg
    syscall

    li $a0, 'C'
    li $v0, 11
    syscall

    j Exit

GradeD:
    li $v0, 4
    la $a0, gradeMsg
    syscall

    li $a0, 'D'
    li $v0, 11
    syscall

    j Exit

GradeF:
    li $v0, 4
    la $a0, gradeMsg
    syscall

    li $a0, 'F'
    li $v0, 11
    syscall

Exit:
    li $v0, 4
    la $a0, newline
    syscall

    li $v0, 10
    syscall
