	.section .text
.LNDBG_TX:
# mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 16.0.0.109 Build 20150815";
# mark_description "";
# mark_description "-fopenmp -O3 -std=c++11 -qopt-report=5 -xCORE-AVX512 -S";
	.file "TestIntrinsic_implicit.cpp"
	.text
..TXTST0:
.L_2__routine_start__Z18implicitely_vectorPiS_S_Pfii_0:
# -- Begin  _Z18implicitely_vectorPiS_S_Pfii, L__Z18implicitely_vectorPiS_S_Pfii_9__par_loop0_2.0
	.text
# mark_begin;
       .align    16,0x90
	.globl _Z18implicitely_vectorPiS_S_Pfii
# --- implicitely_vector(node *, node *, node *, edgeweight *, int, int)
_Z18implicitely_vectorPiS_S_Pfii:
# parameter 1(pnt_outEdges): %rdi
# parameter 2(outEdges): %rsi
# parameter 3(zeta): %rdx
# parameter 4(pnt_affinity): %rcx
# parameter 5(_deg): %r8d
# parameter 6(iteration): %r9d
..B1.1:                         # Preds ..B1.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z18implicitely_vectorPiS_S_Pfii.1:
..L2:
                                                          #8.124
..LN0:
	.file   1 "TestIntrinsic_implicit.cpp"
	.loc    1  8  is_stmt 1
        pushq     %rbp                                          #8.124
	.cfi_def_cfa_offset 16
..LN1:
        movq      %rsp, %rbp                                    #8.124
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN2:
        andq      $-64, %rsp                                    #8.124
..LN3:
        subq      $128, %rsp                                    #8.124
..LN4:
        movq      %rdi, (%rsp)                                  #8.124
..LN5:
	.loc    1  9  is_stmt 1
        movl      $.2.3_2_kmpc_loc_struct_pack.12, %edi         #9.1
..LN6:
	.loc    1  8  is_stmt 1
        movq      %rbx, 80(%rsp)                                #8.124
..LN7:
        movq      %r15, 48(%rsp)                                #8.124
..LN8:
        movq      %r14, 56(%rsp)                                #8.124
..LN9:
        movq      %r13, 64(%rsp)                                #8.124
..LN10:
        movq      %r12, 72(%rsp)                                #8.124
..LN11:
        movq      %rdx, 8(%rsp)                                 #8.124
..LN12:
        movq      %rcx, 16(%rsp)                                #8.124
..LN13:
        movl      %r8d, 32(%rsp)                                #8.124
..LN14:
        movl      %r9d, 40(%rsp)                                #8.124
..LN15:
	.loc    1  9  is_stmt 1
        call      __kmpc_global_thread_num                      #9.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb0, 0xff, 0xff, 0xff, 0x22
..LN16:
                                # LOE eax
..B1.46:                        # Preds ..B1.1
..LN17:
        movl      %eax, 24(%rsp)                                #9.1
..LN18:
        movl      $.2.3_2_kmpc_loc_struct_pack.20, %edi         #9.1
..LN19:
        xorl      %eax, %eax                                    #9.1
..___tag_value__Z18implicitely_vectorPiS_S_Pfii.11:
..LN20:
        call      __kmpc_ok_to_fork                             #9.1
..___tag_value__Z18implicitely_vectorPiS_S_Pfii.12:
..LN21:
                                # LOE eax
..B1.2:                         # Preds ..B1.46
..LN22:
        testl     %eax, %eax                                    #9.1
..LN23:
        je        ..B1.4        # Prob 50%                      #9.1
..LN24:
                                # LOE
..B1.3:                         # Preds ..B1.2
..LN25:
        movl      $L__Z18implicitely_vectorPiS_S_Pfii_9__par_loop0_2.0, %edx #9.1
..LN26:
        lea       (%rsp), %rax                                  #9.1
..LN27:
        movl      $.2.3_2_kmpc_loc_struct_pack.20, %edi         #9.1
..LN28:
        lea       40(%rax), %rcx                                #9.1
..LN29:
        movl      $5, %esi                                      #9.1
..LN30:
        lea       32(%rax), %r8                                 #9.1
..LN31:
        lea       16(%rax), %r9                                 #9.1
..LN32:
        lea       8(%rax), %rbx                                 #9.1
..LN33:
        pushq     %rax                                          #9.1
..LN34:
        xorl      %eax, %eax                                    #9.1
..LN35:
        pushq     %rbx                                          #9.1
..___tag_value__Z18implicitely_vectorPiS_S_Pfii.13:
..LN36:
        call      __kmpc_fork_call                              #9.1
..___tag_value__Z18implicitely_vectorPiS_S_Pfii.14:
..LN37:
                                # LOE
..B1.47:                        # Preds ..B1.3
..LN38:
        addq      $16, %rsp                                     #9.1
..LN39:
        jmp       ..B1.7        # Prob 100%                     #9.1
..LN40:
                                # LOE
..B1.4:                         # Preds ..B1.2
..LN41:
        movl      $.2.3_2_kmpc_loc_struct_pack.20, %edi         #9.1
..LN42:
        xorl      %eax, %eax                                    #9.1
..LN43:
        movl      24(%rsp), %esi                                #9.1
..___tag_value__Z18implicitely_vectorPiS_S_Pfii.15:
..LN44:
        call      __kmpc_serialized_parallel                    #9.1
..___tag_value__Z18implicitely_vectorPiS_S_Pfii.16:
..LN45:
                                # LOE
..B1.5:                         # Preds ..B1.4
..LN46:
        addq      $-16, %rsp                                    #9.1
..LN47:
        movl      $___kmpv_zero_Z18implicitely_vectorPiS_S_Pfii_0, %esi #9.1
..LN48:
        lea       40(%rsp), %rdi                                #9.1
..LN49:
        lea       16(%rdi), %rdx                                #9.1
..LN50:
        lea       -8(%rdx), %rcx                                #9.1
..LN51:
        lea       -24(%rdx), %r8                                #9.1
..LN52:
        lea       -32(%rdx), %r9                                #9.1
..LN53:
        lea       16(%rsp), %rax                                #9.1
..LN54:
        movq      %rax, (%rsp)                                  #9.1
..___tag_value__Z18implicitely_vectorPiS_S_Pfii.17:
..LN55:
        call      L__Z18implicitely_vectorPiS_S_Pfii_9__par_loop0_2.0 #9.1
..___tag_value__Z18implicitely_vectorPiS_S_Pfii.18:
..LN56:
                                # LOE
..B1.48:                        # Preds ..B1.5
..LN57:
        addq      $16, %rsp                                     #9.1
..LN58:
                                # LOE
..B1.6:                         # Preds ..B1.48
..LN59:
        movl      $.2.3_2_kmpc_loc_struct_pack.20, %edi         #9.1
..LN60:
        xorl      %eax, %eax                                    #9.1
..LN61:
        movl      24(%rsp), %esi                                #9.1
..___tag_value__Z18implicitely_vectorPiS_S_Pfii.19:
..LN62:
        call      __kmpc_end_serialized_parallel                #9.1
..___tag_value__Z18implicitely_vectorPiS_S_Pfii.20:
..LN63:
                                # LOE
..B1.7:                         # Preds ..B1.6 ..B1.47
..LN64:
	.loc    1  16  is_stmt 1
        movq      48(%rsp), %r15                                #16.1
	.cfi_restore 15
..LN65:
        movq      56(%rsp), %r14                                #16.1
	.cfi_restore 14
..LN66:
        movq      64(%rsp), %r13                                #16.1
	.cfi_restore 13
..LN67:
        movq      72(%rsp), %r12                                #16.1
	.cfi_restore 12
..LN68:
        movq      80(%rsp), %rbx                                #16.1
	.cfi_restore 3
..LN69:
        movq      %rbp, %rsp                                    #16.1
..LN70:
        popq      %rbp                                          #16.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
..LN71:
        ret                                                     #16.1
	.cfi_def_cfa 6, 16
..LN72:
                                # LOE
L__Z18implicitely_vectorPiS_S_Pfii_9__par_loop0_2.0:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
# parameter 5: %r8
# parameter 6: %r9
# parameter 7: 16 + %rbp
..B1.8:                         # Preds ..B1.0
..LN73:
	.loc    1  9  is_stmt 1
        pushq     %rbp                                          #9.1
	.cfi_def_cfa 7, 16
..LN74:
        movq      %rsp, %rbp                                    #9.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN75:
        andq      $-64, %rsp                                    #9.1
..LN76:
        subq      $128, %rsp                                    #9.1
..LN77:
        movq      16(%rbp), %rax                                #9.1
..LN78:
        movq      %r12, 72(%rsp)                                #9.1
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc8, 0xff, 0xff, 0xff, 0x22
..LN79:
        movq      (%r8), %r12                                   #9.1
..LN80:
        movl      (%rdx), %r8d                                  #9.1
..LN81:
        movq      %rbx, 80(%rsp)                                #9.1
..LN82:
        movq      %r15, 48(%rsp)                                #9.1
..LN83:
        movq      %r14, 56(%rsp)                                #9.1
..LN84:
        movq      %r13, 64(%rsp)                                #9.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb0, 0xff, 0xff, 0xff, 0x22
..LN85:
        movl      (%rdi), %r15d                                 #9.1
..LN86:
        movq      (%rax), %r14                                  #9.1
..LN87:
        movq      (%r9), %rbx                                   #9.1
..LN88:
        movl      (%rcx), %r13d                                 #9.1
..LN89:
	.loc    1  10  is_stmt 1
        testl     %r8d, %r8d                                    #10.33
..LN90:
        jle       ..B1.36       # Prob 10%                      #10.33
..LN91:
                                # LOE rbx r12 r14 r8d r13d r15d
..B1.9:                         # Preds ..B1.8
..LN92:
	.loc    1  9  is_stmt 1
        xorl      %r10d, %r10d                                  #9.1
..LN93:
        decl      %r8d                                          #9.1
..LN94:
        movl      $1, %r11d                                     #9.1
..LN95:
        movl      $.2.3_2_kmpc_loc_struct_pack.20, %edi         #9.1
..LN96:
        movl      %r10d, 104(%rsp)                              #9.1
..LN97:
        movl      %r15d, %esi                                   #9.1
..LN98:
        movl      %r8d, 108(%rsp)                               #9.1
..LN99:
        movl      $36, %edx                                     #9.1
..LN100:
        movl      %r10d, 112(%rsp)                              #9.1
..LN101:
        xorl      %ecx, %ecx                                    #9.1
..LN102:
        movl      %r11d, 116(%rsp)                              #9.1
..LN103:
        addq      $-16, %rsp                                    #9.1
..LN104:
        movl      %r11d, %r9d                                   #9.1
..LN105:
        xorl      %eax, %eax                                    #9.1
..LN106:
        movl      %r11d, (%rsp)                                 #9.1
..___tag_value__Z18implicitely_vectorPiS_S_Pfii.38:
..LN107:
        call      __kmpc_dispatch_init_4                        #9.1
..___tag_value__Z18implicitely_vectorPiS_S_Pfii.39:
..LN108:
                                # LOE rbx r12 r14 r13d r15d
..B1.49:                        # Preds ..B1.9
..LN109:
        addq      $16, %rsp                                     #9.1
..LN110:
                                # LOE rbx r12 r14 r13d r15d
..B1.10:                        # Preds ..B1.49
..LN111:
	.loc    1  12  is_stmt 1
        movq      %r14, %rax                                    #12.5
..LN112:
        movl      %r13d, %edi                                   #12.5
..LN113:
        andq      $63, %rax                                     #12.5
..LN114:
        andl      $-32, %edi                                    #12.5
..LN115:
        movl      %eax, %r11d                                   #12.5
..LN116:
	.loc    1  9  is_stmt 1
        lea       112(%rsp), %rdx                               #9.1
..LN117:
	.loc    1  12  is_stmt 1
        movslq    %r13d, %r10                                   #12.5
..LN118:
        andl      $3, %r11d                                     #12.5
..LN119:
        vmovups   .L_2il0floatpacket.1(%rip), %zmm4             #12.5
..LN120:
	.loc    1  9  is_stmt 1
        lea       -4(%rdx), %r8                                 #9.1
..LN121:
	.loc    1  12  is_stmt 1
        vmovdqu32 .L_2il0floatpacket.4(%rip), %zmm3             #12.5
..LN122:
	.loc    1  13  is_stmt 1
        vmovups   .L_2il0floatpacket.3(%rip), %zmm0             #13.48
..LN123:
        vbroadcastss .L_2il0floatpacket.2(%rip), %zmm2          #13.48
..LN124:
	.loc    1  9  is_stmt 1
        movl      %eax, -104(%rdx)                              #9.1
..LN125:
        lea       4(%rdx), %r9                                  #9.1
..LN126:
        movl      %edi, -96(%rdx)                               #9.1
..LN127:
        movq      %r10, -24(%rdx)                               #9.1
..LN128:
        movl      %r11d, -16(%rdx)                              #9.1
..LN129:
        movq      %r12, -88(%rdx)                               #9.1
..LN130:
        xorl      %r12d, %r12d                                  #9.1
..LN131:
        movq      %rbx, -80(%rdx)                               #9.1
..LN132:
        movq      %r9, %rbx                                     #9.1
..LN133:
        movq      %r14, -72(%rdx)                               #9.1
..LN134:
        movq      %r8, %r14                                     #9.1
..LN135:
        movl      %r15d, (%rsp)                                 #9.1
..LN136:
        movq      %rdx, %r15                                    #9.1
..LN137:
	.loc    1  13  is_stmt 1
        vpxord    %zmm1, %zmm1, %zmm1                           #13.20
..LN138:
                                # LOE rbx r14 r15 r12d r13d
..B1.11:                        # Preds ..B1.51 ..B1.13 ..B1.40 ..B1.10
..LN139:
	.loc    1  9  is_stmt 1
        movl      $.2.3_2_kmpc_loc_struct_pack.20, %edi         #9.1
..LN140:
        movq      %r15, %rdx                                    #9.1
..LN141:
        movq      %r14, %r8                                     #9.1
..LN142:
        lea       104(%rsp), %rcx                               #9.1
..LN143:
        movq      %rbx, %r9                                     #9.1
..LN144:
        xorl      %eax, %eax                                    #9.1
..LN145:
        movl      (%rsp), %esi                                  #9.1
..LN146:
        vzeroupper                                              #9.1
..___tag_value__Z18implicitely_vectorPiS_S_Pfii.40:
..LN147:
        call      __kmpc_dispatch_next_4                        #9.1
..___tag_value__Z18implicitely_vectorPiS_S_Pfii.41:
..LN148:
                                # LOE rbx r14 r15 eax r12d r13d
..B1.12:                        # Preds ..B1.11
..LN149:
        movl      104(%rsp), %ecx                               #9.1
..LN150:
        testl     %eax, %eax                                    #9.1
..LN151:
        movl      108(%rsp), %eax                               #9.1
..LN152:
        je        ..B1.36       # Prob 50%                      #9.1
..LN153:
                                # LOE rbx r14 r15 eax ecx r12d r13d
..B1.13:                        # Preds ..B1.12
..LN154:
        subl      %ecx, %eax                                    #9.1
..LN155:
	.loc    1  10  is_stmt 1
        movl      %r12d, %ecx                                   #10.3
..LN156:
	.loc    1  9  is_stmt 1
        incl      %eax                                          #9.1
..LN157:
	.loc    1  12  is_stmt 1
        testl     %r13d, %r13d                                  #12.41
..LN158:
        jle       ..B1.11       # Prob 50%                      #12.41
..LN159:
                                # LOE rbx r14 r15 eax ecx r12d r13d
..B1.14:                        # Preds ..B1.13
..LN160:
        vmovups   .L_2il0floatpacket.3(%rip), %zmm0             #
..LN161:
        vmovdqu32 .L_2il0floatpacket.4(%rip), %zmm3             #
..LN162:
        vmovups   .L_2il0floatpacket.1(%rip), %zmm4             #
..LN163:
        vbroadcastss .L_2il0floatpacket.2(%rip), %zmm2          #
..LN164:
        movl      8(%rsp), %r11d                                #
..LN165:
        movl      16(%rsp), %r10d                               #
..LN166:
        movq      88(%rsp), %rsi                                #
..LN167:
        movq      24(%rsp), %rdi                                #
..LN168:
        movq      32(%rsp), %r8                                 #
..LN169:
        movq      40(%rsp), %r9                                 #
..LN170:
        vpxord    %zmm1, %zmm1, %zmm1                           #
..LN171:
                                # LOE rsi rdi r8 r9 eax ecx r10d r11d r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.15:                        # Preds ..B1.34 ..B1.31 ..B1.14
..LN172:
        cmpl      $2400, %r13d                                  #12.5
..LN173:
        jl        ..B1.42       # Prob 10%                      #12.5
..LN174:
                                # LOE rsi rdi r8 r9 eax ecx r10d r11d r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.16:                        # Preds ..B1.15
..LN175:
        movl      96(%rsp), %r15d                               #
..LN176:
                                # LOE rdi r8 r9 eax ecx r10d r11d r13d r15d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.17:                        # Preds ..B1.39 ..B1.16
..LN177:
        movl      %r11d, %edx                                   #12.5
..LN178:
        testl     %r11d, %r11d                                  #12.5
..LN179:
        je        ..B1.20       # Prob 50%                      #12.5
..LN180:
                                # LOE rdi r8 r9 eax edx ecx r10d r11d r13d r15d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.18:                        # Preds ..B1.17
..LN181:
        testl     %r15d, %r15d                                  #12.5
..LN182:
        jne       ..B1.41       # Prob 10%                      #12.5
..LN183:
                                # LOE rdi r8 r9 eax ecx r10d r11d r13d r15d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.19:                        # Preds ..B1.18
..LN184:
        movl      %r11d, %edx                                   #12.5
..LN185:
        negl      %edx                                          #12.5
..LN186:
        addl      $64, %edx                                     #12.5
..LN187:
        shrl      $2, %edx                                      #12.5
..LN188:
        cmpl      %edx, %r13d                                   #12.5
..LN189:
        cmovl     %r13d, %edx                                   #12.5
..LN190:
                                # LOE rdi r8 r9 eax edx ecx r10d r11d r13d r15d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.20:                        # Preds ..B1.19 ..B1.17
..LN191:
        movl      %r13d, %ebx                                   #12.5
..LN192:
        subl      %edx, %ebx                                    #12.5
..LN193:
        andl      $31, %ebx                                     #12.5
..LN194:
        negl      %ebx                                          #12.5
..LN195:
        addl      %r13d, %ebx                                   #12.5
..LN196:
        cmpl      $1, %edx                                      #12.5
..LN197:
        jb        ..B1.25       # Prob 50%                      #12.5
..LN198:
                                # LOE rdi r8 r9 eax edx ecx ebx r10d r11d r13d r15d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.22:                        # Preds ..B1.20
..LN199:
        xorl      %r14d, %r14d                                  #12.5
..LN200:
        vmovaps   %zmm3, %zmm6                                  #12.5
..LN201:
        xorl      %esi, %esi                                    #12.5
..LN202:
        vpbroadcastd %edx, %zmm5                                #12.5
..LN203:
        movslq    %edx, %r12                                    #12.5
..LN204:
                                # LOE rsi rdi r8 r9 r12 r14 eax edx ecx ebx r10d r11d r13d r15d zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6
..B1.23:                        # Preds ..B1.23 ..B1.22
..LN205:
        vpcmpd    $2, %zmm5, %zmm6, %k2                         #12.5
..LN206:
        addq      $16, %r14                                     #12.5
..LN207:
        vpaddd    %zmm4, %zmm6, %zmm6                           #12.5
..LN208:
	.loc    1  13  is_stmt 1
        vmovdqu32 (%rsi,%r9), %zmm7{%k2}{z}                     #13.25
..LN209:
        vmovaps   %zmm1, %zmm8                                  #13.20
..LN210:
	.loc    1  12  is_stmt 1
        addq      $64, %rsi                                     #12.5
..LN211:
	.loc    1  13  is_stmt 1
        kmovw     %k2, %k1                                      #13.20
..LN212:
        vgatherdps (%r8,%zmm7,4), %zmm8{%k1}                    #13.20
..LN213:
        vscatterdps %zmm2, (%rdi,%zmm8,4){%k2}                  #13.7
..LN214:
	.loc    1  12  is_stmt 1
        cmpq      %r12, %r14                                    #12.5
..LN215:
        jb        ..B1.23       # Prob 82%                      #12.5
..LN216:
                                # LOE rsi rdi r8 r9 r12 r14 eax edx ecx ebx r10d r11d r13d r15d zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6
..B1.24:                        # Preds ..B1.23
..LN217:
        cmpl      %edx, %r13d                                   #12.5
..LN218:
        je        ..B1.39       # Prob 10%                      #12.5
..LN219:
                                # LOE rdi r8 r9 eax edx ecx ebx r10d r11d r13d r15d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.25:                        # Preds ..B1.20 ..B1.24
..LN220:
        movq      88(%rsp), %rsi                                #
..LN221:
        xorl      %r12d, %r12d                                  #
..LN222:
                                # LOE rsi rdi r8 r9 eax edx ecx ebx r10d r11d r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.26:                        # Preds ..B1.25 ..B1.42
..LN223:
        lea       32(%rdx), %r14d                               #12.5
..LN224:
        cmpl      %r14d, %ebx                                   #12.5
..LN225:
        jl        ..B1.30       # Prob 50%                      #12.5
..LN226:
                                # LOE rsi rdi r8 r9 eax edx ecx ebx r10d r11d r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.27:                        # Preds ..B1.26
..LN227:
        movslq    %edx, %rdx                                    #12.5
..LN228:
        movslq    %ebx, %r14                                    #12.5
..LN229:
                                # LOE rdx rsi rdi r8 r9 r14 eax ecx ebx r10d r11d r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.28:                        # Preds ..B1.28 ..B1.27
..LN230:
	.loc    1  13  is_stmt 1
        vmovups   (%r9,%rdx,4), %zmm5                           #13.25
..LN231:
        vmovups   64(%r9,%rdx,4), %zmm7                         #13.25
..LN232:
        kxnorw    %k0, %k0, %k1                                 #13.20
..LN233:
        kxnorw    %k0, %k0, %k2                                 #13.7
..LN234:
        kxnorw    %k0, %k0, %k3                                 #13.20
..LN235:
        kxnorw    %k0, %k0, %k4                                 #13.7
..LN236:
	.loc    1  12  is_stmt 1
        addq      $32, %rdx                                     #12.5
..LN237:
        cmpq      %r14, %rdx                                    #12.5
..LN238:
	.loc    1  13  is_stmt 1
        vpxord    %zmm6, %zmm6, %zmm6                           #13.20
..LN239:
        vpxord    %zmm8, %zmm8, %zmm8                           #13.20
..LN240:
        vpgatherdd (%r8,%zmm5,4), %zmm6{%k1}                    #13.20
..LN241:
        vpgatherdd (%r8,%zmm7,4), %zmm8{%k3}                    #13.20
..LN242:
        vscatterdps %zmm0, (%rdi,%zmm6,4){%k2}                  #13.7
..LN243:
        vscatterdps %zmm0, (%rdi,%zmm8,4){%k4}                  #13.7
..LN244:
	.loc    1  12  is_stmt 1
        jb        ..B1.28       # Prob 82%                      #12.5
..LN245:
                                # LOE rdx rsi rdi r8 r9 r14 eax ecx ebx r10d r11d r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.30:                        # Preds ..B1.28 ..B1.26 ..B1.41
..LN246:
        lea       1(%rbx), %edx                                 #12.5
..LN247:
        cmpl      %edx, %r13d                                   #12.5
..LN248:
        jae       ..B1.32       # Prob 50%                      #12.5
..LN249:
                                # LOE rsi rdi r8 r9 eax ecx ebx r10d r11d r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.31:                        # Preds ..B1.30
..LN250:
	.loc    1  10  is_stmt 1
        incl      %ecx                                          #10.3
..LN251:
        cmpl      %eax, %ecx                                    #10.3
..LN252:
        jb        ..B1.15       # Prob 82%                      #10.3
..LN253:
        jmp       ..B1.51       # Prob 100%                     #10.3
..LN254:
                                # LOE rsi rdi r8 r9 eax ecx r10d r11d r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.32:                        # Preds ..B1.30
..LN255:
	.loc    1  12  is_stmt 1
        movl      %r13d, %r14d                                  #12.5
..LN256:
        xorl      %edx, %edx                                    #12.5
..LN257:
        subl      %ebx, %r14d                                   #12.5
..LN258:
	.loc    1  13  is_stmt 1
        movslq    %ebx, %rbx                                    #13.25
..LN259:
	.loc    1  12  is_stmt 1
        vmovaps   %zmm3, %zmm6                                  #12.5
..LN260:
        vpbroadcastd %r14d, %zmm5                               #12.5
..LN261:
        xorl      %r14d, %r14d                                  #12.5
..LN262:
	.loc    1  13  is_stmt 1
        lea       (%r9,%rbx,4), %r15                            #13.25
..LN263:
	.loc    1  12  is_stmt 1
        negq      %rbx                                          #12.5
..LN264:
        addq      %rsi, %rbx                                    #12.5
..LN265:
                                # LOE rdx rbx rsi rdi r8 r9 r14 r15 eax ecx r10d r11d r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6
..B1.33:                        # Preds ..B1.33 ..B1.32
..LN266:
        vpcmpd    $2, %zmm5, %zmm6, %k2                         #12.5
..LN267:
        addq      $16, %rdx                                     #12.5
..LN268:
        vpaddd    %zmm4, %zmm6, %zmm6                           #12.5
..LN269:
	.loc    1  13  is_stmt 1
        vmovdqu32 (%r14,%r15), %zmm7{%k2}{z}                    #13.25
..LN270:
        vmovaps   %zmm1, %zmm8                                  #13.20
..LN271:
	.loc    1  12  is_stmt 1
        addq      $64, %r14                                     #12.5
..LN272:
	.loc    1  13  is_stmt 1
        kmovw     %k2, %k1                                      #13.20
..LN273:
        vgatherdps (%r8,%zmm7,4), %zmm8{%k1}                    #13.20
..LN274:
        vscatterdps %zmm2, (%rdi,%zmm8,4){%k2}                  #13.7
..LN275:
	.loc    1  12  is_stmt 1
        cmpq      %rbx, %rdx                                    #12.5
..LN276:
        jb        ..B1.33       # Prob 82%                      #12.5
..LN277:
                                # LOE rdx rbx rsi rdi r8 r9 r14 r15 eax ecx r10d r11d r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6
..B1.34:                        # Preds ..B1.33
..LN278:
	.loc    1  10  is_stmt 1
        incl      %ecx                                          #10.3
..LN279:
        cmpl      %eax, %ecx                                    #10.3
..LN280:
        jb        ..B1.15       # Prob 82%                      #10.3
..LN281:
        jmp       ..B1.51       # Prob 100%                     #10.3
..LN282:
                                # LOE rsi rdi r8 r9 eax ecx r10d r11d r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.36:                        # Preds ..B1.12 ..B1.8
..LN283:
	.loc    1  9  is_stmt 1
        movq      48(%rsp), %r15                                #9.1
	.cfi_restore 15
..LN284:
        movq      56(%rsp), %r14                                #9.1
	.cfi_restore 14
..LN285:
        movq      64(%rsp), %r13                                #9.1
	.cfi_restore 13
..LN286:
        movq      72(%rsp), %r12                                #9.1
	.cfi_restore 12
..LN287:
        movq      80(%rsp), %rbx                                #9.1
	.cfi_restore 3
..LN288:
        movq      %rbp, %rsp                                    #9.1
..LN289:
        popq      %rbp                                          #9.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
..LN290:
        ret                                                     #9.1
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd0, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb0, 0xff, 0xff, 0xff, 0x22
..LN291:
                                # LOE
..B1.51:                        # Preds ..B1.31 ..B1.34
..LN292:
        lea       116(%rsp), %rbx                               #
..LN293:
        lea       108(%rsp), %r14                               #
..LN294:
        lea       112(%rsp), %r15                               #
..LN295:
        jmp       ..B1.11       # Prob 100%                     #
..LN296:
                                # LOE rbx r14 r15 r12d r13d
..B1.39:                        # Preds ..B1.24                 # Infreq
..LN297:
	.loc    1  10  is_stmt 1
        incl      %ecx                                          #10.3
..LN298:
        cmpl      %eax, %ecx                                    #10.3
..LN299:
        jb        ..B1.17       # Prob 82%                      #10.3
..LN300:
                                # LOE rdi r8 r9 eax ecx r10d r11d r13d r15d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.40:                        # Preds ..B1.39                 # Infreq
..LN301:
        xorl      %r12d, %r12d                                  #
..LN302:
        lea       116(%rsp), %rbx                               #
..LN303:
        lea       108(%rsp), %r14                               #
..LN304:
        lea       112(%rsp), %r15                               #
..LN305:
        jmp       ..B1.11       # Prob 100%                     #
..LN306:
                                # LOE rbx r14 r15 r12d r13d
..B1.41:                        # Preds ..B1.18                 # Infreq
..LN307:
        xorl      %r12d, %r12d                                  #
..LN308:
        movq      88(%rsp), %rsi                                #
..LN309:
	.loc    1  12  is_stmt 1
        movl      %r12d, %ebx                                   #12.5
..LN310:
        jmp       ..B1.30       # Prob 100%                     #12.5
..LN311:
                                # LOE rsi rdi r8 r9 eax ecx ebx r10d r11d r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.42:                        # Preds ..B1.15                 # Infreq
..LN312:
        movl      %r10d, %ebx                                   #12.5
..LN313:
        movl      %r12d, %edx                                   #12.5
..LN314:
        jmp       ..B1.26       # Prob 100%                     #12.5
        .align    16,0x90
	.cfi_endproc
..LN315:
                                # LOE rsi rdi r8 r9 eax edx ecx ebx r10d r11d r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..LN316:
# mark_end;
	.type	_Z18implicitely_vectorPiS_S_Pfii,@function
	.size	_Z18implicitely_vectorPiS_S_Pfii,.-_Z18implicitely_vectorPiS_S_Pfii
..LN_Z18implicitely_vectorPiS_S_Pfii.317:
.LN_Z18implicitely_vectorPiS_S_Pfii:
	.data
	.align 4
	.align 4
.2.3_2_kmpc_loc_struct_pack.12:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.3_2__kmpc_loc_pack.11
	.align 4
.2.3_2__kmpc_loc_pack.11:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	105
	.byte	109
	.byte	112
	.byte	108
	.byte	105
	.byte	99
	.byte	105
	.byte	116
	.byte	101
	.byte	108
	.byte	121
	.byte	95
	.byte	118
	.byte	101
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	59
	.byte	57
	.byte	59
	.byte	57
	.byte	59
	.byte	59
	.space 3, 0x00 	# pad
	.align 4
.2.3_2_kmpc_loc_struct_pack.20:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.3_2__kmpc_loc_pack.19
	.align 4
.2.3_2__kmpc_loc_pack.19:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	105
	.byte	109
	.byte	112
	.byte	108
	.byte	105
	.byte	99
	.byte	105
	.byte	116
	.byte	101
	.byte	108
	.byte	121
	.byte	95
	.byte	118
	.byte	101
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	59
	.byte	57
	.byte	59
	.byte	49
	.byte	53
	.byte	59
	.byte	59
	.data
# -- End  _Z18implicitely_vectorPiS_S_Pfii, L__Z18implicitely_vectorPiS_S_Pfii_9__par_loop0_2.0
	.bss
	.align 4
	.align 4
___kmpv_zero_Z18implicitely_vectorPiS_S_Pfii_0:
	.type	___kmpv_zero_Z18implicitely_vectorPiS_S_Pfii_0,@object
	.size	___kmpv_zero_Z18implicitely_vectorPiS_S_Pfii_0,4
	.space 4	# pad
	.section .rodata, "a"
	.align 64
	.align 64
.L_2il0floatpacket.1:
	.long	0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,64
	.align 64
.L_2il0floatpacket.3:
	.long	0xbf800000,0xbf800000,0xbf800000,0xbf800000,0xbf800000,0xbf800000,0xbf800000,0xbf800000,0xbf800000,0xbf800000,0xbf800000,0xbf800000,0xbf800000,0xbf800000,0xbf800000,0xbf800000
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,64
	.align 64
.L_2il0floatpacket.4:
	.long	0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008,0x00000009,0x0000000a,0x0000000b,0x0000000c,0x0000000d,0x0000000e,0x0000000f,0x00000010
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,64
	.align 4
.L_2il0floatpacket.2:
	.long	0xbf800000
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,4
	.data
	.section .note.GNU-stack, ""
# End
