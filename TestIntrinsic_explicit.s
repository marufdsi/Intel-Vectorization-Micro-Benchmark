	.section .text
.LNDBG_TX:
# mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 16.0.0.109 Build 20150815";
# mark_description "";
# mark_description "-fopenmp -O3 -std=c++11 -qopt-report=5 -xCORE-AVX512 -S";
	.file "TestIntrinsic_explicit.cpp"
	.text
..TXTST0:
.L_2__routine_start__Z22explicitely_vectorizedPiS_S_Pfii_0:
# -- Begin  _Z22explicitely_vectorizedPiS_S_Pfii, L__Z22explicitely_vectorizedPiS_S_Pfii_16__par_loop0_2.0
	.text
# mark_begin;
       .align    16,0x90
	.globl _Z22explicitely_vectorizedPiS_S_Pfii
# --- explicitely_vectorized(node *, node *, node *, edgeweight *, int, int)
_Z22explicitely_vectorizedPiS_S_Pfii:
# parameter 1(pnt_outEdges): %rdi
# parameter 2(outEdges): %rsi
# parameter 3(zeta): %rdx
# parameter 4(pnt_affinity): %rcx
# parameter 5(_deg): %r8d
# parameter 6(iteration): %r9d
..B1.1:                         # Preds ..B1.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z22explicitely_vectorizedPiS_S_Pfii.1:
..L2:
                                                          #12.132
..LN0:
	.file   1 "TestIntrinsic_explicit.cpp"
	.loc    1  12  is_stmt 1
        pushq     %rbp                                          #12.132
	.cfi_def_cfa_offset 16
..LN1:
        movq      %rsp, %rbp                                    #12.132
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN2:
        andq      $-64, %rsp                                    #12.132
..LN3:
        subq      $256, %rsp                                    #12.132
..LN4:
	.loc    1  13  is_stmt 1
        movl      %r8d, %eax                                    #13.36
..LN5:
        sarl      $3, %eax                                      #13.36
..LN6:
	.loc    1  14  is_stmt 1
        vbroadcastss .L_2il0floatpacket.1(%rip), %zmm0          #14.26
..LN7:
	.loc    1  13  is_stmt 1
        shrl      $28, %eax                                     #13.36
..LN8:
        addl      %r8d, %eax                                    #13.36
..LN9:
	.loc    1  12  is_stmt 1
        movq      %rdi, 64(%rsp)                                #12.132
..LN10:
	.loc    1  16  is_stmt 1
        movl      $.2.3_2_kmpc_loc_struct_pack.12, %edi         #16.1
..LN11:
	.loc    1  14  is_stmt 1
        vmovups   %zmm0, (%rsp)                                 #14.24
..LN12:
	.loc    1  13  is_stmt 1
        andl      $-16, %eax                                    #13.40
..LN13:
	.loc    1  12  is_stmt 1
        movq      %rbx, 160(%rsp)                               #12.132
..LN14:
        movq      %r15, 128(%rsp)                               #12.132
..LN15:
        movq      %r14, 136(%rsp)                               #12.132
..LN16:
        movq      %r13, 144(%rsp)                               #12.132
..LN17:
        movq      %r12, 152(%rsp)                               #12.132
..LN18:
        movq      %rdx, 72(%rsp)                                #12.132
..LN19:
        movq      %rcx, 80(%rsp)                                #12.132
..LN20:
        movl      %r8d, 96(%rsp)                                #12.132
..LN21:
        movl      %r9d, 104(%rsp)                               #12.132
..LN22:
	.loc    1  13  is_stmt 1
        movl      %eax, 88(%rsp)                                #13.28
..LN23:
	.loc    1  16  is_stmt 1
        vzeroupper                                              #16.1
..LN24:
        call      __kmpc_global_thread_num                      #16.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x98, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x90, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x88, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x22
..LN25:
                                # LOE eax
..B1.37:                        # Preds ..B1.1
..LN26:
        movl      %eax, 92(%rsp)                                #16.1
..LN27:
        movl      $.2.3_2_kmpc_loc_struct_pack.20, %edi         #16.1
..LN28:
        xorl      %eax, %eax                                    #16.1
..___tag_value__Z22explicitely_vectorizedPiS_S_Pfii.11:
..LN29:
        call      __kmpc_ok_to_fork                             #16.1
..___tag_value__Z22explicitely_vectorizedPiS_S_Pfii.12:
..LN30:
                                # LOE eax
..B1.2:                         # Preds ..B1.37
..LN31:
        testl     %eax, %eax                                    #16.1
..LN32:
        je        ..B1.4        # Prob 50%                      #16.1
..LN33:
                                # LOE
..B1.3:                         # Preds ..B1.2
..LN34:
        movl      $L__Z22explicitely_vectorizedPiS_S_Pfii_16__par_loop0_2.0, %edx #16.1
..LN35:
        lea       96(%rsp), %rax                                #16.1
..LN36:
        movl      $.2.3_2_kmpc_loc_struct_pack.20, %edi         #16.1
..LN37:
        lea       (%rsp), %rbx                                  #16.1
..LN38:
        movl      $7, %esi                                      #16.1
..LN39:
        lea       8(%rax), %rcx                                 #16.1
..LN40:
        lea       -8(%rax), %r8                                 #16.1
..LN41:
        lea       -32(%rax), %r9                                #16.1
..LN42:
        lea       -24(%rax), %r11                               #16.1
..LN43:
        lea       -16(%rax), %r10                               #16.1
..LN44:
        pushq     %rax                                          #16.1
..LN45:
        pushq     %rbx                                          #16.1
..LN46:
        pushq     %r10                                          #16.1
..LN47:
        xorl      %eax, %eax                                    #16.1
..LN48:
        pushq     %r11                                          #16.1
..___tag_value__Z22explicitely_vectorizedPiS_S_Pfii.13:
..LN49:
        call      __kmpc_fork_call                              #16.1
..___tag_value__Z22explicitely_vectorizedPiS_S_Pfii.14:
..LN50:
                                # LOE
..B1.38:                        # Preds ..B1.3
..LN51:
        addq      $32, %rsp                                     #16.1
..LN52:
        jmp       ..B1.7        # Prob 100%                     #16.1
..LN53:
                                # LOE
..B1.4:                         # Preds ..B1.2
..LN54:
        movl      $.2.3_2_kmpc_loc_struct_pack.20, %edi         #16.1
..LN55:
        xorl      %eax, %eax                                    #16.1
..LN56:
        movl      92(%rsp), %esi                                #16.1
..___tag_value__Z22explicitely_vectorizedPiS_S_Pfii.15:
..LN57:
        call      __kmpc_serialized_parallel                    #16.1
..___tag_value__Z22explicitely_vectorizedPiS_S_Pfii.16:
..LN58:
                                # LOE
..B1.5:                         # Preds ..B1.4
..LN59:
        addq      $-32, %rsp                                    #16.1
..LN60:
        movl      $___kmpv_zero_Z22explicitely_vectorizedPiS_S_Pfii_0, %esi #16.1
..LN61:
        lea       124(%rsp), %rdi                               #16.1
..LN62:
        lea       12(%rdi), %rdx                                #16.1
..LN63:
        lea       -16(%rdx), %rcx                               #16.1
..LN64:
        lea       -40(%rdx), %r8                                #16.1
..LN65:
        lea       -32(%rdx), %r9                                #16.1
..LN66:
        lea       -24(%rdx), %rax                               #16.1
..LN67:
        movq      %rax, (%rsp)                                  #16.1
..LN68:
        lea       32(%rsp), %rbx                                #16.1
..LN69:
        movq      %rbx, 8(%rsp)                                 #16.1
..LN70:
        lea       16(%rax), %r10                                #16.1
..LN71:
        movq      %r10, 16(%rsp)                                #16.1
..___tag_value__Z22explicitely_vectorizedPiS_S_Pfii.17:
..LN72:
        call      L__Z22explicitely_vectorizedPiS_S_Pfii_16__par_loop0_2.0 #16.1
..___tag_value__Z22explicitely_vectorizedPiS_S_Pfii.18:
..LN73:
                                # LOE
..B1.39:                        # Preds ..B1.5
..LN74:
        addq      $32, %rsp                                     #16.1
..LN75:
                                # LOE
..B1.6:                         # Preds ..B1.39
..LN76:
        movl      $.2.3_2_kmpc_loc_struct_pack.20, %edi         #16.1
..LN77:
        xorl      %eax, %eax                                    #16.1
..LN78:
        movl      92(%rsp), %esi                                #16.1
..___tag_value__Z22explicitely_vectorizedPiS_S_Pfii.19:
..LN79:
        call      __kmpc_end_serialized_parallel                #16.1
..___tag_value__Z22explicitely_vectorizedPiS_S_Pfii.20:
..LN80:
                                # LOE
..B1.7:                         # Preds ..B1.38 ..B1.6
..LN81:
	.loc    1  31  is_stmt 1
        movq      128(%rsp), %r15                               #31.1
	.cfi_restore 15
..LN82:
        movq      136(%rsp), %r14                               #31.1
	.cfi_restore 14
..LN83:
        movq      144(%rsp), %r13                               #31.1
	.cfi_restore 13
..LN84:
        movq      152(%rsp), %r12                               #31.1
	.cfi_restore 12
..LN85:
        movq      160(%rsp), %rbx                               #31.1
	.cfi_restore 3
..LN86:
        movq      %rbp, %rsp                                    #31.1
..LN87:
        popq      %rbp                                          #31.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
..LN88:
        ret                                                     #31.1
	.cfi_def_cfa 6, 16
..LN89:
                                # LOE
L__Z22explicitely_vectorizedPiS_S_Pfii_16__par_loop0_2.0:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
# parameter 5: %r8
# parameter 6: %r9
# parameter 7: 16 + %rbp
# parameter 8: 24 + %rbp
# parameter 9: 32 + %rbp
..B1.8:                         # Preds ..B1.0
..LN90:
	.loc    1  16  is_stmt 1
        pushq     %rbp                                          #16.1
	.cfi_def_cfa 7, 16
..LN91:
        movq      %rsp, %rbp                                    #16.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN92:
        andq      $-64, %rsp                                    #16.1
..LN93:
        subq      $256, %rsp                                    #16.1
..LN94:
        movq      24(%rbp), %r11                                #16.1
..LN95:
        movq      32(%rbp), %rax                                #16.1
..LN96:
        movq      %r12, 152(%rsp)                               #16.1
..LN97:
        vmovups   (%r11), %zmm0                                 #16.1
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x98, 0xff, 0xff, 0xff, 0x22
..LN98:
        movq      16(%rbp), %r12                                #16.1
..LN99:
        movl      (%rax), %r10d                                 #16.1
..LN100:
        movq      (%r9), %rax                                   #16.1
..LN101:
        movq      %rbx, 160(%rsp)                               #16.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa0, 0xff, 0xff, 0xff, 0x22
..LN102:
        movq      (%r8), %rbx                                   #16.1
..LN103:
        movq      %r14, 136(%rsp)                               #16.1
..LN104:
        movl      (%rdx), %r8d                                  #16.1
..LN105:
        movq      %r13, 144(%rsp)                               #16.1
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x90, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x88, 0xff, 0xff, 0xff, 0x22
..LN106:
        movl      (%rcx), %r14d                                 #16.1
..LN107:
        movq      %r15, 128(%rsp)                               #16.1
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x22
..LN108:
        movl      (%rdi), %r13d                                 #16.1
..LN109:
        movl      %r10d, 184(%rsp)                              #16.1
..LN110:
        vmovups   %zmm0, 64(%rsp)                               #16.1
..LN111:
        movq      (%r12), %r12                                  #16.1
..LN112:
        movq      %rax, 168(%rsp)                               #16.1
..LN113:
        movslq    %r14d, %r15                                   #16.1
..LN114:
	.loc    1  17  is_stmt 1
        testl     %r8d, %r8d                                    #17.33
..LN115:
        jle       ..B1.14       # Prob 10%                      #17.33
..LN116:
                                # LOE rbx r12 r15 r8d r13d r14d xmm0 ymm0 zmm0
..B1.9:                         # Preds ..B1.8
..LN117:
	.loc    1  16  is_stmt 1
        xorl      %r10d, %r10d                                  #16.1
..LN118:
        decl      %r8d                                          #16.1
..LN119:
        movl      $1, %r11d                                     #16.1
..LN120:
        movl      $.2.3_2_kmpc_loc_struct_pack.20, %edi         #16.1
..LN121:
        movl      %r10d, 192(%rsp)                              #16.1
..LN122:
        movl      %r13d, %esi                                   #16.1
..LN123:
        movl      %r8d, 196(%rsp)                               #16.1
..LN124:
        movl      $36, %edx                                     #16.1
..LN125:
        movl      %r10d, 200(%rsp)                              #16.1
..LN126:
        xorl      %ecx, %ecx                                    #16.1
..LN127:
        movl      %r11d, 204(%rsp)                              #16.1
..LN128:
        addq      $-16, %rsp                                    #16.1
..LN129:
        movl      %r11d, %r9d                                   #16.1
..LN130:
        xorl      %eax, %eax                                    #16.1
..LN131:
        vzeroupper                                              #16.1
..LN132:
        movl      %r11d, (%rsp)                                 #16.1
..___tag_value__Z22explicitely_vectorizedPiS_S_Pfii.38:
..LN133:
        call      __kmpc_dispatch_init_4                        #16.1
..___tag_value__Z22explicitely_vectorizedPiS_S_Pfii.39:
..LN134:
                                # LOE rbx r12 r15 r13d r14d
..B1.40:                        # Preds ..B1.9
..LN135:
        addq      $16, %rsp                                     #16.1
..LN136:
                                # LOE rbx r12 r15 r13d r14d
..B1.10:                        # Preds ..B1.40
..LN137:
	.loc    1  27  is_stmt 1
        movl      184(%rsp), %esi                               #27.5
..LN138:
	.loc    1  16  is_stmt 1
        lea       15(%r15), %rax                                #16.1
..LN139:
        sarq      $3, %rax                                      #16.1
..LN140:
	.loc    1  27  is_stmt 1
        subl      %r14d, %esi                                   #27.5
..LN141:
	.loc    1  16  is_stmt 1
        shrq      $60, %rax                                     #16.1
..LN142:
	.loc    1  27  is_stmt 1
        movl      %esi, %r11d                                   #27.5
..LN143:
        shrl      $31, %r11d                                    #27.5
..LN144:
	.loc    1  28  is_stmt 1
        lea       (%rbx,%r15,4), %r10                           #28.25
..LN145:
	.loc    1  27  is_stmt 1
        addl      %esi, %r11d                                   #27.5
..LN146:
	.loc    1  16  is_stmt 1
        lea       192(%rsp), %rcx                               #16.1
..LN147:
	.loc    1  27  is_stmt 1
        sarl      $1, %r11d                                     #27.5
..LN148:
	.loc    1  16  is_stmt 1
        lea       4(%rcx), %r8                                  #16.1
..LN149:
        movq      %r10, 8(%rsp)                                 #16.1
..LN150:
        lea       15(%r15,%rax), %rdi                           #16.1
..LN151:
        sarq      $4, %rdi                                      #16.1
..LN152:
        lea       12(%rcx), %r15                                #16.1
..LN153:
	.loc    1  19  is_stmt 1
        movq      %rdi, %rdx                                    #19.5
..LN154:
	.loc    1  16  is_stmt 1
        movl      %edi, %eax                                    #16.1
..LN155:
	.loc    1  19  is_stmt 1
        shrq      $63, %rdx                                     #19.5
..LN156:
        addq      %rdx, %rdi                                    #19.5
..LN157:
	.loc    1  16  is_stmt 1
        lea       8(%rcx), %rdx                                 #16.1
..LN158:
	.loc    1  19  is_stmt 1
        shrq      $1, %rdi                                      #19.5
..LN159:
	.loc    1  16  is_stmt 1
        movl      %r11d, 16(%rsp)                               #16.1
..LN160:
        movl      %esi, 24(%rsp)                                #16.1
..LN161:
        movl      %edi, 32(%rsp)                                #16.1
..LN162:
        movl      %eax, 40(%rsp)                                #16.1
..LN163:
        movl      %r14d, 48(%rsp)                               #16.1
..LN164:
        xorl      %r14d, %r14d                                  #16.1
..LN165:
        movq      %rbx, -24(%rdx)                               #16.1
..LN166:
        movq      %r8, %rbx                                     #16.1
..LN167:
        movq      %r12, 56(%rsp)                                #16.1
..LN168:
        movq      %rcx, %r12                                    #16.1
..LN169:
        movl      %r13d, (%rsp)                                 #16.1
..LN170:
        movq      %rdx, %r13                                    #16.1
..LN171:
        jmp       ..B1.11       # Prob 100%                     #16.1
..LN172:
                                # LOE rbx r12 r13 r15 r14d
..B1.33:                        # Preds ..B1.32
..LN173:
        xorl      %r14d, %r14d                                  #
..LN174:
        lea       204(%rsp), %r15                               #
..LN175:
        lea       196(%rsp), %rbx                               #
..LN176:
        lea       192(%rsp), %r12                               #
..LN177:
        lea       200(%rsp), %r13                               #
..LN178:
                                # LOE rbx r12 r13 r15 r14d
..B1.11:                        # Preds ..B1.33 ..B1.10
..LN179:
        movl      $.2.3_2_kmpc_loc_struct_pack.20, %edi         #16.1
..LN180:
        movq      %r13, %rdx                                    #16.1
..LN181:
        movq      %r12, %rcx                                    #16.1
..LN182:
        movq      %rbx, %r8                                     #16.1
..LN183:
        movq      %r15, %r9                                     #16.1
..LN184:
        xorl      %eax, %eax                                    #16.1
..LN185:
        movl      (%rsp), %esi                                  #16.1
..LN186:
        vzeroupper                                              #16.1
..___tag_value__Z22explicitely_vectorizedPiS_S_Pfii.40:
..LN187:
        call      __kmpc_dispatch_next_4                        #16.1
..___tag_value__Z22explicitely_vectorizedPiS_S_Pfii.41:
..LN188:
                                # LOE rbx r12 r13 r15 eax r14d
..B1.12:                        # Preds ..B1.11
..LN189:
        movl      192(%rsp), %esi                               #16.1
..LN190:
        testl     %eax, %eax                                    #16.1
..LN191:
        movl      196(%rsp), %eax                               #16.1
..LN192:
        jne       ..B1.15       # Prob 50%                      #16.1
..LN193:
                                # LOE rbx r12 r13 r15 eax esi r14d
..B1.14:                        # Preds ..B1.12 ..B1.8
..LN194:
        vzeroupper                                              #16.1
..LN195:
        movq      128(%rsp), %r15                               #16.1
	.cfi_restore 15
..LN196:
        movq      136(%rsp), %r14                               #16.1
	.cfi_restore 14
..LN197:
        movq      144(%rsp), %r13                               #16.1
	.cfi_restore 13
..LN198:
        movq      152(%rsp), %r12                               #16.1
	.cfi_restore 12
..LN199:
        movq      160(%rsp), %rbx                               #16.1
	.cfi_restore 3
..LN200:
        movq      %rbp, %rsp                                    #16.1
..LN201:
        popq      %rbp                                          #16.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
..LN202:
        ret                                                     #16.1
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa0, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x98, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x90, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x88, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x22
..LN203:
                                # LOE
..B1.15:                        # Preds ..B1.12
..LN204:
        subl      %esi, %eax                                    #16.1
..LN205:
	.loc    1  17  is_stmt 1
        movl      %r14d, %esi                                   #17.3
..LN206:
        vmovups   64(%rsp), %zmm0                               #17.3
..LN207:
	.loc    1  16  is_stmt 1
        incl      %eax                                          #16.1
..LN208:
	.loc    1  17  is_stmt 1
        movq      8(%rsp), %r9                                  #17.3
..LN209:
        movl      16(%rsp), %r8d                                #17.3
..LN210:
        movl      24(%rsp), %r10d                               #17.3
..LN211:
        movl      32(%rsp), %r11d                               #17.3
..LN212:
        movl      40(%rsp), %edi                                #17.3
..LN213:
        movl      48(%rsp), %ebx                                #17.3
..LN214:
        movq      176(%rsp), %rdx                               #17.3
..LN215:
        movq      168(%rsp), %r12                               #17.3
..LN216:
        movq      56(%rsp), %r13                                #17.3
..LN217:
                                # LOE rdx r9 r12 r13 eax ebx esi edi r8d r10d r11d zmm0
..B1.16:                        # Preds ..B1.32 ..B1.15
..LN218:
	.loc    1  19  is_stmt 1
        testl     %ebx, %ebx                                    #19.22
..LN219:
        jle       ..B1.25       # Prob 50%                      #19.22
..LN220:
                                # LOE rdx r9 r12 r13 eax ebx esi edi r8d r10d r11d zmm0
..B1.17:                        # Preds ..B1.16
..LN221:
        movl      $1, %ecx                                      #19.5
..LN222:
                                # LOE rdx r9 r12 r13 eax ecx ebx esi edi r8d r10d r11d zmm0
..B1.19:                        # Preds ..B1.17
..LN223:
        xorl      %r14d, %r14d                                  #19.5
..LN224:
	.loc    1  22  is_stmt 1
        xorl      %r15d, %r15d                                  #22.23
..LN225:
	.loc    1  19  is_stmt 1
        testl     %r11d, %r11d                                  #19.5
..LN226:
        jbe       ..B1.23       # Prob 10%                      #19.5
        .align    16,0x90
..LN227:
                                # LOE rdx r9 r12 r13 eax ecx ebx esi edi r8d r10d r11d r14d r15d zmm0
..B1.21:                        # Preds ..B1.19 ..B1.21
..LN228:
	.loc    1  20  is_stmt 1
        movslq    %r15d, %r15                                   #20.55
..LN229:
	.loc    1  19  is_stmt 1
        incl      %r14d                                         #19.5
..LN230:
	.loc    1  22  is_stmt 1
        kxnorw    %k0, %k0, %k1                                 #22.23
..LN231:
	.loc    1  24  is_stmt 1
        kxnorw    %k0, %k0, %k2                                 #24.7
..LN232:
	.loc    1  22  is_stmt 1
        kxnorw    %k0, %k0, %k3                                 #22.23
..LN233:
	.loc    1  24  is_stmt 1
        kxnorw    %k0, %k0, %k4                                 #24.7
..LN234:
	.loc    1  22  is_stmt 1
        vmovups   (%rdx,%r15,4), %zmm1                          #22.23
..LN235:
        vpxord    %zmm2, %zmm2, %zmm2                           #22.23
..LN236:
        vpxord    %zmm4, %zmm4, %zmm4                           #22.23
..LN237:
        vpgatherdd (%r12,%zmm1,4), %zmm2{%k1}                   #22.23
..LN238:
	.loc    1  24  is_stmt 1
        vscatterdps %zmm0, (%r13,%zmm2,4){%k2}                  #24.7
..LN239:
	.loc    1  22  is_stmt 1
        vmovups   64(%rdx,%r15,4), %zmm3                        #22.23
..LN240:
	.loc    1  19  is_stmt 1
        addl      $32, %r15d                                    #19.5
..LN241:
        cmpl      %r11d, %r14d                                  #19.5
..LN242:
	.loc    1  22  is_stmt 1
        vpgatherdd (%r12,%zmm3,4), %zmm4{%k3}                   #22.23
..LN243:
	.loc    1  24  is_stmt 1
        vscatterdps %zmm0, (%r13,%zmm4,4){%k4}                  #24.7
..LN244:
	.loc    1  19  is_stmt 1
        jb        ..B1.21       # Prob 64%                      #19.5
..LN245:
                                # LOE rdx r9 r12 r13 eax ebx esi edi r8d r10d r11d r14d r15d zmm0
..B1.22:                        # Preds ..B1.21
..LN246:
	.loc    1  22  is_stmt 1
        lea       1(%r14,%r14), %ecx                            #22.23
..LN247:
                                # LOE rdx r9 r12 r13 eax ecx ebx esi edi r8d r10d r11d zmm0
..B1.23:                        # Preds ..B1.22 ..B1.19
..LN248:
	.loc    1  19  is_stmt 1
        lea       -1(%rcx), %r14d                               #19.5
..LN249:
        cmpl      %r14d, %edi                                   #19.5
..LN250:
        jbe       ..B1.25       # Prob 10%                      #19.5
..LN251:
                                # LOE rdx r9 r12 r13 eax ecx ebx esi edi r8d r10d r11d zmm0
..B1.24:                        # Preds ..B1.23
..LN252:
	.loc    1  22  is_stmt 1
        shll      $4, %ecx                                      #22.23
..LN253:
        movslq    %ecx, %rcx                                    #22.23
..LN254:
        kxnorw    %k1, %k1, %k1                                 #22.23
..LN255:
	.loc    1  24  is_stmt 1
        kxnorw    %k2, %k2, %k2                                 #24.7
..LN256:
	.loc    1  22  is_stmt 1
        vmovups   -64(%rdx,%rcx,4), %zmm1                       #22.23
..LN257:
        vpxord    %zmm2, %zmm2, %zmm2                           #22.23
..LN258:
        vpgatherdd (%r12,%zmm1,4), %zmm2{%k1}                   #22.23
..LN259:
	.loc    1  24  is_stmt 1
        vscatterdps %zmm0, (%r13,%zmm2,4){%k2}                  #24.7
..LN260:
                                # LOE rdx r9 r12 r13 eax ebx esi edi r8d r10d r11d zmm0
..B1.25:                        # Preds ..B1.24 ..B1.23 ..B1.16
..LN261:
	.loc    1  27  is_stmt 1
        cmpl      184(%rsp), %ebx                               #27.45
..LN262:
        jge       ..B1.32       # Prob 50%                      #27.45
..LN263:
                                # LOE rdx r9 r12 r13 eax ebx esi edi r8d r10d r11d zmm0
..B1.26:                        # Preds ..B1.25
..LN264:
        movl      $1, %r14d                                     #27.5
..LN265:
        xorl      %ecx, %ecx                                    #27.5
..LN266:
        testl     %r8d, %r8d                                    #27.5
..LN267:
        jbe       ..B1.30       # Prob 10%                      #27.5
..LN268:
                                # LOE rdx r9 r12 r13 eax ecx ebx esi edi r8d r10d r11d r14d zmm0
..B1.27:                        # Preds ..B1.26
..LN269:
        movl      $-1082130432, %r14d                           #
..LN270:
                                # LOE r9 r12 r13 eax ecx ebx esi edi r8d r10d r11d r14d zmm0
..B1.28:                        # Preds ..B1.28 ..B1.27
..LN271:
	.loc    1  28  is_stmt 1
        lea       (%rcx,%rcx), %edx                             #28.25
..LN272:
	.loc    1  27  is_stmt 1
        incl      %ecx                                          #27.5
..LN273:
	.loc    1  28  is_stmt 1
        movslq    %edx, %rdx                                    #28.25
..LN274:
        movslq    (%r9,%rdx,4), %r15                            #28.25
..LN275:
        movslq    4(%r9,%rdx,4), %rdx                           #28.25
..LN276:
        movslq    (%r12,%r15,4), %r15                           #28.20
..LN277:
        movl      %r14d, (%r13,%r15,4)                          #28.7
..LN278:
        movslq    (%r12,%rdx,4), %rdx                           #28.20
..LN279:
        movl      %r14d, (%r13,%rdx,4)                          #28.7
..LN280:
	.loc    1  27  is_stmt 1
        cmpl      %r8d, %ecx                                    #27.5
..LN281:
        jb        ..B1.28       # Prob 64%                      #27.5
..LN282:
                                # LOE r9 r12 r13 eax ecx ebx esi edi r8d r10d r11d r14d zmm0
..B1.29:                        # Preds ..B1.28
..LN283:
        movq      176(%rsp), %rdx                               #
..LN284:
	.loc    1  28  is_stmt 1
        lea       1(%rcx,%rcx), %r14d                           #28.7
..LN285:
                                # LOE rdx r9 r12 r13 eax ebx esi edi r8d r10d r11d r14d zmm0
..B1.30:                        # Preds ..B1.29 ..B1.26
..LN286:
	.loc    1  27  is_stmt 1
        lea       -1(%r14), %ecx                                #27.5
..LN287:
        cmpl      %ecx, %r10d                                   #27.5
..LN288:
        jbe       ..B1.32       # Prob 10%                      #27.5
..LN289:
                                # LOE rdx r9 r12 r13 eax ebx esi edi r8d r10d r11d r14d zmm0
..B1.31:                        # Preds ..B1.30
..LN290:
	.loc    1  28  is_stmt 1
        movslq    %r14d, %r14                                   #28.25
..LN291:
        movslq    -4(%r9,%r14,4), %rcx                          #28.25
..LN292:
        movslq    (%r12,%rcx,4), %r15                           #28.20
..LN293:
        movl      $-1082130432, (%r13,%r15,4)                   #28.7
..LN294:
                                # LOE rdx r9 r12 r13 eax ebx esi edi r8d r10d r11d zmm0
..B1.32:                        # Preds ..B1.25 ..B1.30 ..B1.31
..LN295:
	.loc    1  17  is_stmt 1
        incl      %esi                                          #17.3
..LN296:
        cmpl      %eax, %esi                                    #17.3
..LN297:
        jb        ..B1.16       # Prob 82%                      #17.3
..LN298:
        jmp       ..B1.33       # Prob 100%                     #17.3
        .align    16,0x90
	.cfi_endproc
..LN299:
                                # LOE rdx r9 r12 r13 eax ebx esi edi r8d r10d r11d zmm0
..LN300:
# mark_end;
	.type	_Z22explicitely_vectorizedPiS_S_Pfii,@function
	.size	_Z22explicitely_vectorizedPiS_S_Pfii,.-_Z22explicitely_vectorizedPiS_S_Pfii
..LN_Z22explicitely_vectorizedPiS_S_Pfii.301:
.LN_Z22explicitely_vectorizedPiS_S_Pfii:
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
	.byte	101
	.byte	120
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
	.byte	105
	.byte	122
	.byte	101
	.byte	100
	.byte	59
	.byte	49
	.byte	54
	.byte	59
	.byte	49
	.byte	54
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
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
	.byte	101
	.byte	120
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
	.byte	105
	.byte	122
	.byte	101
	.byte	100
	.byte	59
	.byte	49
	.byte	54
	.byte	59
	.byte	51
	.byte	48
	.byte	59
	.byte	59
	.data
# -- End  _Z22explicitely_vectorizedPiS_S_Pfii, L__Z22explicitely_vectorizedPiS_S_Pfii_16__par_loop0_2.0
	.bss
	.align 4
	.align 4
___kmpv_zero_Z22explicitely_vectorizedPiS_S_Pfii_0:
	.type	___kmpv_zero_Z22explicitely_vectorizedPiS_S_Pfii_0,@object
	.size	___kmpv_zero_Z22explicitely_vectorizedPiS_S_Pfii_0,4
	.space 4	# pad
	.section .rodata, "a"
	.align 4
	.align 4
.L_2il0floatpacket.1:
	.long	0xbf800000
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,4
	.data
	.section .note.GNU-stack, ""
# End
