# mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 16.0.0.109 Build 20150815";
# mark_description "";
# mark_description "-S -xCORE-AVX512 -std=c++11 -fopenmp -O3";
	.file "MatMul.cpp"
	.text
..TXTST0:
# -- Begin  main
	.text
# mark_begin;
       .align    16,0x90
	.globl main
# --- main()
main:
..B1.1:                         # Preds ..B1.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value_main.1:
..L2:
                                                          #18.11
        pushq     %rbp                                          #18.11
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #18.11
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #18.11
        pushq     %r13                                          #18.11
        pushq     %r14                                          #18.11
        subq      $112, %rsp                                    #18.11
        movq      $0x64399d9ffe, %rsi                           #18.11
        movl      $3, %edi                                      #18.11
        call      __intel_new_feature_proc_init                 #18.11
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
                                # LOE rbx r12 r15
..B1.53:                        # Preds ..B1.1
        vstmxcsr  (%rsp)                                        #18.11
        movl      $.2.29_2_kmpc_loc_struct_pack.7, %edi         #18.11
        xorl      %esi, %esi                                    #18.11
        orl       $32832, (%rsp)                                #18.11
        xorl      %eax, %eax                                    #18.11
        vldmxcsr  (%rsp)                                        #18.11
..___tag_value_main.8:
        call      __kmpc_begin                                  #18.11
..___tag_value_main.9:
                                # LOE rbx r12 r15
..B1.2:                         # Preds ..B1.53
        movq      $0x17d784000, %rdi                            #23.17
#       malloc(size_t)
        call      malloc                                        #23.17
                                # LOE rax rbx r12 r15
..B1.54:                        # Preds ..B1.2
        movq      %rax, %r14                                    #23.17
                                # LOE rbx r12 r14 r15
..B1.3:                         # Preds ..B1.54
        movq      $0x17d784000, %rdi                            #24.17
#       malloc(size_t)
        call      malloc                                        #24.17
                                # LOE rax rbx r12 r14 r15
..B1.55:                        # Preds ..B1.3
        movq      %rax, %r13                                    #24.17
                                # LOE rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.55
        movq      %r13, %rdi                                    #25.3
        andq      $63, %rdi                                     #25.3
        testl     %edi, %edi                                    #25.3
        je        ..B1.7        # Prob 50%                      #25.3
                                # LOE rbx r12 r13 r14 r15 edi
..B1.5:                         # Preds ..B1.4
        testl     $3, %edi                                      #25.3
        jne       ..B1.50       # Prob 10%                      #25.3
                                # LOE rbx r12 r13 r14 r15 edi
..B1.6:                         # Preds ..B1.5
        negl      %edi                                          #25.3
        addl      $64, %edi                                     #25.3
        shrl      $2, %edi                                      #25.3
                                # LOE rbx r12 r13 r14 r15 edi
..B1.7:                         # Preds ..B1.6 ..B1.4
        movl      %edi, %eax                                    #25.3
        negl      %eax                                          #25.3
        andl      $31, %eax                                     #25.3
        negl      %eax                                          #25.3
        addl      $1600000000, %eax                             #25.3
        cmpl      $1, %edi                                      #25.3
        jb        ..B1.11       # Prob 50%                      #25.3
                                # LOE rbx r12 r13 r14 r15 eax edi
..B1.8:                         # Preds ..B1.7
        xorl      %esi, %esi                                    #25.3
        vmovups   .L_2il0floatpacket.1(%rip), %zmm2             #25.3
        xorl      %edx, %edx                                    #25.3
        vmovdqu32 .L_2il0floatpacket.4(%rip), %zmm1             #25.3
        vpbroadcastd %edi, %zmm0                                #25.3
        movl      %edi, %ecx                                    #25.3
                                # LOE rdx rcx rbx rsi r12 r13 r14 r15 eax edi zmm0 zmm1 zmm2
..B1.9:                         # Preds ..B1.9 ..B1.8
        vpcmpud   $2, %zmm0, %zmm1, %k1                         #25.3
        addq      $16, %rsi                                     #25.3
        vcvtdq2ps %zmm1, %zmm3                                  #26.14
        vpaddd    %zmm2, %zmm1, %zmm1                           #25.3
        vmovups   %zmm3, (%rdx,%r14){%k1}                       #26.5
        vmovups   %zmm3, (%rdx,%r13){%k1}                       #27.5
        addq      $64, %rdx                                     #25.3
        cmpq      %rcx, %rsi                                    #25.3
        jb        ..B1.9        # Prob 82%                      #25.3
                                # LOE rdx rcx rbx rsi r12 r13 r14 r15 eax edi zmm0 zmm1 zmm2
..B1.11:                        # Preds ..B1.7 ..B1.9
        vmovups   .L_2il0floatpacket.2(%rip), %zmm2             #26.14
        lea       1(%rdi), %edx                                 #26.14
        vpbroadcastd %edx, %zmm1                                #26.14
        lea       .L_2il0floatpacket.5(%rip), %rdx              #26.14
        vpaddd    (%rdx), %zmm1, %zmm1                          #26.14
        lea       17(%rdi), %ecx                                #26.14
        vpbroadcastd %ecx, %zmm0                                #26.14
        vpaddd    (%rdx), %zmm0, %zmm0                          #26.14
                                # LOE rbx r12 r13 r14 r15 eax edi zmm0 zmm1 zmm2
..B1.12:                        # Preds ..B1.11
        movl      %edi, %edi                                    #25.3
        movl      %eax, %edx                                    #25.3
                                # LOE rdx rbx rdi r12 r13 r14 r15 eax zmm0 zmm1 zmm2
..B1.13:                        # Preds ..B1.13 ..B1.12
        vcvtdq2ps %zmm1, %zmm3                                  #26.14
        vcvtdq2ps %zmm0, %zmm4                                  #26.14
        vpaddd    %zmm2, %zmm1, %zmm1                           #26.14
        vpaddd    %zmm2, %zmm0, %zmm0                           #26.14
        vmovups   %zmm3, (%r14,%rdi,4)                          #26.5
        vmovups   %zmm4, 64(%r14,%rdi,4)                        #26.5
        vmovntps  %zmm3, (%r13,%rdi,4)                          #27.5
        vmovntps  %zmm4, 64(%r13,%rdi,4)                        #27.5
        addq      $32, %rdi                                     #25.3
        cmpq      %rdx, %rdi                                    #25.3
        jb        ..B1.13       # Prob 82%                      #25.3
                                # LOE rdx rbx rdi r12 r13 r14 r15 eax zmm0 zmm1 zmm2
..B1.14:                        # Preds ..B1.13
        mfence                                                  #25.3
                                # LOE rbx r12 r13 r14 r15 eax
..B1.15:                        # Preds ..B1.14 ..B1.50
        lea       1(%rax), %edx                                 #25.3
        cmpl      $1600000000, %edx                             #25.3
        ja        ..B1.19       # Prob 50%                      #25.3
                                # LOE rbx r12 r13 r14 r15 eax edx
..B1.16:                        # Preds ..B1.15
        vpbroadcastd %edx, %zmm0                                #26.14
        movl      %eax, %edx                                    #25.3
        vmovups   .L_2il0floatpacket.1(%rip), %zmm3             #25.3
        vmovdqu32 .L_2il0floatpacket.4(%rip), %zmm2             #25.3
        vpaddd    .L_2il0floatpacket.5(%rip), %zmm0, %zmm1      #26.14
        negl      %edx                                          #25.3
        xorl      %ecx, %ecx                                    #25.3
        addl      $1600000000, %edx                             #25.3
        vpbroadcastd %edx, %zmm0                                #25.3
                                # LOE rbx r12 r13 r14 r15 eax edx ecx zmm0 zmm1 zmm2 zmm3
..B1.17:                        # Preds ..B1.17 ..B1.16
        vpcmpud   $2, %zmm0, %zmm2, %k1                         #25.3
        lea       (%rax,%rcx), %esi                             #26.5
        vcvtdq2ps %zmm1, %zmm4                                  #26.14
        vpaddd    %zmm3, %zmm2, %zmm2                           #25.3
        vpaddd    %zmm3, %zmm1, %zmm1                           #26.14
        movslq    %esi, %rsi                                    #26.5
        addl      $16, %ecx                                     #25.3
        vmovups   %zmm4, (%r14,%rsi,4){%k1}                     #26.5
        vmovups   %zmm4, (%r13,%rsi,4){%k1}                     #27.5
        cmpl      %edx, %ecx                                    #25.3
        jb        ..B1.17       # Prob 82%                      #25.3
                                # LOE rbx r12 r13 r14 r15 eax edx ecx zmm0 zmm1 zmm2 zmm3
..B1.19:                        # Preds ..B1.17 ..B1.15
        movl      $1, %edi                                      #31.3
        lea       (%rsp), %rsi                                  #31.3
        vzeroupper                                              #31.3
#       clock_gettime(clockid_t, timespec *)
        call      clock_gettime                                 #31.3
                                # LOE rbx r12 r13 r14 r15
..B1.20:                        # Preds ..B1.19
        xorl      %eax, %eax                                    #33.3
                                # LOE rbx r12 r13 r14 r15 eax
..B1.21:                        # Preds ..B1.21 ..B1.20
        lea       (,%rax,8), %edx                               #34.5
        incl      %eax                                          #33.3
        vmovss    (%r14,%rdx,4), %xmm0                          #34.5
        lea       (%r14,%rdx,4), %rcx                           #34.5
        vmovss    4(%rcx), %xmm2                                #34.5
        vmovss    8(%rcx), %xmm4                                #34.5
        vmovss    12(%rcx), %xmm6                               #34.5
        vmovss    16(%rcx), %xmm8                               #34.5
        vmovss    20(%rcx), %xmm10                              #34.5
        vmovss    24(%rcx), %xmm12                              #34.5
        vmovss    28(%rcx), %xmm14                              #34.5
        vaddss    (%r13,%rdx,4), %xmm0, %xmm1                   #34.5
        vaddss    4(%r13,%rdx,4), %xmm2, %xmm3                  #34.5
        vaddss    8(%r13,%rdx,4), %xmm4, %xmm5                  #34.5
        vaddss    12(%r13,%rdx,4), %xmm6, %xmm7                 #34.5
        vaddss    16(%r13,%rdx,4), %xmm8, %xmm9                 #34.5
        vaddss    20(%r13,%rdx,4), %xmm10, %xmm11               #34.5
        vaddss    24(%r13,%rdx,4), %xmm12, %xmm13               #34.5
        vaddss    28(%r13,%rdx,4), %xmm14, %xmm15               #34.5
        vmovss    %xmm1, (%rcx)                                 #34.5
        vmovss    %xmm3, 4(%rcx)                                #34.5
        vmovss    %xmm5, 8(%rcx)                                #34.5
        vmovss    %xmm7, 12(%rcx)                               #34.5
        vmovss    %xmm9, 16(%rcx)                               #34.5
        vmovss    %xmm11, 20(%rcx)                              #34.5
        vmovss    %xmm13, 24(%rcx)                              #34.5
        vmovss    %xmm15, 28(%rcx)                              #34.5
        cmpl      $200000000, %eax                              #33.3
        jb        ..B1.21       # Prob 99%                      #33.3
                                # LOE rbx r12 r13 r14 r15 eax
..B1.22:                        # Preds ..B1.21
        lea       1(,%rax,8), %eax                              #33.3
        cmpl      $1600000000, %eax                             #33.3
        ja        ..B1.38       # Prob 50%                      #33.3
                                # LOE rax rbx r12 r13 r14 r15
..B1.23:                        # Preds ..B1.22
        movl      %eax, %edx                                    #33.3
        negl      %edx                                          #33.3
        addl      $1600000000, %edx                             #33.3
        jmp       *.2.29_2.switchtab.25(,%rdx,8)                #33.3
                                # LOE rax rbx r12 r13 r14 r15
..1.29_0.TAG.6:
..B1.25:                        # Preds ..B1.23
        lea       5(%rax), %edx                                 #34.5
        vmovss    (%r14,%rdx,4), %xmm0                          #34.5
        vaddss    (%r13,%rdx,4), %xmm0, %xmm1                   #34.5
        vmovss    %xmm1, (%r14,%rdx,4)                          #34.5
                                # LOE rax rbx r12 r13 r14 r15
..1.29_0.TAG.5:
..B1.27:                        # Preds ..B1.23 ..B1.25
        lea       4(%rax), %edx                                 #34.5
        vmovss    (%r14,%rdx,4), %xmm0                          #34.5
        vaddss    (%r13,%rdx,4), %xmm0, %xmm1                   #34.5
        vmovss    %xmm1, (%r14,%rdx,4)                          #34.5
                                # LOE rax rbx r12 r13 r14 r15
..1.29_0.TAG.4:
..B1.29:                        # Preds ..B1.23 ..B1.27
        lea       3(%rax), %edx                                 #34.5
        vmovss    (%r14,%rdx,4), %xmm0                          #34.5
        vaddss    (%r13,%rdx,4), %xmm0, %xmm1                   #34.5
        vmovss    %xmm1, (%r14,%rdx,4)                          #34.5
                                # LOE rax rbx r12 r13 r14 r15
..1.29_0.TAG.3:
..B1.31:                        # Preds ..B1.23 ..B1.29
        lea       2(%rax), %edx                                 #34.5
        vmovss    (%r14,%rdx,4), %xmm0                          #34.5
        vaddss    (%r13,%rdx,4), %xmm0, %xmm1                   #34.5
        vmovss    %xmm1, (%r14,%rdx,4)                          #34.5
                                # LOE rax rbx r12 r13 r14 r15
..1.29_0.TAG.2:
..B1.33:                        # Preds ..B1.23 ..B1.31
        lea       1(%rax), %edx                                 #34.5
        vmovss    (%r14,%rdx,4), %xmm0                          #34.5
        vaddss    (%r13,%rdx,4), %xmm0, %xmm1                   #34.5
        vmovss    %xmm1, (%r14,%rdx,4)                          #34.5
                                # LOE rax rbx r12 r13 r14 r15
..1.29_0.TAG.1:
..B1.35:                        # Preds ..B1.23 ..B1.33
        vmovss    (%r14,%rax,4), %xmm0                          #34.5
        vaddss    (%r13,%rax,4), %xmm0, %xmm1                   #34.5
        vmovss    %xmm1, (%r14,%rax,4)                          #34.5
                                # LOE rbx r12 r13 r14 r15 eax
..1.29_0.TAG.0:
..B1.37:                        # Preds ..B1.23 ..B1.35
        decl      %eax                                          #34.5
        vmovss    (%r14,%rax,4), %xmm0                          #34.5
        vaddss    (%r13,%rax,4), %xmm0, %xmm1                   #34.5
        vmovss    %xmm1, (%r14,%rax,4)                          #34.5
                                # LOE rbx r12 r13 r14 r15
..B1.38:                        # Preds ..B1.22 ..B1.37
        movl      $1, %edi                                      #36.3
        lea       16(%rsp), %rsi                                #36.3
#       clock_gettime(clockid_t, timespec *)
        call      clock_gettime                                 #36.3
                                # LOE rbx r12 r13 r14 r15
..B1.39:                        # Preds ..B1.38
        vxorpd    %xmm0, %xmm0, %xmm0                           #37.55
        vxorpd    %xmm5, %xmm5, %xmm5                           #37.103
        vcvtsi2sdq 24(%rsp), %xmm0, %xmm0                       #37.55
        vcvtsi2sdq 8(%rsp), %xmm5, %xmm5                        #37.103
        imulq     $1000, 16(%rsp), %rax                         #37.47
        imulq     $1000, (%rsp), %rdx                           #37.95
        vmovsd    .L_2il0floatpacket.3(%rip), %xmm6             #37.69
        vxorpd    %xmm1, %xmm1, %xmm1                           #37.47
        vdivsd    %xmm6, %xmm0, %xmm2                           #37.69
        vdivsd    %xmm6, %xmm5, %xmm8                           #37.119
        vcvtsi2sdq %rax, %xmm1, %xmm1                           #37.47
        vxorpd    %xmm4, %xmm4, %xmm4                           #37.95
        lea       32(%rsp), %rsi                                #39.3
        vcvtsi2sdq %rdx, %xmm4, %xmm4                           #37.95
        vaddsd    %xmm2, %xmm1, %xmm3                           #37.69
        movl      $1, %edi                                      #39.3
        vsubsd    %xmm4, %xmm3, %xmm7                           #37.119
        vsubsd    %xmm8, %xmm7, %xmm9                           #37.119
        vmovsd    %xmm9, 40(%rsi)                               #37.119
#       clock_gettime(clockid_t, timespec *)
        call      clock_gettime                                 #39.3
                                # LOE rbx r12 r13 r14 r15
..B1.40:                        # Preds ..B1.39
        xorl      %eax, %eax                                    #40.14
                                # LOE rax rbx r12 r13 r14 r15
..B1.41:                        # Preds ..B1.41 ..B1.40
        vmovups   (%r14,%rax,4), %zmm0                          #41.46
        vaddps    (%r13,%rax,4), %zmm0, %zmm1                   #43.11
        vmovups   %zmm1, (%r14,%rax,4)                          #44.22
        addq      $16, %rax                                     #40.26
        cmpq      $1600000000, %rax                             #40.20
        jl        ..B1.41       # Prob 82%                      #40.20
                                # LOE rax rbx r12 r13 r14 r15
..B1.42:                        # Preds ..B1.41
        movl      $1, %edi                                      #46.3
        lea       48(%rsp), %rsi                                #46.3
        vzeroupper                                              #46.3
#       clock_gettime(clockid_t, timespec *)
        call      clock_gettime                                 #46.3
                                # LOE rbx r12 r15
..B1.43:                        # Preds ..B1.42
        vxorpd    %xmm0, %xmm0, %xmm0                           #47.60
        vxorpd    %xmm5, %xmm5, %xmm5                           #47.112
        vcvtsi2sdq 56(%rsp), %xmm0, %xmm0                       #47.60
        vcvtsi2sdq 40(%rsp), %xmm5, %xmm5                       #47.112
        imulq     $1000, 48(%rsp), %rax                         #47.52
        imulq     $1000, 32(%rsp), %rdx                         #47.104
        vmovsd    .L_2il0floatpacket.3(%rip), %xmm6             #47.76
        vxorpd    %xmm1, %xmm1, %xmm1                           #47.52
        vdivsd    %xmm6, %xmm0, %xmm2                           #47.76
        vdivsd    %xmm6, %xmm5, %xmm8                           #47.130
        vcvtsi2sdq %rax, %xmm1, %xmm1                           #47.52
        vxorpd    %xmm4, %xmm4, %xmm4                           #47.104
        movl      $_ZSt4cout, %edi                              #57.12
        vcvtsi2sdq %rdx, %xmm4, %xmm4                           #47.104
        vaddsd    %xmm2, %xmm1, %xmm3                           #47.76
        movl      $.L_2__STRING.0, %esi                         #57.12
        vsubsd    %xmm4, %xmm3, %xmm7                           #47.130
        vsubsd    %xmm8, %xmm7, %xmm9                           #47.130
        vmovsd    %xmm9, 64(%rsp)                               #47.130
..___tag_value_main.10:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #57.12
..___tag_value_main.11:
                                # LOE rax rbx r12 r15
..B1.44:                        # Preds ..B1.43
        movq      %rax, %rdi                                    #57.32
        vmovsd    64(%rsp), %xmm0                               #57.32
..___tag_value_main.12:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #57.32
..___tag_value_main.13:
                                # LOE rax rbx r12 r15
..B1.45:                        # Preds ..B1.44
        movq      %rax, %rdi                                    #57.58
        movl      $.L_2__STRING.1, %esi                         #57.58
..___tag_value_main.14:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #57.58
..___tag_value_main.15:
                                # LOE rax rbx r12 r15
..B1.46:                        # Preds ..B1.45
        movq      %rax, %rdi                                    #57.82
        vmovsd    72(%rsp), %xmm0                               #57.82
..___tag_value_main.16:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #57.82
..___tag_value_main.17:
                                # LOE rax rbx r12 r15
..B1.47:                        # Preds ..B1.46
        movq      %rax, %rdi                                    #57.105
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #57.105
..___tag_value_main.18:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #57.105
..___tag_value_main.19:
                                # LOE rbx r12 r15
..B1.48:                        # Preds ..B1.47
        movl      $.2.29_2_kmpc_loc_struct_pack.18, %edi        #58.10
        xorl      %eax, %eax                                    #58.10
..___tag_value_main.20:
        call      __kmpc_end                                    #58.10
..___tag_value_main.21:
                                # LOE rbx r12 r15
..B1.49:                        # Preds ..B1.48
        xorl      %eax, %eax                                    #58.10
        addq      $112, %rsp                                    #58.10
	.cfi_restore 14
        popq      %r14                                          #58.10
	.cfi_restore 13
        popq      %r13                                          #58.10
        movq      %rbp, %rsp                                    #58.10
        popq      %rbp                                          #58.10
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #58.10
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.50:                        # Preds ..B1.5                  # Infreq
        xorl      %eax, %eax                                    #25.3
        jmp       ..B1.15       # Prob 100%                     #25.3
        .align    16,0x90
	.cfi_endproc
                                # LOE rbx r12 r13 r14 r15 eax
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
	.align 4
	.align 4
.2.29_2_kmpc_loc_struct_pack.7:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.29_2__kmpc_loc_pack.6
	.align 4
.2.29_2__kmpc_loc_pack.6:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	56
	.byte	59
	.byte	49
	.byte	56
	.byte	59
	.byte	59
	.space 3, 0x00 	# pad
	.align 4
.2.29_2_kmpc_loc_struct_pack.18:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.29_2__kmpc_loc_pack.17
	.align 4
.2.29_2__kmpc_loc_pack.17:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	53
	.byte	56
	.byte	59
	.byte	53
	.byte	56
	.byte	59
	.byte	59
	.section .rodata, "a"
	.align 64
	.align 8
.2.29_2.switchtab.25:
	.quad	..1.29_0.TAG.0
	.quad	..1.29_0.TAG.1
	.quad	..1.29_0.TAG.2
	.quad	..1.29_0.TAG.3
	.quad	..1.29_0.TAG.4
	.quad	..1.29_0.TAG.5
	.quad	..1.29_0.TAG.6
	.data
# -- End  main
	.section .text._ZNSt11char_traitsIcE6lengthEPKc, "xaG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
..TXTST1:
# -- Begin  _ZNSt11char_traitsIcE6lengthEPKc
	.section .text._ZNSt11char_traitsIcE6lengthEPKc, "xaG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt11char_traitsIcE6lengthEPKc
# --- std::char_traits<char>::length(const std::char_traits<char>::char_type *)
_ZNSt11char_traitsIcE6lengthEPKc:
# parameter 1: %rdi
..B2.1:                         # Preds ..B2.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.31:
..L32:
                                                         #259.7
        pushq     %rsi                                          #259.7
	.cfi_def_cfa_offset 16
        movq      %rdi, %rdx                                    #259.16
        movq      %rdx, %rcx                                    #259.16
        andq      $-16, %rdx                                    #259.16
        vpxor     %xmm0, %xmm0, %xmm0                           #259.16
        vpcmpeqb  (%rdx), %xmm0, %xmm0                          #259.16
        vpmovmskb %xmm0, %eax                                   #259.16
        andl      $15, %ecx                                     #259.16
        shrl      %cl, %eax                                     #259.16
        bsf       %eax, %eax                                    #259.16
        jne       ..L34         # Prob 60%                      #259.16
        movq      %rdx, %rax                                    #259.16
        addq      %rcx, %rdx                                    #259.16
        call      __intel_sse4_strlen                           #259.16
..L34:                                                          #
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.4:                         # Preds ..B2.1
        popq      %rcx                                          #259.16
	.cfi_def_cfa_offset 8
        ret                                                     #259.16
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt11char_traitsIcE6lengthEPKc,@function
	.size	_ZNSt11char_traitsIcE6lengthEPKc,.-_ZNSt11char_traitsIcE6lengthEPKc
	.data
# -- End  _ZNSt11char_traitsIcE6lengthEPKc
	.text
# -- Begin  __sti__$E
	.text
# mark_begin;
       .align    16,0x90
# --- __sti__$E()
__sti__$E:
..B3.1:                         # Preds ..B3.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value___sti__$E.37:
..L38:
                                                         #
        pushq     %rsi                                          #
	.cfi_def_cfa_offset 16
        movl      $_ZN32_INTERNAL_10_MatMul_cpp_856f52a9St8__ioinitE, %edi #74.25
..___tag_value___sti__$E.40:
#       std::ios_base::Init::Init(std::ios_base::Init *)
        call      _ZNSt8ios_base4InitC1Ev                       #74.25
..___tag_value___sti__$E.41:
                                # LOE rbx rbp r12 r13 r14 r15
..B3.2:                         # Preds ..B3.1
        movl      $_ZNSt8ios_base4InitD1Ev, %edi                #74.25
        movl      $_ZN32_INTERNAL_10_MatMul_cpp_856f52a9St8__ioinitE, %esi #74.25
        movl      $__dso_handle, %edx                           #74.25
        addq      $8, %rsp                                      #74.25
	.cfi_def_cfa_offset 8
#       __cxa_atexit()
        jmp       __cxa_atexit                                  #74.25
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	__sti__$E,@function
	.size	__sti__$E,.-__sti__$E
	.data
# -- End  __sti__$E
	.bss
	.align 4
	.align 1
_ZN32_INTERNAL_10_MatMul_cpp_856f52a9St8__ioinitE:
	.type	_ZN32_INTERNAL_10_MatMul_cpp_856f52a9St8__ioinitE,@object
	.size	_ZN32_INTERNAL_10_MatMul_cpp_856f52a9St8__ioinitE,1
	.space 1	# pad
	.section .rodata, "a"
	.space 8, 0x00 	# pad
	.align 64
.L_2il0floatpacket.1:
	.long	0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,64
	.align 64
.L_2il0floatpacket.2:
	.long	0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,64
	.align 64
.L_2il0floatpacket.4:
	.long	0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008,0x00000009,0x0000000a,0x0000000b,0x0000000c,0x0000000d,0x0000000e,0x0000000f,0x00000010
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,64
	.align 64
.L_2il0floatpacket.5:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008,0x00000009,0x0000000a,0x0000000b,0x0000000c,0x0000000d,0x0000000e,0x0000000f
	.type	.L_2il0floatpacket.5,@object
	.size	.L_2il0floatpacket.5,64
	.align 8
.L_2il0floatpacket.3:
	.long	0x00000000,0x412e8480
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,8
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.0:
	.long	1920233033
	.long	1769172585
	.long	1767120995
	.long	540697965
	.byte	0
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,17
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	1867391008
	.long	1667585568
	.long	544370548
	.long	1701669204
	.word	8250
	.byte	0
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,19
	.section .ctors, "wa"
	.align 8
__init_0:
	.type	__init_0,@object
	.size	__init_0,8
	.quad	__sti__$E
	.data
	.hidden __dso_handle
# mark_proc_addr_taken __sti__$E;
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
# End
