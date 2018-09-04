move    $v0, $a0
addiu   $a3, $a0, 0xFEE
li      $v1, 0x20  # ' '
LOAD:00002984
loc_2984:                                # CODE XREF: Decode+6C↓j
sb      $v1, 0($v0)
addiu   $v0, 1
move    $s1, $zero
bne     $v0, $a3, loc_2984
nop
move    $v0, $zero
move    $a3, $zero
li      $v1, 0xFEE
LOAD:000029A0
loc_29A0:                                # CODE XREF: Decode+E0↓j
srl     $a3, 1
LOAD:000029A4
loc_29A4:                                # CODE XREF: Decode+15C↓j
andi    $t0, $a3, 0x100
andi    $t2, $a3, 1
bnez    $t0, loc_29CC
nop
addu    $a3, $s0, $v0
addiu   $v0, 1
sltu    $t0, $a1, $v0
lbu     $a3, 0($a3)
ori     $a3, 0xFF00
bnez    $t0, loc_2A84
nop
andi    $t2, $a3, 1
LOAD:000029CC
loc_29CC:                                # CODE XREF: Decode+88↑j
addu    $t1, $s0, $v0
addiu   $t0, $v0, 1
beqz    $t2, loc_2A08
nop
sltu    $t2, $a1, $t0
move    $v0, $t0
lbu     $t0, 0($t1)
addiu   $t1, $v1, 1
bnez    $t2, loc_2A84
nop
addu    $t2, $a2, $s1
addu    $v1, $a0, $v1
sb      $t0, 0($v1)
addiu   $s1, 1
sb      $t0, 0($t2)
andi    $v1, $t1, 0xFFF
b       loc_29A0
nop
# ---------------------------------------------------------------------------
LOAD:00002A08
loc_2A08:                                # CODE XREF: Decode+B0↑j
sltu    $t2, $a1, $t0
lbu     $t1, 0($t1)
addiu   $v0, 2
bnez    $t2, loc_2A84
nop
addu    $t0, $s0, $t0
sltu    $t2, $a1, $v0
lbu     $t0, 0($t0)
andi    $t4, $t0, 0xF0
bnez    $t2, loc_2A84
nop
sll     $t4, 4
andi    $t0, 0xF
or      $t4, $t1
addiu   $t3, $t0, 2
addu    $t1, $a2, $s1
move    $t0, $zero
LOAD:00002A44
loc_2A44:                                # CODE XREF: Decode+154↓j
addu    $t2, $t0, $t4
andi    $t2, 0xFFF
addu    $t2, $a0, $t2
lbu     $t2, 0($t2)
addiu   $t0, 1
addiu   $t6, $v1, 1
slt     $t5, $t3, $t0
addu    $v1, $a0, $v1
sb      $t2, 0($v1)
addiu   $s1, 1
sb      $t2, 0($t1)
andi    $v1, $t6, 0xFFF
addiu   $t1, 1
beqz    $t5, loc_2A44
nop
srl     $a3, 1
b       loc_29A4
nop
# ---------------------------------------------------------------------------
LOAD:00002A84
loc_2A84:
