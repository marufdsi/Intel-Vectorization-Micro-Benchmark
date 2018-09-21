	.section .text
.LNDBG_TX:
# mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 16.0.0.109 Build 20150815";
# mark_description "";
# mark_description "-fopenmp -O3 -std=c++11 -qopt-report=5 -xCORE-AVX512 -S";
	.file "TestIntrinsic_novector.cpp"
	.text
..TXTST0:
.L_2__routine_start__Z9no_vectorPiS_S_Pfii_0:
# -- Begin  _Z9no_vectorPiS_S_Pfii, L__Z9no_vectorPiS_S_Pfii_10__par_region0_2.0
	.text
# mark_begin;
       .align    16,0x90
	.globl _Z9no_vectorPiS_S_Pfii
# --- no_vector(node *, node *, node *, edgeweight *, int, int)
_Z9no_vectorPiS_S_Pfii:
# parameter 1(pnt_outEdges): %rdi
# parameter 2(outEdges): %rsi
# parameter 3(zeta): %rdx
# parameter 4(pnt_affinity): %rcx
# parameter 5(_deg): %r8d
# parameter 6(iteration): %r9d
..B1.1:                         # Preds ..B1.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z9no_vectorPiS_S_Pfii.1:
..L2:
                                                          #8.115
..LN0:
	.file   1 "TestIntrinsic_novector.cpp"
	.loc    1  8  is_stmt 1
        pushq     %rbp                                          #8.115
	.cfi_def_cfa_offset 16
..LN1:
        movq      %rsp, %rbp                                    #8.115
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN2:
        andq      $-64, %rsp                                    #8.115
..LN3:
        subq      $128, %rsp                                    #8.115
..LN4:
        movq      %rdi, 16(%rsp)                                #8.115
..LN5:
	.loc    1  10  is_stmt 1
        movl      $.2.3_2_kmpc_loc_struct_pack.12, %edi         #10.1
..LN6:
	.loc    1  8  is_stmt 1
        movq      %rbx, 72(%rsp)                                #8.115
..LN7:
        movq      %r15, 40(%rsp)                                #8.115
..LN8:
        movq      %r14, 48(%rsp)                                #8.115
..LN9:
        movq      %r13, 56(%rsp)                                #8.115
..LN10:
        movq      %r12, 64(%rsp)                                #8.115
..LN11:
        movq      %rdx, 24(%rsp)                                #8.115
..LN12:
        movq      %rcx, 32(%rsp)                                #8.115
..LN13:
        movl      %r8d, 80(%rsp)                                #8.115
..LN14:
        movl      %r9d, 88(%rsp)                                #8.115
..LN15:
	.loc    1  10  is_stmt 1
        call      __kmpc_global_thread_num                      #10.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa8, 0xff, 0xff, 0xff, 0x22
..LN16:
                                # LOE eax
..B1.31:                        # Preds ..B1.1
..LN17:
        movl      %eax, 12(%rsp)                                #10.1
..LN18:
        movl      $.2.3_2_kmpc_loc_struct_pack.49, %edi         #10.1
..LN19:
        xorl      %eax, %eax                                    #10.1
..___tag_value__Z9no_vectorPiS_S_Pfii.11:
..LN20:
        call      __kmpc_ok_to_fork                             #10.1
..___tag_value__Z9no_vectorPiS_S_Pfii.12:
..LN21:
                                # LOE eax
..B1.2:                         # Preds ..B1.31
..LN22:
        testl     %eax, %eax                                    #10.1
..LN23:
        je        ..B1.4        # Prob 50%                      #10.1
..LN24:
                                # LOE
..B1.3:                         # Preds ..B1.2
..LN25:
        addq      $-48, %rsp                                    #10.1
..LN26:
        movl      $L__Z9no_vectorPiS_S_Pfii_10__par_region0_2.0, %edx #10.1
..LN27:
        movl      $.2.3_2_kmpc_loc_struct_pack.49, %edi         #10.1
..LN28:
        lea       64(%rsp), %rax                                #10.1
..LN29:
        movl      $8, %esi                                      #10.1
..LN30:
        lea       16(%rax), %rcx                                #10.1
..LN31:
        lea       64(%rax), %r8                                 #10.1
..LN32:
        movq      %rax, (%rsp)                                  #10.1
..LN33:
        lea       72(%rax), %r9                                 #10.1
..LN34:
        xorl      %eax, %eax                                    #10.1
..LN35:
        lea       -8(%rcx), %rbx                                #10.1
..LN36:
        movq      %rbx, 8(%rsp)                                 #10.1
..LN37:
        lea       48(%rsp), %r10                                #10.1
..LN38:
        movq      %r10, 16(%rsp)                                #10.1
..LN39:
        lea       -28(%rcx), %r11                               #10.1
..LN40:
        movq      %r11, 24(%rsp)                                #10.1
..LN41:
        lea       -24(%rcx), %r12                               #10.1
..LN42:
        movq      %r12, 32(%rsp)                                #10.1
..___tag_value__Z9no_vectorPiS_S_Pfii.13:
..LN43:
        call      __kmpc_fork_call                              #10.1
..___tag_value__Z9no_vectorPiS_S_Pfii.14:
..LN44:
                                # LOE
..B1.32:                        # Preds ..B1.3
..LN45:
        addq      $48, %rsp                                     #10.1
..LN46:
        jmp       ..B1.7        # Prob 100%                     #10.1
..LN47:
                                # LOE
..B1.4:                         # Preds ..B1.2
..LN48:
        movl      $.2.3_2_kmpc_loc_struct_pack.49, %edi         #10.1
..LN49:
        xorl      %eax, %eax                                    #10.1
..LN50:
        movl      12(%rsp), %esi                                #10.1
..___tag_value__Z9no_vectorPiS_S_Pfii.15:
..LN51:
        call      __kmpc_serialized_parallel                    #10.1
..___tag_value__Z9no_vectorPiS_S_Pfii.16:
..LN52:
                                # LOE
..B1.5:                         # Preds ..B1.4
..LN53:
        movl      $___kmpv_zero_Z9no_vectorPiS_S_Pfii_0, %esi   #10.1
..LN54:
        lea       8(%rsp), %rax                                 #10.1
..LN55:
        lea       -4(%rax), %rbx                                #10.1
..LN56:
        lea       4(%rax), %rdi                                 #10.1
..LN57:
        lea       24(%rax), %rdx                                #10.1
..LN58:
        lea       72(%rax), %rcx                                #10.1
..LN59:
        lea       80(%rax), %r8                                 #10.1
..LN60:
        lea       8(%rax), %r9                                  #10.1
..LN61:
        lea       16(%rax), %r11                                #10.1
..LN62:
        lea       (%rsp), %r10                                  #10.1
..LN63:
        pushq     %rax                                          #10.1
..LN64:
        pushq     %rbx                                          #10.1
..LN65:
        pushq     %r10                                          #10.1
..LN66:
        pushq     %r11                                          #10.1
..___tag_value__Z9no_vectorPiS_S_Pfii.17:
..LN67:
        call      L__Z9no_vectorPiS_S_Pfii_10__par_region0_2.0  #10.1
..___tag_value__Z9no_vectorPiS_S_Pfii.18:
..LN68:
                                # LOE
..B1.33:                        # Preds ..B1.5
..LN69:
        addq      $32, %rsp                                     #10.1
..LN70:
                                # LOE
..B1.6:                         # Preds ..B1.33
..LN71:
        movl      $.2.3_2_kmpc_loc_struct_pack.49, %edi         #10.1
..LN72:
        xorl      %eax, %eax                                    #10.1
..LN73:
        movl      12(%rsp), %esi                                #10.1
..___tag_value__Z9no_vectorPiS_S_Pfii.19:
..LN74:
        call      __kmpc_end_serialized_parallel                #10.1
..___tag_value__Z9no_vectorPiS_S_Pfii.20:
..LN75:
                                # LOE
..B1.7:                         # Preds ..B1.6 ..B1.32
..LN76:
	.loc    1  24  is_stmt 1
        movq      40(%rsp), %r15                                #24.1
	.cfi_restore 15
..LN77:
        movq      48(%rsp), %r14                                #24.1
	.cfi_restore 14
..LN78:
        movq      56(%rsp), %r13                                #24.1
	.cfi_restore 13
..LN79:
        movq      64(%rsp), %r12                                #24.1
	.cfi_restore 12
..LN80:
        movq      72(%rsp), %rbx                                #24.1
	.cfi_restore 3
..LN81:
        movq      %rbp, %rsp                                    #24.1
..LN82:
        popq      %rbp                                          #24.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
..LN83:
        ret                                                     #24.1
	.cfi_def_cfa 6, 16
..LN84:
                                # LOE
L__Z9no_vectorPiS_S_Pfii_10__par_region0_2.0:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
# parameter 5: %r8
# parameter 6: %r9
# parameter 7: 16 + %rbp
# parameter 8: 24 + %rbp
# parameter 9: 32 + %rbp
# parameter 10: 40 + %rbp
..B1.8:                         # Preds ..B1.0
..LN85:
	.loc    1  10  is_stmt 1
        pushq     %rbp                                          #10.1
	.cfi_def_cfa 7, 16
..LN86:
        movq      %rsp, %rbp                                    #10.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN87:
        andq      $-64, %rsp                                    #10.1
..LN88:
        subq      $128, %rsp                                    #10.1
..LN89:
        movq      %r13, 56(%rsp)                                #10.1
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb8, 0xff, 0xff, 0xff, 0x22
..LN90:
        movq      %rdx, %r13                                    #10.1
..LN91:
        movq      16(%rbp), %rdx                                #10.1
..LN92:
        movq      %rbx, 72(%rsp)                                #10.1
..LN93:
        movq      %r15, 40(%rsp)                                #10.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa8, 0xff, 0xff, 0xff, 0x22
..LN94:
        movq      %r9, %r15                                     #10.1
..LN95:
        movq      %r14, 48(%rsp)                                #10.1
..LN96:
        movq      %r12, 64(%rsp)                                #10.1
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb0, 0xff, 0xff, 0xff, 0x22
..LN97:
        movq      %r8, %r12                                     #10.1
..LN98:
        movl      (%rdi), %ebx                                  #10.1
..LN99:
        movq      %rdx, (%rsp)                                  #10.1
..LN100:
        movq      %rcx, 8(%rsp)                                 #10.1
..LN101:
#       omp_get_thread_num()
        call      omp_get_thread_num                            #10.1
..LN102:
                                # LOE r12 r13 r15 eax ebx
..B1.34:                        # Preds ..B1.8
..LN103:
        movq      8(%rsp), %rcx                                 #
..LN104:
        movq      (%rsp), %rdx                                  #
..LN105:
                                # LOE rdx rcx r12 r13 r15 eax edx ecx ebx dl cl dh ch
..B1.9:                         # Preds ..B1.34
..LN106:
        movl      (%r12), %r8d                                  #10.1
..LN107:
        movl      (%rcx), %r12d                                 #10.1
..LN108:
	.loc    1  12  is_stmt 1
        imull     %r12d, %eax                                   #12.53
..LN109:
        movslq    %eax, %rax                                    #12.33
..LN110:
	.loc    1  10  is_stmt 1
        movq      (%r13), %r13                                  #10.1
..LN111:
        movq      (%rdx), %r14                                  #10.1
..LN112:
        movq      (%r15), %r15                                  #10.1
..LN113:
	.loc    1  12  is_stmt 1
        lea       (%r13,%rax,4), %r13                           #12.33
..LN114:
	.loc    1  15  is_stmt 1
        testl     %r8d, %r8d                                    #15.35
..LN115:
        jle       ..B1.23       # Prob 10%                      #15.35
..LN116:
                                # LOE r13 r14 r15 ebx r8d r12d
..B1.10:                        # Preds ..B1.9
..LN117:
	.loc    1  14  is_stmt 1
        xorl      %r10d, %r10d                                  #14.1
..LN118:
        decl      %r8d                                          #14.1
..LN119:
        movl      $1, %r11d                                     #14.1
..LN120:
        movl      $.2.3_2_kmpc_loc_struct_pack.20, %edi         #14.1
..LN121:
        movl      %r10d, 80(%rsp)                               #14.1
..LN122:
        movl      %ebx, %esi                                    #14.1
..LN123:
        movl      %r8d, 84(%rsp)                                #14.1
..LN124:
        movl      $36, %edx                                     #14.1
..LN125:
        movl      %r10d, 88(%rsp)                               #14.1
..LN126:
        xorl      %ecx, %ecx                                    #14.1
..LN127:
        movl      %r11d, 92(%rsp)                               #14.1
..LN128:
        addq      $-16, %rsp                                    #14.1
..LN129:
        movl      %r11d, %r9d                                   #14.1
..LN130:
        xorl      %eax, %eax                                    #14.1
..LN131:
        movl      %r11d, (%rsp)                                 #14.1
..___tag_value__Z9no_vectorPiS_S_Pfii.38:
..LN132:
        call      __kmpc_dispatch_init_4                        #14.1
..___tag_value__Z9no_vectorPiS_S_Pfii.39:
..LN133:
                                # LOE r13 r14 r15 ebx r12d
..B1.35:                        # Preds ..B1.10
..LN134:
        addq      $16, %rsp                                     #14.1
..LN135:
                                # LOE r13 r14 r15 ebx r12d
..B1.11:                        # Preds ..B1.35
..LN136:
        movl      %r12d, %edi                                   #
..LN137:
        lea       84(%rsp), %r8                                 #14.1
..LN138:
        shrl      $31, %edi                                     #
..LN139:
        lea       8(%r8), %r9                                   #14.1
..LN140:
        addl      %r12d, %edi                                   #
..LN141:
        sarl      $1, %edi                                      #
..LN142:
        movl      %edi, -76(%r8)                                #14.1
..LN143:
        movq      %r13, -68(%r8)                                #14.1
..LN144:
        movq      %r9, %r13                                     #14.1
..LN145:
        movq      %r15, -60(%r8)                                #14.1
..LN146:
        xorl      %r15d, %r15d                                  #14.1
..LN147:
        movq      %r14, -52(%r8)                                #14.1
..LN148:
        movq      %r8, %r14                                     #14.1
..LN149:
                                # LOE r13 r14 ebx r12d r15d
..B1.12:                        # Preds ..B1.14 ..B1.27 ..B1.11
..LN150:
        movl      $.2.3_2_kmpc_loc_struct_pack.20, %edi         #14.1
..LN151:
        movl      %ebx, %esi                                    #14.1
..LN152:
        movq      %r14, %r8                                     #14.1
..LN153:
        lea       88(%rsp), %rdx                                #14.1
..LN154:
        movq      %r13, %r9                                     #14.1
..LN155:
        lea       -8(%rdx), %rcx                                #14.1
..LN156:
        xorl      %eax, %eax                                    #14.1
..___tag_value__Z9no_vectorPiS_S_Pfii.40:
..LN157:
        call      __kmpc_dispatch_next_4                        #14.1
..___tag_value__Z9no_vectorPiS_S_Pfii.41:
..LN158:
                                # LOE r13 r14 eax ebx r12d r15d
..B1.13:                        # Preds ..B1.12
..LN159:
        movl      80(%rsp), %edx                                #14.1
..LN160:
        testl     %eax, %eax                                    #14.1
..LN161:
        movl      84(%rsp), %eax                                #14.1
..LN162:
        je        ..B1.23       # Prob 50%                      #14.1
..LN163:
                                # LOE r13 r14 eax edx ebx r12d r15d
..B1.14:                        # Preds ..B1.13
..LN164:
        subl      %edx, %eax                                    #14.1
..LN165:
	.loc    1  15  is_stmt 1
        movl      %r15d, %edx                                   #15.5
..LN166:
	.loc    1  14  is_stmt 1
        incl      %eax                                          #14.1
..LN167:
	.loc    1  17  is_stmt 1
        testl     %r12d, %r12d                                  #17.30
..LN168:
        jle       ..B1.12       # Prob 50%                      #17.30
..LN169:
                                # LOE r13 r14 eax edx ebx r12d r15d
..B1.15:                        # Preds ..B1.14
..LN170:
        movl      %ebx, (%rsp)                                  #
..LN171:
        movl      $-1082130432, %ebx                            #
..LN172:
        movl      8(%rsp), %esi                                 #
..LN173:
        movl      $1, %edi                                      #
..LN174:
        movq      16(%rsp), %r11                                #
..LN175:
        movq      24(%rsp), %r14                                #
..LN176:
        movq      32(%rsp), %r10                                #
..LN177:
                                # LOE r10 r11 r13 r14 eax edx ebx esi edi r12d r15d
..B1.16:                        # Preds ..B1.21 ..B1.26 ..B1.15
..LN178:
        movl      %edi, %r9d                                    #17.7
..LN179:
        movl      %r15d, %r8d                                   #17.7
..LN180:
        testl     %esi, %esi                                    #17.7
..LN181:
        jbe       ..B1.20       # Prob 10%                      #17.7
..LN182:
                                # LOE r10 r11 r13 r14 eax edx ebx esi edi r8d r9d r12d r15d
..B1.18:                        # Preds ..B1.16 ..B1.18
..LN183:
	.loc    1  18  is_stmt 1
        lea       (%r8,%r8), %ecx                               #18.12
..LN184:
	.loc    1  17  is_stmt 1
        incl      %r8d                                          #17.7
..LN185:
	.loc    1  18  is_stmt 1
        movslq    %ecx, %rcx                                    #18.12
..LN186:
        movslq    (%r14,%rcx,4), %r9                            #18.12
..LN187:
        movslq    4(%r14,%rcx,4), %rcx                          #18.12
..LN188:
	.loc    1  19  is_stmt 1
        movslq    (%r10,%r9,4), %r9                             #19.11
..LN189:
	.loc    1  20  is_stmt 1
        movl      %ebx, (%r11,%r9,4)                            #20.2
..LN190:
	.loc    1  19  is_stmt 1
        movslq    (%r10,%rcx,4), %rcx                           #19.11
..LN191:
	.loc    1  20  is_stmt 1
        movl      %ebx, (%r11,%rcx,4)                           #20.2
..LN192:
	.loc    1  17  is_stmt 1
        cmpl      %esi, %r8d                                    #17.7
..LN193:
        jb        ..B1.18       # Prob 64%                      #17.7
..LN194:
                                # LOE r10 r11 r13 r14 eax edx ebx esi edi r8d r12d r15d
..B1.19:                        # Preds ..B1.18
..LN195:
	.loc    1  20  is_stmt 1
        lea       1(%r8,%r8), %r9d                              #20.2
..LN196:
                                # LOE r10 r11 r13 r14 eax edx ebx esi edi r9d r12d r15d
..B1.20:                        # Preds ..B1.19 ..B1.16
..LN197:
	.loc    1  17  is_stmt 1
        lea       -1(%r9), %ecx                                 #17.7
..LN198:
        cmpl      %ecx, %r12d                                   #17.7
..LN199:
        jbe       ..B1.26       # Prob 10%                      #17.7
..LN200:
                                # LOE r10 r11 r13 r14 eax edx ebx esi edi r9d r12d r15d
..B1.21:                        # Preds ..B1.20
..LN201:
	.loc    1  18  is_stmt 1
        movslq    %r9d, %r9                                     #18.12
..LN202:
	.loc    1  15  is_stmt 1
        incl      %edx                                          #15.5
..LN203:
	.loc    1  18  is_stmt 1
        movslq    -4(%r14,%r9,4), %rcx                          #18.12
..LN204:
	.loc    1  19  is_stmt 1
        movslq    (%r10,%rcx,4), %r8                            #19.11
..LN205:
	.loc    1  20  is_stmt 1
        movl      %ebx, (%r11,%r8,4)                            #20.2
..LN206:
	.loc    1  15  is_stmt 1
        cmpl      %eax, %edx                                    #15.5
..LN207:
        jb        ..B1.16       # Prob 82%                      #15.5
..LN208:
        jmp       ..B1.27       # Prob 100%                     #15.5
..LN209:
                                # LOE r10 r11 r13 r14 eax edx ebx esi edi r12d r15d
..B1.23:                        # Preds ..B1.13 ..B1.9
..LN210:
	.loc    1  22  is_stmt 1
        movl      $.2.3_2_kmpc_loc_struct_pack.41, %edi         #22.5
..LN211:
        movl      %ebx, %esi                                    #22.5
..LN212:
        xorl      %eax, %eax                                    #22.5
..___tag_value__Z9no_vectorPiS_S_Pfii.42:
..LN213:
        call      __kmpc_barrier                                #22.5
..___tag_value__Z9no_vectorPiS_S_Pfii.43:
..LN214:
                                # LOE
..B1.24:                        # Preds ..B1.23
..LN215:
	.loc    1  10  is_stmt 1
        movq      40(%rsp), %r15                                #10.1
	.cfi_restore 15
..LN216:
        movq      48(%rsp), %r14                                #10.1
	.cfi_restore 14
..LN217:
        movq      56(%rsp), %r13                                #10.1
	.cfi_restore 13
..LN218:
        movq      64(%rsp), %r12                                #10.1
	.cfi_restore 12
..LN219:
        movq      72(%rsp), %rbx                                #10.1
	.cfi_restore 3
..LN220:
        movq      %rbp, %rsp                                    #10.1
..LN221:
        popq      %rbp                                          #10.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
..LN222:
        ret                                                     #10.1
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xb0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xa8, 0xff, 0xff, 0xff, 0x22
..LN223:
                                # LOE
..B1.26:                        # Preds ..B1.20                 # Infreq
..LN224:
	.loc    1  15  is_stmt 1
        incl      %edx                                          #15.5
..LN225:
        cmpl      %eax, %edx                                    #15.5
..LN226:
        jb        ..B1.16       # Prob 82%                      #15.5
..LN227:
                                # LOE r10 r11 r13 r14 eax edx ebx esi edi r12d r15d
..B1.27:                        # Preds ..B1.21 ..B1.26         # Infreq
..LN228:
        .byte     102                                           #
..LN229:
        .byte     15                                            #
..LN230:
        .byte     31                                            #
..LN231:
        .byte     68                                            #
..LN232:
        .byte     0                                             #
..LN233:
        .byte     0                                             #
..LN234:
        movl      (%rsp), %ebx                                  #
..LN235:
        lea       84(%rsp), %r14                                #
..LN236:
        jmp       ..B1.12       # Prob 100%                     #
        .align    16,0x90
	.cfi_endproc
..LN237:
                                # LOE r13 r14 ebx r12d r15d
..LN238:
# mark_end;
	.type	_Z9no_vectorPiS_S_Pfii,@function
	.size	_Z9no_vectorPiS_S_Pfii,.-_Z9no_vectorPiS_S_Pfii
..LN_Z9no_vectorPiS_S_Pfii.239:
.LN_Z9no_vectorPiS_S_Pfii:
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
	.byte	110
	.byte	111
	.byte	95
	.byte	118
	.byte	101
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	59
	.byte	49
	.byte	48
	.byte	59
	.byte	49
	.byte	48
	.byte	59
	.byte	59
	.space 2, 0x00 	# pad
	.align 4
.2.3_2_kmpc_loc_struct_pack.49:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.3_2__kmpc_loc_pack.48
	.align 4
.2.3_2__kmpc_loc_pack.48:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	110
	.byte	111
	.byte	95
	.byte	118
	.byte	101
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	59
	.byte	49
	.byte	48
	.byte	59
	.byte	50
	.byte	51
	.byte	59
	.byte	59
	.space 2, 0x00 	# pad
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
	.byte	110
	.byte	111
	.byte	95
	.byte	118
	.byte	101
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	59
	.byte	49
	.byte	52
	.byte	59
	.byte	50
	.byte	50
	.byte	59
	.byte	59
	.space 2, 0x00 	# pad
	.align 4
.2.3_2_kmpc_loc_struct_pack.41:
	.long	0
	.long	66
	.long	0
	.long	0
	.quad	.2.3_2__kmpc_loc_pack.40
	.align 4
.2.3_2__kmpc_loc_pack.40:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	110
	.byte	111
	.byte	95
	.byte	118
	.byte	101
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	59
	.byte	50
	.byte	50
	.byte	59
	.byte	50
	.byte	50
	.byte	59
	.byte	59
	.data
# -- End  _Z9no_vectorPiS_S_Pfii, L__Z9no_vectorPiS_S_Pfii_10__par_region0_2.0
	.bss
	.align 4
	.align 4
___kmpv_zero_Z9no_vectorPiS_S_Pfii_0:
	.type	___kmpv_zero_Z9no_vectorPiS_S_Pfii_0,@object
	.size	___kmpv_zero_Z9no_vectorPiS_S_Pfii_0,4
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
