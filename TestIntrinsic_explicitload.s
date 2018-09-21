# mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 16.0.0.109 Build 20150815";
# mark_description "";
# mark_description "-S -O3 -xCORE-AVX512 -fopenmp -std=c++14 -o TestIntrinsic_explicitload.s";
	.file "TestIntrinsic_explicitload.cpp"
	.text
..TXTST0:
# -- Begin  _Z26explicitely_vectorizedloadPiS_S_Pfii, L__Z26explicitely_vectorizedloadPiS_S_Pfii_17__par_region0_2.0
	.text
# mark_begin;
       .align    16,0x90
	.globl _Z26explicitely_vectorizedloadPiS_S_Pfii
# --- explicitely_vectorizedload(node *, node *, node *, edgeweight *, int, int)
_Z26explicitely_vectorizedloadPiS_S_Pfii:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
# parameter 5: %r8d
# parameter 6: %r9d
..B1.1:                         # Preds ..B1.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z26explicitely_vectorizedloadPiS_S_Pfii.1:
..L2:
                                                          #13.187
        pushq     %rbp                                          #13.187
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #13.187
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-64, %rsp                                    #13.187
        subq      $576, %rsp                                    #13.187
        vbroadcastss .L_2il0floatpacket.1(%rip), %zmm0          #15.26
        movq      %rdi, 16(%rsp)                                #13.187
        movl      $.2.3_2_kmpc_loc_struct_pack.12, %edi         #17.1
        vmovups   %zmm0, 448(%rsp)                              #15.24
        movq      %rbx, 520(%rsp)                               #13.187
        movq      %r15, 40(%rsp)                                #13.187
        movq      %r14, 48(%rsp)                                #13.187
        movq      %r13, 56(%rsp)                                #13.187
        movq      %r12, 512(%rsp)                               #13.187
        movq      %rdx, 24(%rsp)                                #13.187
        movq      %rcx, 32(%rsp)                                #13.187
        movl      %r8d, 536(%rsp)                               #13.187
        movl      %r9d, 544(%rsp)                               #13.187
        vzeroupper                                              #17.1
        call      __kmpc_global_thread_num                      #17.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xfd, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xfd, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xfd, 0xff, 0xff, 0x22
                                # LOE eax
..B1.40:                        # Preds ..B1.1
        movl      %eax, 528(%rsp)                               #17.1
        movl      $.2.3_2_kmpc_loc_struct_pack.57, %edi         #17.1
        xorl      %eax, %eax                                    #17.1
..___tag_value__Z26explicitely_vectorizedloadPiS_S_Pfii.11:
        call      __kmpc_ok_to_fork                             #17.1
..___tag_value__Z26explicitely_vectorizedloadPiS_S_Pfii.12:
                                # LOE eax
..B1.2:                         # Preds ..B1.40
        testl     %eax, %eax                                    #17.1
        je        ..B1.4        # Prob 50%                      #17.1
                                # LOE
..B1.3:                         # Preds ..B1.2
        movl      $L__Z26explicitely_vectorizedloadPiS_S_Pfii_17__par_region0_2.0, %edx #17.1
        lea       384(%rsp), %rax                               #17.1
        lea       -64(%rax), %rbx                               #17.1
        lea       -128(%rax), %r9                               #17.1
        lea       -192(%rax), %r10                              #17.1
        lea       -256(%rax), %r11                              #17.1
        lea       -128(%r10), %r12                              #17.1
        lea       -124(%r11), %r13                              #17.1
        lea       -120(%r11), %r14                              #17.1
        lea       (%rsp), %r15                                  #17.1
        lea       64(%rax), %rsi                                #17.1
        lea       -96(%r11), %rcx                               #17.1
        lea       -16(%rcx), %r8                                #17.1
        lea       -8(%rcx), %rdi                                #17.1
        pushq     %rax                                          #17.1
        pushq     %rbx                                          #17.1
        pushq     %r9                                           #17.1
        pushq     %r10                                          #17.1
        pushq     %r11                                          #17.1
        pushq     %r12                                          #17.1
        pushq     %r13                                          #17.1
        pushq     %r14                                          #17.1
        pushq     %r15                                          #17.1
        pushq     %rsi                                          #17.1
        pushq     %rdi                                          #17.1
        pushq     %r8                                           #17.1
        movl      $.2.3_2_kmpc_loc_struct_pack.57, %edi         #17.1
        movl      $15, %esi                                     #17.1
        xorl      %eax, %eax                                    #17.1
        lea       504(%rcx), %r8                                #17.1
        lea       512(%rcx), %r9                                #17.1
..___tag_value__Z26explicitely_vectorizedloadPiS_S_Pfii.13:
        call      __kmpc_fork_call                              #17.1
..___tag_value__Z26explicitely_vectorizedloadPiS_S_Pfii.14:
                                # LOE
..B1.41:                        # Preds ..B1.3
        addq      $96, %rsp                                     #17.1
        jmp       ..B1.7        # Prob 100%                     #17.1
                                # LOE
..B1.4:                         # Preds ..B1.2
        movl      $.2.3_2_kmpc_loc_struct_pack.57, %edi         #17.1
        xorl      %eax, %eax                                    #17.1
        movl      528(%rsp), %esi                               #17.1
..___tag_value__Z26explicitely_vectorizedloadPiS_S_Pfii.15:
        call      __kmpc_serialized_parallel                    #17.1
..___tag_value__Z26explicitely_vectorizedloadPiS_S_Pfii.16:
                                # LOE
..B1.5:                         # Preds ..B1.4
        addq      $-96, %rsp                                    #17.1
        movl      $___kmpv_zero_Z26explicitely_vectorizedloadPiS_S_Pfii_0, %esi #17.1
        lea       120(%rsp), %rax                               #17.1
        lea       424(%rax), %rbx                               #17.1
        lea       96(%rsp), %r10                                #17.1
        movq      %rax, (%rsp)                                  #17.1
        lea       -16(%rax), %r11                               #17.1
        movq      %rbx, 8(%rsp)                                 #17.1
        lea       -20(%rax), %r12                               #17.1
        movq      %r10, 16(%rsp)                                #17.1
        lea       40(%rax), %r13                                #17.1
        movq      %r11, 24(%rsp)                                #17.1
        lea       504(%rax), %rdi                               #17.1
        movq      %r12, 32(%rsp)                                #17.1
        lea       8(%rax), %rdx                                 #17.1
        movq      %r13, 40(%rsp)                                #17.1
        lea       512(%rax), %rcx                               #17.1
        lea       520(%rax), %r8                                #17.1
        lea       -8(%rax), %r9                                 #17.1
        lea       104(%rax), %r14                               #17.1
        movq      %r14, 48(%rsp)                                #17.1
        lea       168(%rax), %r15                               #17.1
        movq      %r15, 56(%rsp)                                #17.1
        lea       232(%rax), %rax                               #17.1
        movq      %rax, 64(%rsp)                                #17.1
        lea       64(%rax), %rbx                                #17.1
        movq      %rbx, 72(%rsp)                                #17.1
        lea       128(%rax), %r10                               #17.1
        movq      %r10, 80(%rsp)                                #17.1
..___tag_value__Z26explicitely_vectorizedloadPiS_S_Pfii.17:
        call      L__Z26explicitely_vectorizedloadPiS_S_Pfii_17__par_region0_2.0 #17.1
..___tag_value__Z26explicitely_vectorizedloadPiS_S_Pfii.18:
                                # LOE
..B1.42:                        # Preds ..B1.5
        addq      $96, %rsp                                     #17.1
                                # LOE
..B1.6:                         # Preds ..B1.42
        movl      $.2.3_2_kmpc_loc_struct_pack.57, %edi         #17.1
        xorl      %eax, %eax                                    #17.1
        movl      528(%rsp), %esi                               #17.1
..___tag_value__Z26explicitely_vectorizedloadPiS_S_Pfii.19:
        call      __kmpc_end_serialized_parallel                #17.1
..___tag_value__Z26explicitely_vectorizedloadPiS_S_Pfii.20:
                                # LOE
..B1.7:                         # Preds ..B1.41 ..B1.6
        movq      40(%rsp), %r15                                #58.1
	.cfi_restore 15
        movq      48(%rsp), %r14                                #58.1
	.cfi_restore 14
        movq      56(%rsp), %r13                                #58.1
	.cfi_restore 13
        movq      512(%rsp), %r12                               #58.1
	.cfi_restore 12
        movq      520(%rsp), %rbx                               #58.1
	.cfi_restore 3
        movq      %rbp, %rsp                                    #58.1
        popq      %rbp                                          #58.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #58.1
	.cfi_def_cfa 6, 16
                                # LOE
L__Z26explicitely_vectorizedloadPiS_S_Pfii_17__par_region0_2.0:
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
# parameter 11: 48 + %rbp
# parameter 12: 56 + %rbp
# parameter 13: 64 + %rbp
# parameter 14: 72 + %rbp
# parameter 15: 80 + %rbp
# parameter 16: 88 + %rbp
# parameter 17: 96 + %rbp
..B1.8:                         # Preds ..B1.0
        pushq     %rbp                                          #17.1
	.cfi_def_cfa 7, 16
        movq      %rsp, %rbp                                    #17.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-64, %rsp                                    #17.1
        subq      $576, %rsp                                    #17.1
        movq      %rbx, 520(%rsp)                               #17.1
        movq      %r15, 40(%rsp)                                #17.1
        movq      %r14, 48(%rsp)                                #17.1
        movq      %r13, 56(%rsp)                                #17.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xfd, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xfd, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xfd, 0xff, 0xff, 0x22
        movq      %r8, %r13                                     #17.1
        movq      %r12, 512(%rsp)                               #17.1
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x22
        movq      %rcx, %r12                                    #17.1
        movq      16(%rbp), %rbx                                #17.1
        movq      24(%rbp), %r15                                #17.1
        movl      (%rdi), %r14d                                 #17.1
        movq      %r9, (%rsp)                                   #17.1
        movq      %rdx, 8(%rsp)                                 #17.1
#       omp_get_thread_num()
        call      omp_get_thread_num                            #17.1
                                # LOE rbx r12 r13 r15 eax r14d
..B1.43:                        # Preds ..B1.8
        movq      8(%rsp), %rdx                                 #
        movq      (%rsp), %r9                                   #
                                # LOE rdx rbx r9 r12 r13 r15 eax edx r9d r14d dl dh r9b
..B1.9:                         # Preds ..B1.43
        movl      (%r12), %r12d                                 #17.1
        imull     %r12d, %eax                                   #19.66
        vmovups   (%r15), %zmm0                                 #17.1
        movslq    %eax, %rax                                    #19.46
        movq      (%rdx), %rdx                                  #17.1
        movl      (%r13), %r8d                                  #17.1
        testl     %r8d, %r8d                                    #22.35
        vmovups   %zmm0, 64(%rsp)                               #17.1
        movq      (%rbx), %rbx                                  #17.1
        lea       (%rdx,%rax,4), %r13                           #19.46
        movq      (%r9), %r15                                   #17.1
        jle       ..B1.15       # Prob 10%                      #22.35
                                # LOE rbx r13 r15 r8d r12d r14d xmm0 ymm0 zmm0
..B1.10:                        # Preds ..B1.9
        xorl      %r10d, %r10d                                  #21.1
        decl      %r8d                                          #21.1
        movl      $1, %r11d                                     #21.1
        movl      $.2.3_2_kmpc_loc_struct_pack.20, %edi         #21.1
        movl      %r10d, 144(%rsp)                              #21.1
        movl      %r14d, %esi                                   #21.1
        movl      %r8d, 148(%rsp)                               #21.1
        movl      $36, %edx                                     #21.1
        movl      %r10d, 152(%rsp)                              #21.1
        xorl      %ecx, %ecx                                    #21.1
        movl      %r11d, 156(%rsp)                              #21.1
        addq      $-16, %rsp                                    #21.1
        movl      %r11d, %r9d                                   #21.1
        xorl      %eax, %eax                                    #21.1
        vzeroupper                                              #21.1
        movl      %r11d, (%rsp)                                 #21.1
..___tag_value__Z26explicitely_vectorizedloadPiS_S_Pfii.38:
        call      __kmpc_dispatch_init_4                        #21.1
..___tag_value__Z26explicitely_vectorizedloadPiS_S_Pfii.39:
                                # LOE rbx r13 r15 r12d r14d
..B1.44:                        # Preds ..B1.10
        addq      $16, %rsp                                     #21.1
                                # LOE rbx r13 r15 r12d r14d
..B1.11:                        # Preds ..B1.44
        movq      %r15, %rax                                    #25.43
        lea       152(%rsp), %rdx                               #21.1
        andq      $63, %rax                                     #25.43
        lea       -8(%rdx), %rcx                                #21.1
        movl      %r12d, -24(%rdx)                              #21.1
        lea       -4(%rdx), %r8                                 #21.1
        movq      %r15, 8(%rsp)                                 #21.1
        lea       4(%rdx), %r9                                  #21.1
        movq      %rax, -128(%rcx)                              #21.1
        movq      %r13, -128(%rdx)                              #21.1
        movq      %rdx, %r13                                    #21.1
        movq      %rbx, -120(%rdx)                              #21.1
        movq      %rcx, %r12                                    #21.1
        movl      %r14d, (%rsp)                                 #21.1
        movq      %r8, %r14                                     #21.1
        movq      %r9, %rbx                                     #21.1
        xorl      %r15d, %r15d                                  #21.1
        jmp       ..B1.12       # Prob 100%                     #21.1
                                # LOE rbx r12 r13 r14 r15d
..B1.35:                        # Preds ..B1.34
        xorl      %r15d, %r15d                                  #
        lea       156(%rsp), %rbx                               #
        lea       148(%rsp), %r14                               #
        lea       144(%rsp), %r12                               #
        lea       152(%rsp), %r13                               #
                                # LOE rbx r12 r13 r14 r15d
..B1.12:                        # Preds ..B1.35 ..B1.11
        movl      $.2.3_2_kmpc_loc_struct_pack.20, %edi         #21.1
        movq      %r13, %rdx                                    #21.1
        movq      %r12, %rcx                                    #21.1
        movq      %r14, %r8                                     #21.1
        movq      %rbx, %r9                                     #21.1
        xorl      %eax, %eax                                    #21.1
        movl      (%rsp), %esi                                  #21.1
        vzeroupper                                              #21.1
..___tag_value__Z26explicitely_vectorizedloadPiS_S_Pfii.40:
        call      __kmpc_dispatch_next_4                        #21.1
..___tag_value__Z26explicitely_vectorizedloadPiS_S_Pfii.41:
                                # LOE rbx r12 r13 r14 eax r15d
..B1.13:                        # Preds ..B1.12
        movl      148(%rsp), %edi                               #21.1
        testl     %eax, %eax                                    #21.1
        movl      144(%rsp), %eax                               #21.1
        jne       ..B1.17       # Prob 50%                      #21.1
                                # LOE rbx r12 r13 r14 eax edi r15d
..B1.14:                        # Preds ..B1.13
        movl      (%rsp), %r14d                                 #
                                # LOE r14d
..B1.15:                        # Preds ..B1.9 ..B1.14
        movl      $.2.3_2_kmpc_loc_struct_pack.49, %edi         #56.5
        movl      %r14d, %esi                                   #56.5
        xorl      %eax, %eax                                    #56.5
        vzeroupper                                              #56.5
..___tag_value__Z26explicitely_vectorizedloadPiS_S_Pfii.42:
        call      __kmpc_barrier                                #56.5
..___tag_value__Z26explicitely_vectorizedloadPiS_S_Pfii.43:
                                # LOE
..B1.16:                        # Preds ..B1.15
        movq      40(%rsp), %r15                                #17.1
	.cfi_restore 15
        movq      48(%rsp), %r14                                #17.1
	.cfi_restore 14
        movq      56(%rsp), %r13                                #17.1
	.cfi_restore 13
        movq      512(%rsp), %r12                               #17.1
	.cfi_restore 12
        movq      520(%rsp), %rbx                               #17.1
	.cfi_restore 3
        movq      %rbp, %rsp                                    #17.1
        popq      %rbp                                          #17.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #17.1
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xfd, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xfd, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xfd, 0xff, 0xff, 0x22
                                # LOE
..B1.17:                        # Preds ..B1.13
        subl      %eax, %edi                                    #21.1
        movl      %r15d, %esi                                   #22.5
        incl      %edi                                          #21.1
        movl      $-1082130432, %r8d                            #22.5
        movl      %edi, 136(%rsp)                               #22.5
        vmovups   64(%rsp), %zmm0                               #22.5
        movq      8(%rsp), %rcx                                 #22.5
        movq      16(%rsp), %rdi                                #22.5
        movq      24(%rsp), %r9                                 #22.5
        movq      32(%rsp), %r10                                #22.5
                                # LOE rcx rdi r9 r10 esi r8d zmm0
..B1.18:                        # Preds ..B1.34 ..B1.17
        movl      128(%rsp), %ebx                               #24.22
        movq      %rcx, %r11                                    #23.31
        testq     %rdi, %rdi                                    #25.50
        je        ..B1.23       # Prob 10%                      #25.50
                                # LOE rcx rbx rdi r9 r10 r11 ebx esi r8d bl bh zmm0
..B1.19:                        # Preds ..B1.18
        xorl      %eax, %eax                                    #25.6
                                # LOE rax rcx rdi r9 r10 r11 ebx esi r8d zmm0
..B1.20:                        # Preds ..B1.21 ..B1.19
        incq      %rax                                          #25.6
        testl     %ebx, %ebx                                    #25.67
        je        ..B1.23       # Prob 20%                      #25.67
                                # LOE rax rcx rdi r9 r10 r11 ebx esi r8d zmm0
..B1.21:                        # Preds ..B1.20
        decl      %ebx                                          #28.8
        lea       (%rcx,%rax,4), %r11                           #26.28
        movslq    -4(%r11), %rdx                                #26.28
        movslq    (%r10,%rdx,4), %r12                           #26.22
        movl      %r8d, (%r9,%r12,4)                            #26.8
        testq     $63, %r11                                     #25.43
        jne       ..B1.20       # Prob 82%                      #25.50
                                # LOE rax rcx rdi r9 r10 r11 ebx esi r8d zmm0
..B1.23:                        # Preds ..B1.20 ..B1.21 ..B1.18
        movl      $715827883, %eax                              #32.48
        movl      %ebx, %r12d                                   #32.48
        imull     %ebx                                          #32.48
        sarl      $31, %r12d                                    #32.48
        xorl      %r14d, %r14d                                  #34.6
        sarl      $3, %edx                                      #32.48
        xorl      %r15d, %r15d                                  #35.24
        subl      %r12d, %edx                                   #32.48
        lea       (%rdx,%rdx,2), %r12d                          #32.52
        shll      $4, %r12d                                     #32.52
        testl     %r12d, %r12d                                  #34.23
        jle       ..B1.27       # Prob 10%                      #34.23
                                # LOE rcx rdi r9 r10 r11 r15 ebx esi r8d r12d r14d zmm0
..B1.24:                        # Preds ..B1.23
        movslq    %r12d, %r13                                   #32.52
        movq      $0x2aaaaaaaaaaaaaab, %rax                     #32.52
        addq      $47, %r13                                     #32.52
        imulq     %r13                                          #32.52
        shrq      $3, %rdx                                      #32.52
        sarq      $63, %r13                                     #32.52
        subq      %r13, %rdx                                    #32.52
        .align    16,0x90
                                # LOE rcx rdi r9 r10 r11 r15 edx ebx esi r8d r12d r14d zmm0
..B1.25:                        # Preds ..B1.25 ..B1.24
        vmovups   (%r11,%r15,4), %zmm1                          #35.55
        incl      %r14d                                         #34.6
        vmovups   64(%r11,%r15,4), %zmm2                        #36.56
        vmovups   128(%r11,%r15,4), %zmm3                       #37.56
        kxnorw    %k0, %k0, %k1                                 #41.24
        kxnorw    %k0, %k0, %k2                                 #42.25
        kxnorw    %k0, %k0, %k3                                 #43.25
        kxnorw    %k0, %k0, %k4                                 #46.8
        kxnorw    %k0, %k0, %k5                                 #47.8
        kxnorw    %k0, %k0, %k6                                 #48.8
        addq      $48, %r15                                     #34.6
        cmpl      %edx, %r14d                                   #34.6
        vpgatherdd (%r10,%zmm1,4), %zmm4{%k1}                   #41.24
        vpgatherdd (%r10,%zmm2,4), %zmm5{%k2}                   #42.25
        vpgatherdd (%r10,%zmm3,4), %zmm6{%k3}                   #43.25
        vscatterdps %zmm0, (%r9,%zmm4,4){%k4}                   #46.8
        vscatterdps %zmm0, (%r9,%zmm5,4){%k5}                   #47.8
        vscatterdps %zmm0, (%r9,%zmm6,4){%k6}                   #48.8
        jb        ..B1.25       # Prob 82%                      #34.6
                                # LOE rcx rdi r9 r10 r11 r15 edx ebx esi r8d r12d r14d zmm0
..B1.27:                        # Preds ..B1.25 ..B1.23
        cmpl      %ebx, %r12d                                   #53.51
        jge       ..B1.34       # Prob 50%                      #53.51
                                # LOE rcx rdi r9 r10 r11 ebx esi r8d r12d zmm0
..B1.28:                        # Preds ..B1.27
        subl      %r12d, %ebx                                   #53.6
        movl      $1, %eax                                      #53.6
        movl      %ebx, %r13d                                   #53.6
        xorl      %r14d, %r14d                                  #53.6
        shrl      $31, %r13d                                    #53.6
        addl      %ebx, %r13d                                   #53.6
        sarl      $1, %r13d                                     #53.6
        testl     %r13d, %r13d                                  #53.6
        jbe       ..B1.32       # Prob 10%                      #53.6
                                # LOE rcx rdi r9 r10 r11 eax ebx esi r8d r12d r13d r14d zmm0
..B1.29:                        # Preds ..B1.28
        movslq    %r12d, %r12                                   #54.27
        lea       (%r11,%r12,4), %rdx                           #54.27
                                # LOE rdx rcx rdi r9 r10 r11 ebx esi r8d r12d r13d r14d zmm0
..B1.30:                        # Preds ..B1.30 ..B1.29
        lea       (%r14,%r14), %eax                             #54.27
        incl      %r14d                                         #53.6
        movslq    %eax, %rax                                    #54.27
        movslq    (%rdx,%rax,4), %r15                           #54.27
        movslq    (%r10,%r15,4), %r15                           #54.22
        movl      %r8d, (%r9,%r15,4)                            #54.8
        movslq    4(%rdx,%rax,4), %rax                          #54.27
        movslq    (%r10,%rax,4), %rax                           #54.22
        movl      %r8d, (%r9,%rax,4)                            #54.8
        cmpl      %r13d, %r14d                                  #53.6
        jb        ..B1.30       # Prob 63%                      #53.6
                                # LOE rdx rcx rdi r9 r10 r11 ebx esi r8d r12d r13d r14d zmm0
..B1.31:                        # Preds ..B1.30
        lea       1(%r14,%r14), %eax                            #54.8
                                # LOE rcx rdi r9 r10 r11 eax ebx esi r8d r12d zmm0
..B1.32:                        # Preds ..B1.31 ..B1.28
        lea       -1(%rax), %edx                                #53.6
        cmpl      %edx, %ebx                                    #53.6
        jbe       ..B1.34       # Prob 10%                      #53.6
                                # LOE rcx rdi r9 r10 r11 eax esi r8d r12d zmm0
..B1.33:                        # Preds ..B1.32
        movslq    %r12d, %r12                                   #54.27
        movslq    %eax, %rax                                    #54.27
        addq      %rax, %r12                                    #53.6
        movslq    -4(%r11,%r12,4), %rdx                         #54.27
        movslq    (%r10,%rdx,4), %rbx                           #54.22
        movl      %r8d, (%r9,%rbx,4)                            #54.8
                                # LOE rcx rdi r9 r10 esi r8d zmm0
..B1.34:                        # Preds ..B1.32 ..B1.27 ..B1.33
        incl      %esi                                          #22.5
        cmpl      136(%rsp), %esi                               #22.5
        jb        ..B1.18       # Prob 82%                      #22.5
        jmp       ..B1.35       # Prob 100%                     #22.5
        .align    16,0x90
	.cfi_endproc
                                # LOE rcx rdi r9 r10 esi r8d zmm0
# mark_end;
	.type	_Z26explicitely_vectorizedloadPiS_S_Pfii,@function
	.size	_Z26explicitely_vectorizedloadPiS_S_Pfii,.-_Z26explicitely_vectorizedloadPiS_S_Pfii
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
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	59
	.byte	49
	.byte	55
	.byte	59
	.byte	49
	.byte	55
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.3_2_kmpc_loc_struct_pack.57:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.3_2__kmpc_loc_pack.56
	.align 4
.2.3_2__kmpc_loc_pack.56:
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
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	59
	.byte	49
	.byte	55
	.byte	59
	.byte	53
	.byte	55
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
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	59
	.byte	50
	.byte	49
	.byte	59
	.byte	53
	.byte	54
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.3_2_kmpc_loc_struct_pack.49:
	.long	0
	.long	66
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
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	59
	.byte	53
	.byte	54
	.byte	59
	.byte	53
	.byte	54
	.byte	59
	.byte	59
	.data
# -- End  _Z26explicitely_vectorizedloadPiS_S_Pfii, L__Z26explicitely_vectorizedloadPiS_S_Pfii_17__par_region0_2.0
	.bss
	.align 4
	.align 4
___kmpv_zero_Z26explicitely_vectorizedloadPiS_S_Pfii_0:
	.type	___kmpv_zero_Z26explicitely_vectorizedloadPiS_S_Pfii_0,@object
	.size	___kmpv_zero_Z26explicitely_vectorizedloadPiS_S_Pfii_0,4
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
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
# End
