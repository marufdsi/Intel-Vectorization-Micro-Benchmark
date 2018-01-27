# mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 16.0.0.109 Build 20150815";
# mark_description "";
# mark_description "-S -qopt-report";
	.file "main.cpp"
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
	.cfi_lsda 0xb, main$$LSDA
..___tag_value_main.8:
..L9:
                                                          #74.12
        pushq     %rbp                                          #74.12
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #74.12
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #74.12
        pushq     %r12                                          #74.12
        pushq     %r13                                          #74.12
        pushq     %r14                                          #74.12
        pushq     %r15                                          #74.12
        pushq     %rbx                                          #74.12
        subq      $3544, %rsp                                   #74.12
        xorl      %esi, %esi                                    #74.12
        movl      $3, %edi                                      #74.12
        call      __intel_new_feature_proc_init                 #74.12
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.158:                       # Preds ..B1.1
        stmxcsr   (%rsp)                                        #74.12
        movl      $_ZSt4cout, %edi                              #75.15
        movl      $.L_2__STRING.1, %esi                         #75.15
        orl       $32832, (%rsp)                                #74.12
        ldmxcsr   (%rsp)                                        #74.12
..___tag_value_main.18:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #75.15
..___tag_value_main.19:
                                # LOE rax
..B1.2:                         # Preds ..B1.158
        movq      %rax, %rdi                                    #75.32
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #75.32
..___tag_value_main.20:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #75.32
..___tag_value_main.21:
                                # LOE
..B1.3:                         # Preds ..B1.2
        movl      $4, %esi                                      #19.46
        xorl      %edi, %edi                                    #10.16
        xorl      %r8d, %r8d                                    #16.5
        xorl      %ecx, %ecx                                    #16.5
        xorl      %r9d, %r9d                                    #16.5
        xorl      %ebx, %ebx                                    #16.5
        movq      %rdi, 3536(%rsp)                              #10.16
        xorl      %eax, %eax                                    #16.5
        movd      %esi, %xmm0                                   #19.46
        movq      $0x3ff0000000000000, %rsi                     #25.37
        pshufd    $0, %xmm0, %xmm2                              #19.46
        xorl      %edx, %edx                                    #16.5
        movaps    .L_2il0floatpacket.41(%rip), %xmm1            #25.37
        movdqa    .L_2il0floatpacket.42(%rip), %xmm0            #19.46
                                # LOE rax rdx rsi rdi r8 r9 ecx ebx xmm0 xmm1 xmm2
..B1.4:                         # Preds ..B1.25 ..B1.3
        movl      %ecx, 3240(%rsp,%r9)                          #17.9
        movl      %ecx, 3308(%rsp,%r9)                          #18.9
        incl      %ecx                                          #16.36
        movl      %ecx, %r12d                                   #19.9
        decl      %r12d                                         #19.9
        jle       ..B1.15       # Prob 50%                      #19.9
                                # LOE rax rdx rcx rsi rdi r8 r9 ebx r12d xmm0 xmm1 xmm2
..B1.5:                         # Preds ..B1.4
        cmpl      $8, %r12d                                     #19.9
        jb        ..B1.154      # Prob 10%                      #19.9
                                # LOE rax rdx rcx rsi rdi r8 r9 ebx r12d xmm0 xmm1 xmm2
..B1.6:                         # Preds ..B1.5
        movl      %r12d, %r11d                                  #19.9
        movq      %rdx, %r15                                    #19.9
        andl      $-8, %r11d                                    #19.9
        lea       2048(%rsp,%r8), %r14                          #24.17
        movl      %r11d, %r10d                                  #19.9
        movdqa    %xmm0, %xmm3                                  #19.46
        lea       (%rsp,%rdi), %r13                             #25.17
                                # LOE rax rdx rcx rsi rdi r8 r9 r10 r13 r14 r15 ebx r11d r12d xmm0 xmm1 xmm2 xmm3
..B1.7:                         # Preds ..B1.7 ..B1.6
        movdqa    %xmm3, (%r14,%r15,4)                          #24.17
        paddd     %xmm2, %xmm3                                  #19.46
        movaps    %xmm1, (%r13,%r15,8)                          #25.17
        movaps    %xmm1, 16(%r13,%r15,8)                        #25.17
        movdqa    %xmm3, 16(%r14,%r15,4)                        #24.17
        paddd     %xmm2, %xmm3                                  #19.46
        movaps    %xmm1, 32(%r13,%r15,8)                        #25.17
        movaps    %xmm1, 48(%r13,%r15,8)                        #25.17
        addq      $8, %r15                                      #19.9
        cmpq      %r10, %r15                                    #19.9
        jb        ..B1.7        # Prob 93%                      #19.9
                                # LOE rax rdx rcx rsi rdi r8 r9 r10 r13 r14 r15 ebx r11d r12d xmm0 xmm1 xmm2 xmm3
..B1.9:                         # Preds ..B1.7 ..B1.154
        movl      %ebx, %r10d                                   #19.9
        lea       1(%r11), %r13d                                #19.9
        cmpl      %r13d, %r12d                                  #19.9
        jb        ..B1.15       # Prob 0%                       #19.9
                                # LOE rax rdx rcx rsi rdi r8 r9 ebx r10d r11d r12d xmm0 xmm1 xmm2
..B1.10:                        # Preds ..B1.9
        subl      %r11d, %r12d                                  #19.9
        lea       2048(%rsp,%r8), %r14                          #24.17
        lea       (%rsp,%rdi), %r13                             #25.17
                                # LOE rax rdx rcx rsi rdi r8 r9 r13 r14 ebx r10d r11d r12d xmm0 xmm1 xmm2
..B1.11:                        # Preds ..B1.11 ..B1.10
        movslq    %r11d, %r11                                   #24.17
        incl      %r10d                                         #19.9
        movl      %r11d, (%r14,%r11,4)                          #24.17
        movq      %rsi, (%r13,%r11,8)                           #25.17
        incl      %r11d                                         #19.9
        cmpl      %r12d, %r10d                                  #19.9
        jb        ..B1.11       # Prob 93%                      #19.9
                                # LOE rax rdx rcx rsi rdi r8 r9 r13 r14 ebx r10d r11d r12d xmm0 xmm1 xmm2
..B1.15:                        # Preds ..B1.11 ..B1.4 ..B1.9
        lea       (%r8,%r9), %r10                               #21.17
        movl      $-1, 2048(%rsp,%r10)                          #21.17
        lea       (%rdi,%rax), %r11                             #22.17
        movq      %rdx, (%rsp,%r11)                             #22.17
                                # LOE rax rdx rcx rsi rdi r8 r9 ebx xmm0 xmm1 xmm2
..B1.16:                        # Preds ..B1.15
        lea       1(%rcx), %r10d                                #19.9
        cmpl      $16, %r10d                                    #19.9
        ja        ..B1.25       # Prob 50%                      #19.9
                                # LOE rax rdx rcx rsi rdi r8 r9 ebx r10d xmm0 xmm1 xmm2
..B1.17:                        # Preds ..B1.16
        movl      %ecx, %r11d                                   #19.9
        negl      %r11d                                         #19.9
        addl      $16, %r11d                                    #19.9
        cmpl      $8, %r11d                                     #19.9
        jb        ..B1.153      # Prob 10%                      #19.9
                                # LOE rax rdx rcx rsi rdi r8 r9 r11 ebx r10d xmm0 xmm1 xmm2
..B1.18:                        # Preds ..B1.17
        movd      %ecx, %xmm3                                   #19.46
        lea       2(%rcx), %r12d                                #19.46
        movd      %r10d, %xmm4                                  #19.46
        lea       3(%rcx), %r10d                                #19.46
        lea       2048(%rsp,%r8), %r14                          #24.17
        punpcklqdq %xmm4, %xmm3                                 #19.46
        lea       (%rsp,%rdi), %r13                             #25.17
        movd      %r12d, %xmm6                                  #19.46
        movq      %rdx, %r12                                    #19.9
        movd      %r10d, %xmm5                                  #19.46
        punpcklqdq %xmm5, %xmm6                                 #19.46
        lea       (%r14,%rcx,4), %r10                           #24.17
        shufps    $136, %xmm6, %xmm3                            #19.46
        lea       (%r13,%rcx,8), %r14                           #25.17
        movl      %r11d, %r13d                                  #19.9
        andl      $-8, %r13d                                    #19.9
        .align    16,0x90
                                # LOE rax rdx rsi rdi r8 r9 r10 r11 r12 r13 r14 ecx ebx xmm0 xmm1 xmm2 xmm3
..B1.19:                        # Preds ..B1.19 ..B1.18
        movdqu    %xmm3, (%r10,%r12,4)                          #24.17
        paddd     %xmm2, %xmm3                                  #19.46
        movsd     %xmm1, (%r14,%r12,8)                          #25.17
        movhpd    %xmm1, 8(%r14,%r12,8)                         #25.17
        movsd     %xmm1, 16(%r14,%r12,8)                        #25.17
        movhpd    %xmm1, 24(%r14,%r12,8)                        #25.17
        movdqu    %xmm3, 16(%r10,%r12,4)                        #24.17
        movsd     %xmm1, 32(%r14,%r12,8)                        #25.17
        paddd     %xmm2, %xmm3                                  #19.46
        movhpd    %xmm1, 40(%r14,%r12,8)                        #25.17
        movsd     %xmm1, 48(%r14,%r12,8)                        #25.17
        movhpd    %xmm1, 56(%r14,%r12,8)                        #25.17
        addq      $8, %r12                                      #19.9
        cmpq      %r13, %r12                                    #19.9
        jb        ..B1.19       # Prob 93%                      #19.9
                                # LOE rax rdx rsi rdi r8 r9 r10 r11 r12 r13 r14 ecx ebx xmm0 xmm1 xmm2 xmm3
..B1.21:                        # Preds ..B1.19 ..B1.153
        cmpq      %r11, %r13                                    #19.9
        jae       ..B1.25       # Prob 0%                       #19.9
                                # LOE rax rdx rcx rsi rdi r8 r9 r11 r13 ebx xmm0 xmm1 xmm2
..B1.22:                        # Preds ..B1.21
        movl      %ecx, %ecx                                    #24.17
        lea       2048(%rsp,%r8), %r10                          #24.17
        lea       (%rsp,%rdi), %r12                             #25.17
        lea       (%r10,%rcx,4), %r10                           #24.17
        lea       (%r12,%rcx,8), %r12                           #25.17
                                # LOE rax rdx rsi rdi r8 r9 r10 r11 r12 r13 ecx ebx xmm0 xmm1 xmm2
..B1.23:                        # Preds ..B1.23 ..B1.22
        movl      %r13d, %r14d                                  #24.17
        addl      %ecx, %r14d                                   #19.46
        movl      %r14d, (%r10,%r13,4)                          #24.17
        movq      %rsi, (%r12,%r13,8)                           #25.17
        incq      %r13                                          #19.9
        cmpq      %r11, %r13                                    #19.9
        jb        ..B1.23       # Prob 93%                      #19.9
                                # LOE rax rdx rsi rdi r8 r9 r10 r11 r12 r13 ecx ebx xmm0 xmm1 xmm2
..B1.25:                        # Preds ..B1.23 ..B1.16 ..B1.21
        addq      $128, %rdi                                    #16.36
        addq      $64, %r8                                      #16.36
        addq      $4, %r9                                       #16.36
        addq      $8, %rax                                      #16.36
        cmpl      $16, %ecx                                     #16.5
        jb        ..B1.4        # Prob 99%                      #16.5
                                # LOE rax rdx rcx rsi rdi r8 r9 ebx xmm0 xmm1 xmm2
..B1.26:                        # Preds ..B1.25
        movl      $16, %esi                                     #32.128
        lea       3072(%rsp), %rdi                              #32.128
        movq      $0, 152(%rdi)                                 #32.128
        lea       3224(%rsp), %rdx                              #32.128
        lea       3436(%rsp), %rcx                              #32.128
..___tag_value_main.22:
#       std::vector<double, std::allocator<double>>::vector(std::vector<double, std::allocator<double>> *, std::vector<double, std::allocator<double>>::size_type, const std::vector<double, std::allocator<double>>::value_type &, const std::vector<double, std::allocator<double>>::allocator_type &)
        call      _ZNSt6vectorIdSaIdEEC1EmRKdRKS0_              #32.128
..___tag_value_main.23:
                                # LOE
..B1.27:                        # Preds ..B1.26
        movl      $16, %esi                                     #32.108
        lea       3096(%rsp), %rdi                              #32.108
        lea       3072(%rsp), %rdx                              #32.108
        lea       3437(%rsp), %rcx                              #32.108
..___tag_value_main.24:
#       std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::vector(std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>> *, std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::size_type, const std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::value_type &, const std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::allocator_type &)
        call      _ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_ #32.108
..___tag_value_main.25:
                                # LOE
..B1.28:                        # Preds ..B1.27
        movl      $32, %esi                                     #32.70
        lea       3120(%rsp), %rdi                              #32.70
        lea       3096(%rsp), %rdx                              #32.70
        lea       3438(%rsp), %rcx                              #32.70
..___tag_value_main.26:
#       std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::vector(std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>> *, std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::size_type, const std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::value_type &, const std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::allocator_type &)
        call      _ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_ #32.70
..___tag_value_main.27:
                                # LOE
..B1.29:                        # Preds ..B1.28
        movq      3096(%rsp), %r12                              #32.48
        movq      3104(%rsp), %rbx                              #32.48
        cmpq      %rbx, %r12                                    #102.22
        je        ..B1.35       # Prob 1%                       #102.22
                                # LOE rbx r12
..B1.31:                        # Preds ..B1.29 ..B1.33
        movq      (%r12), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B1.33       # Prob 72%                      #173.6
                                # LOE rbx rdi r12
..B1.32:                        # Preds ..B1.31
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx r12
..B1.33:                        # Preds ..B1.32 ..B1.31
        addq      $24, %r12                                     #102.32
        cmpq      %rbx, %r12                                    #102.22
        jne       ..B1.31       # Prob 82%                      #102.22
                                # LOE rbx r12
..B1.34:                        # Preds ..B1.33
        movq      3096(%rsp), %r12                              #32.48
                                # LOE r12
..B1.35:                        # Preds ..B1.34 ..B1.29
        testq     %r12, %r12                                    #173.6
        je        ..B1.37       # Prob 72%                      #173.6
                                # LOE r12
..B1.36:                        # Preds ..B1.35
        movq      %r12, %rdi                                    #110.9
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE
..B1.37:                        # Preds ..B1.36 ..B1.35
        movq      3072(%rsp), %rdi                              #32.48
        testq     %rdi, %rdi                                    #173.6
        je        ..B1.39       # Prob 72%                      #173.6
                                # LOE rdi
..B1.38:                        # Preds ..B1.37
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE
..B1.39:                        # Preds ..B1.38 ..B1.37
        movl      $16, %esi                                     #33.117
        lea       3144(%rsp), %rdi                              #33.117
        movl      $0, 160(%rdi)                                 #33.117
        lea       3304(%rsp), %rdx                              #33.117
        lea       3439(%rsp), %rcx                              #33.117
..___tag_value_main.28:
#       std::vector<int, std::allocator<int>>::vector(std::vector<int, std::allocator<int>> *, std::vector<int, std::allocator<int>>::size_type, const std::vector<int, std::allocator<int>>::value_type &, const std::vector<int, std::allocator<int>>::allocator_type &)
        call      _ZNSt6vectorIiSaIiEEC1EmRKiRKS0_              #33.117
..___tag_value_main.29:
                                # LOE
..B1.40:                        # Preds ..B1.39
        movl      $16, %esi                                     #33.100
        lea       3168(%rsp), %rdi                              #33.100
        lea       3144(%rsp), %rdx                              #33.100
        lea       3528(%rsp), %rcx                              #33.100
..___tag_value_main.30:
#       std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::vector(std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>> *, std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::size_type, const std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::value_type &, const std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::allocator_type &)
        call      _ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_ #33.100
..___tag_value_main.31:
                                # LOE
..B1.41:                        # Preds ..B1.40
        movl      $32, %esi                                     #33.65
        lea       3192(%rsp), %rdi                              #33.65
        lea       3168(%rsp), %rdx                              #33.65
        lea       3529(%rsp), %rcx                              #33.65
..___tag_value_main.32:
#       std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::vector(std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>> *, std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::size_type, const std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::value_type &, const std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::allocator_type &)
        call      _ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_ #33.65
..___tag_value_main.33:
                                # LOE
..B1.42:                        # Preds ..B1.41
        movq      3168(%rsp), %r12                              #33.45
        movq      3176(%rsp), %rbx                              #33.45
        cmpq      %rbx, %r12                                    #102.22
        je        ..B1.48       # Prob 1%                       #102.22
                                # LOE rbx r12
..B1.44:                        # Preds ..B1.42 ..B1.46
        movq      (%r12), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B1.46       # Prob 72%                      #173.6
                                # LOE rbx rdi r12
..B1.45:                        # Preds ..B1.44
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx r12
..B1.46:                        # Preds ..B1.45 ..B1.44
        addq      $24, %r12                                     #102.32
        cmpq      %rbx, %r12                                    #102.22
        jne       ..B1.44       # Prob 82%                      #102.22
                                # LOE rbx r12
..B1.47:                        # Preds ..B1.46
        movq      3168(%rsp), %r12                              #33.45
                                # LOE r12
..B1.48:                        # Preds ..B1.47 ..B1.42
        testq     %r12, %r12                                    #173.6
        je        ..B1.50       # Prob 72%                      #173.6
                                # LOE r12
..B1.49:                        # Preds ..B1.48
        movq      %r12, %rdi                                    #110.9
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE
..B1.50:                        # Preds ..B1.49 ..B1.48
        movq      3144(%rsp), %rdi                              #33.45
        testq     %rdi, %rdi                                    #173.6
        je        ..B1.52       # Prob 72%                      #173.6
                                # LOE rdi
..B1.51:                        # Preds ..B1.50
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE
..B1.52:                        # Preds ..B1.51 ..B1.50
        movq      3120(%rsp), %rbx                              #47.17
        xorl      %r8d, %r8d                                    #34.5
        movslq    3360(%rsp), %r12                              #45.21
        movq      %rbx, 3216(%rsp)                              #47.17
        movq      3192(%rsp), %rbx                              #51.9
        movslq    3356(%rsp), %r9                               #45.21
        movq      %r12, 3472(%rsp)                              #45.21
        movslq    3368(%rsp), %r12                              #45.21
        movslq    3308(%rsp), %rdx                              #45.21
        movslq    3312(%rsp), %rcx                              #45.21
        movslq    3328(%rsp), %rax                              #45.21
        movslq    3344(%rsp), %r14                              #45.21
        movslq    3348(%rsp), %r13                              #45.21
        movq      %r9, 3448(%rsp)                               #45.21
        movslq    3316(%rsp), %rdi                              #45.21
        movslq    3340(%rsp), %r15                              #45.21
        movslq    3364(%rsp), %r9                               #45.21
        movq      %r12, 3488(%rsp)                              #45.21
        xorl      %r12d, %r12d                                  #34.5
        movq      %rdx, 3464(%rsp)                              #45.21
        movq      %rcx, 3440(%rsp)                              #45.21
        movq      %rax, 3456(%rsp)                              #45.21
        movq      %r13, 3512(%rsp)                              #34.5
        movq      %r14, 3504(%rsp)                              #34.5
        movq      120(%rbx), %rsi                               #771.18
        movslq    3320(%rsp), %rcx                              #45.21
        movslq    3324(%rsp), %rdx                              #45.21
        movslq    3332(%rsp), %rax                              #45.21
        movslq    3336(%rsp), %r10                              #45.21
        movslq    3352(%rsp), %r11                              #45.21
        movq      3216(%rsp), %r13                              #34.5
        movq      3536(%rsp), %r14                              #34.5
        movq      %r9, 3480(%rsp)                               #45.21
        xorl      %r9d, %r9d                                    #34.5
        movsd     .L_2il0floatpacket.43(%rip), %xmm0            #47.54
        movq      %rbx, 3232(%rsp)                              #34.5
        movq      %r15, 3520(%rsp)                              #34.5
        movq      %rdi, 3496(%rsp)                              #34.5
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.53:                        # Preds ..B1.85 ..B1.52
        movslq    3240(%rsp,%r8,4), %rbx                        #38.20
        cmpq      %r14, %rbx                                    #39.9
        movl      %r8d, 3372(%rsp,%r8,4)                        #43.9
        cmovg     %rbx, %r14                                    #39.9
        cmpl      $-1, 2048(%rsp,%r9)                           #46.39
        je        ..B1.55       # Prob 40%                      #46.39
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.54:                        # Preds ..B1.53
        movq      120(%r13), %rbx                               #771.18
        movq      3464(%rsp), %r15                              #47.48
        movq      (%rbx,%r12), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.55:                        # Preds ..B1.53 ..B1.54
        cmpl      $-1, 2052(%rsp,%r9)                           #46.39
        je        ..B1.57       # Prob 40%                      #46.39
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.56:                        # Preds ..B1.55
        movq      120(%r13), %rbx                               #771.18
        movq      3440(%rsp), %r15                              #47.48
        movq      (%rbx,%r12), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.57:                        # Preds ..B1.55 ..B1.56
        cmpl      $-1, 2056(%rsp,%r9)                           #46.39
        je        ..B1.59       # Prob 40%                      #46.39
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.58:                        # Preds ..B1.57
        movq      120(%r13), %rbx                               #771.18
        movq      3496(%rsp), %r15                              #47.48
        movq      (%rbx,%r12), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.59:                        # Preds ..B1.57 ..B1.58
        cmpl      $-1, 2060(%rsp,%r9)                           #46.39
        je        ..B1.61       # Prob 40%                      #46.39
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.60:                        # Preds ..B1.59
        movq      120(%r13), %rbx                               #771.18
        movq      (%rbx,%r12), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%rcx,8)                          #47.48
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.61:                        # Preds ..B1.59 ..B1.60
        cmpl      $-1, 2064(%rsp,%r9)                           #46.39
        je        ..B1.63       # Prob 40%                      #46.39
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.62:                        # Preds ..B1.61
        movq      120(%r13), %rbx                               #771.18
        movq      (%rbx,%r12), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%rdx,8)                          #47.48
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.63:                        # Preds ..B1.61 ..B1.62
        cmpl      $-1, 2068(%rsp,%r9)                           #46.39
        je        ..B1.65       # Prob 40%                      #46.39
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.64:                        # Preds ..B1.63
        movq      120(%r13), %rbx                               #771.18
        movq      3456(%rsp), %r15                              #47.48
        movq      (%rbx,%r12), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.65:                        # Preds ..B1.63 ..B1.64
        cmpl      $-1, 2072(%rsp,%r9)                           #46.39
        je        ..B1.67       # Prob 40%                      #46.39
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.66:                        # Preds ..B1.65
        movq      120(%r13), %rbx                               #771.18
        movq      (%rbx,%r12), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%rax,8)                          #47.48
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.67:                        # Preds ..B1.65 ..B1.66
        cmpl      $-1, 2076(%rsp,%r9)                           #46.39
        je        ..B1.69       # Prob 40%                      #46.39
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.68:                        # Preds ..B1.67
        movq      120(%r13), %rbx                               #771.18
        movq      (%rbx,%r12), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r10,8)                          #47.48
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.69:                        # Preds ..B1.67 ..B1.68
        cmpl      $-1, 2080(%rsp,%r9)                           #46.39
        je        ..B1.71       # Prob 40%                      #46.39
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.70:                        # Preds ..B1.69
        movq      120(%r13), %rbx                               #771.18
        movq      3520(%rsp), %r15                              #47.48
        movq      (%rbx,%r12), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.71:                        # Preds ..B1.69 ..B1.70
        cmpl      $-1, 2084(%rsp,%r9)                           #46.39
        je        ..B1.73       # Prob 40%                      #46.39
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.72:                        # Preds ..B1.71
        movq      120(%r13), %rbx                               #771.18
        movq      3504(%rsp), %r15                              #47.48
        movq      (%rbx,%r12), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.73:                        # Preds ..B1.71 ..B1.72
        cmpl      $-1, 2088(%rsp,%r9)                           #46.39
        je        ..B1.75       # Prob 40%                      #46.39
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.74:                        # Preds ..B1.73
        movq      120(%r13), %rbx                               #771.18
        movq      3512(%rsp), %r15                              #47.48
        movq      (%rbx,%r12), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.75:                        # Preds ..B1.73 ..B1.74
        cmpl      $-1, 2092(%rsp,%r9)                           #46.39
        je        ..B1.77       # Prob 40%                      #46.39
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.76:                        # Preds ..B1.75
        movq      120(%r13), %rbx                               #771.18
        movq      (%rbx,%r12), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r11,8)                          #47.48
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.77:                        # Preds ..B1.75 ..B1.76
        cmpl      $-1, 2096(%rsp,%r9)                           #46.39
        je        ..B1.79       # Prob 40%                      #46.39
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.78:                        # Preds ..B1.77
        movq      120(%r13), %rbx                               #771.18
        movq      3448(%rsp), %r15                              #47.48
        movq      (%rbx,%r12), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.79:                        # Preds ..B1.77 ..B1.78
        cmpl      $-1, 2100(%rsp,%r9)                           #46.39
        je        ..B1.81       # Prob 40%                      #46.39
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.80:                        # Preds ..B1.79
        movq      120(%r13), %rbx                               #771.18
        movq      3472(%rsp), %r15                              #47.48
        movq      (%rbx,%r12), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.81:                        # Preds ..B1.79 ..B1.80
        cmpl      $-1, 2104(%rsp,%r9)                           #46.39
        je        ..B1.83       # Prob 40%                      #46.39
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.82:                        # Preds ..B1.81
        movq      120(%r13), %rbx                               #771.18
        movq      3480(%rsp), %r15                              #47.48
        movq      (%rbx,%r12), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.83:                        # Preds ..B1.81 ..B1.82
        cmpl      $-1, 2108(%rsp,%r9)                           #46.39
        je        ..B1.85       # Prob 40%                      #46.39
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.84:                        # Preds ..B1.83
        movq      120(%r13), %rbx                               #771.18
        movq      3488(%rsp), %r15                              #47.48
        movq      (%rbx,%r12), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.85:                        # Preds ..B1.83 ..B1.84
        movq      120(%r13), %r15                               #771.18
        lea       (%r8,%r8,2), %rbx                             #771.18
        movslq    3308(%rsp,%r8,4), %rdi                        #50.48
        incq      %r8                                           #34.5
        addq      $24, %r12                                     #34.5
        addq      $64, %r9                                      #34.5
        movq      (%r15,%rbx,8), %r15                           #771.18
        cmpq      $16, %r8                                      #34.5
        movq      $0, (%r15,%rdi,8)                             #50.47
        movq      (%rsi,%rbx,8), %rdi                           #1126.25
        movq      %rdi, 8(%rsi,%rbx,8)                          #1353.2
        jb        ..B1.53       # Prob 91%                      #34.5
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B1.86:                        # Preds ..B1.85
        movq      %r14, 3536(%rsp)                              #
        xorl      %eax, %eax                                    #53.20
        movq      3232(%rsp), %rbx                              #
        cmpq      $0, 3536(%rsp)                                #53.33
        jle       ..B1.95       # Prob 3%                       #53.33
                                # LOE rax rbx r14 ebx r14d bl bh r14b xmm0
..B1.87:                        # Preds ..B1.86
        movq      3216(%rsp), %r8                               #
        movq      %rbx, %rdi                                    #
        movq      %r14, %rdx                                    #
        xorl      %ecx, %ecx                                    #
                                # LOE rax rdx rcx rdi r8
..B1.88:                        # Preds ..B1.93 ..B1.87
        movq      %rcx, %r12                                    #54.24
        lea       2048(%rsp,%rax,4), %r14                       #58.21
        movq      %r12, %rbx                                    #54.24
        lea       (%rsp,%rax,8), %r15                           #59.29
        movq      %rax, 3216(%rsp)                              #54.24
        movq      %rbx, %r13                                    #54.24
        movq      %rdx, 3536(%rsp)                              #54.24
                                # LOE rbx rdi r8 r12 r13 r14 r15
..B1.89:                        # Preds ..B1.92 ..B1.88
        movsd     (%r13,%r15), %xmm0                            #59.29
        movslq    (%rbx,%r14), %rax                             #58.21
        cmpq      %rax, %r12                                    #60.23
        movsd     %xmm0, 3240(%rsp)                             #59.29
        je        ..B1.92       # Prob 78%                      #60.23
                                # LOE rax rbx rdi r8 r12 r13 r14 r15
..B1.90:                        # Preds ..B1.89
        movq      120(%r8), %rsi                                #771.18
        movslq    3308(%rsp,%rax,4), %rcx                       #61.25
        movslq    3372(%rsp,%r12,4), %rax                       #62.44
        movl      %ecx, %edx                                    #61.25
        movl      %edx, 3232(%rsp)                              #61.23
        lea       (%rax,%rax,2), %rax                           #771.18
        movq      (%rsi,%rax,8), %rsi                           #771.18
        movsd     (%rsi,%rcx,8), %xmm0                          #62.56
        ucomisd   .L_2il0floatpacket.43(%rip), %xmm0            #62.63
        jp        ..B1.91       # Prob 0%                       #62.63
        je        ..B1.127      # Prob 16%                      #62.63
                                # LOE rax rcx rbx rsi rdi r8 r12 r13 r14 r15 edx xmm0
..B1.91:                        # Preds ..B1.130 ..B1.132 ..B1.90
        addsd     3240(%rsp), %xmm0                             #67.52
        movsd     %xmm0, (%rsi,%rcx,8)                          #67.52
                                # LOE rbx rdi r8 r12 r13 r14 r15
..B1.92:                        # Preds ..B1.91 ..B1.89
        incq      %r12                                          #54.52
        addq      $64, %rbx                                     #54.52
        addq      $128, %r13                                    #54.52
        cmpq      $16, %r12                                     #54.37
        jl        ..B1.89       # Prob 82%                      #54.37
                                # LOE rbx rdi r8 r12 r13 r14 r15
..B1.93:                        # Preds ..B1.92
        movq      3216(%rsp), %rax                              #
        xorl      %ecx, %ecx                                    #
        incq      %rax                                          #53.41
        movq      3536(%rsp), %rdx                              #
        cmpq      %rdx, %rax                                    #53.33
        jl        ..B1.88       # Prob 93%                      #53.33
                                # LOE rax rdx rcx rdi r8
..B1.94:                        # Preds ..B1.93
        movq      %rdi, %rbx                                    #
                                # LOE rbx
..B1.95:                        # Preds ..B1.94 ..B1.86
        movq      3200(%rsp), %r12                              #71.5
        cmpq      %r12, %rbx                                    #102.22
        je        ..B1.107      # Prob 1%                       #102.22
                                # LOE rbx r12
..B1.97:                        # Preds ..B1.95 ..B1.105
        movq      (%rbx), %r14                                  #415.23
        movq      8(%rbx), %r13                                 #415.47
        cmpq      %r13, %r14                                    #102.22
        je        ..B1.103      # Prob 1%                       #102.22
                                # LOE rbx r12 r13 r14
..B1.99:                        # Preds ..B1.97 ..B1.101
        movq      (%r14), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B1.101      # Prob 72%                      #173.6
                                # LOE rbx rdi r12 r13 r14
..B1.100:                       # Preds ..B1.99
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx r12 r13 r14
..B1.101:                       # Preds ..B1.100 ..B1.99
        addq      $24, %r14                                     #102.32
        cmpq      %r13, %r14                                    #102.22
        jne       ..B1.99       # Prob 82%                      #102.22
                                # LOE rbx r12 r13 r14
..B1.103:                       # Preds ..B1.101 ..B1.97
        movq      (%rbx), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B1.105      # Prob 72%                      #173.6
                                # LOE rbx rdi r12
..B1.104:                       # Preds ..B1.103
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx r12
..B1.105:                       # Preds ..B1.104 ..B1.103
        addq      $24, %rbx                                     #102.32
        cmpq      %r12, %rbx                                    #102.22
        jne       ..B1.97       # Prob 82%                      #102.22
                                # LOE rbx r12
..B1.106:                       # Preds ..B1.105
        movq      3192(%rsp), %rbx                              #71.5
                                # LOE rbx
..B1.107:                       # Preds ..B1.106 ..B1.95
        testq     %rbx, %rbx                                    #173.6
        je        ..B1.109      # Prob 72%                      #173.6
                                # LOE rbx
..B1.108:                       # Preds ..B1.107
        movq      %rbx, %rdi                                    #110.9
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE
..B1.109:                       # Preds ..B1.108 ..B1.107
        movq      3120(%rsp), %r12                              #71.5
        movq      3128(%rsp), %rbx                              #71.5
        cmpq      %rbx, %r12                                    #102.22
        je        ..B1.121      # Prob 1%                       #102.22
                                # LOE rbx r12
..B1.111:                       # Preds ..B1.109 ..B1.119
        movq      (%r12), %r14                                  #415.23
        movq      8(%r12), %r13                                 #415.47
        cmpq      %r13, %r14                                    #102.22
        je        ..B1.117      # Prob 1%                       #102.22
                                # LOE rbx r12 r13 r14
..B1.113:                       # Preds ..B1.111 ..B1.115
        movq      (%r14), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B1.115      # Prob 72%                      #173.6
                                # LOE rbx rdi r12 r13 r14
..B1.114:                       # Preds ..B1.113
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx r12 r13 r14
..B1.115:                       # Preds ..B1.114 ..B1.113
        addq      $24, %r14                                     #102.32
        cmpq      %r13, %r14                                    #102.22
        jne       ..B1.113      # Prob 82%                      #102.22
                                # LOE rbx r12 r13 r14
..B1.117:                       # Preds ..B1.115 ..B1.111
        movq      (%r12), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B1.119      # Prob 72%                      #173.6
                                # LOE rbx rdi r12
..B1.118:                       # Preds ..B1.117
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx r12
..B1.119:                       # Preds ..B1.118 ..B1.117
        addq      $24, %r12                                     #102.32
        cmpq      %rbx, %r12                                    #102.22
        jne       ..B1.111      # Prob 82%                      #102.22
                                # LOE rbx r12
..B1.120:                       # Preds ..B1.119
        movq      3120(%rsp), %r12                              #71.5
                                # LOE r12
..B1.121:                       # Preds ..B1.120 ..B1.109
        testq     %r12, %r12                                    #173.6
        je        ..B1.123      # Prob 72%                      #173.6
                                # LOE r12
..B1.122:                       # Preds ..B1.121
        movq      %r12, %rdi                                    #110.9
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE
..B1.123:                       # Preds ..B1.122 ..B1.121
        movl      $_ZSt4cout, %edi                              #80.15
        movl      $.L_2__STRING.2, %esi                         #80.15
..___tag_value_main.34:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #80.15
..___tag_value_main.35:
                                # LOE rax
..B1.124:                       # Preds ..B1.123
        movq      %rax, %rdi                                    #80.38
        xorl      %esi, %esi                                    #80.38
..___tag_value_main.36:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, int)
        call      _ZNSolsEi                                     #80.38
..___tag_value_main.37:
                                # LOE rax
..B1.125:                       # Preds ..B1.124
        movq      %rax, %rdi                                    #80.47
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #80.47
..___tag_value_main.38:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #80.47
..___tag_value_main.39:
                                # LOE
..B1.126:                       # Preds ..B1.125
        xorl      %eax, %eax                                    #81.12
        addq      $3544, %rsp                                   #81.12
	.cfi_restore 3
        popq      %rbx                                          #81.12
	.cfi_restore 15
        popq      %r15                                          #81.12
	.cfi_restore 14
        popq      %r14                                          #81.12
	.cfi_restore 13
        popq      %r13                                          #81.12
	.cfi_restore 12
        popq      %r12                                          #81.12
        movq      %rbp, %rsp                                    #81.12
        popq      %rbp                                          #81.12
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #81.12
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.127:                       # Preds ..B1.90                 # Infreq
        movq      120(%rdi), %r10                               #771.18
        movq      $0, (%rsi,%rcx,8)                             #64.56
        lea       (%r10,%rax,8), %r9                            #771.18
        movq      8(%r9), %rsi                                  #903.6
        cmpq      16(%r9), %rsi                                 #903.33
        je        ..B1.131      # Prob 12%                      #903.33
                                # LOE rax rcx rbx rsi rdi r8 r9 r10 r12 r13 r14 r15 edx
..B1.128:                       # Preds ..B1.127                # Infreq
        testq     %rsi, %rsi                                    #130.23
        je        ..B1.130      # Prob 12%                      #130.23
                                # LOE rax rcx rbx rsi rdi r8 r10 r12 r13 r14 r15 edx
..B1.129:                       # Preds ..B1.128                # Infreq
        movl      %edx, (%rsi)                                  #130.32
                                # LOE rax rcx rbx rsi rdi r8 r10 r12 r13 r14 r15
..B1.130:                       # Preds ..B1.128 ..B1.129       # Infreq
        movq      120(%r8), %rdx                                #771.18
        addq      $4, %rsi                                      #907.8
        movq      %rsi, 8(%r10,%rax,8)                          #907.8
        movq      (%rdx,%rax,8), %rsi                           #771.18
        movsd     (%rsi,%rcx,8), %xmm0                          #67.52
        jmp       ..B1.91       # Prob 100%                     #67.52
                                # LOE rcx rbx rsi rdi r8 r12 r13 r14 r15 xmm0
..B1.131:                       # Preds ..B1.127                # Infreq
        movq      %r9, %rdi                                     #913.4
        lea       3232(%rsp), %rdx                              #913.4
..___tag_value_main.54:
#       std::vector<int, std::allocator<int>>::_M_insert_aux(std::vector<int, std::allocator<int>> *, std::vector<int, std::allocator<int>>::iterator, const std::vector<int, std::allocator<int>>::value_type &)
        call      _ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi #913.4
..___tag_value_main.55:
                                # LOE rbx r12 r13 r14 r15
..B1.132:                       # Preds ..B1.131                # Infreq
        movq      3120(%rsp), %r8                               #67.17
        movslq    3372(%rsp,%r12,4), %rax                       #67.40
        movslq    3232(%rsp), %rcx                              #67.53
        movq      120(%r8), %rdx                                #771.18
        movq      3192(%rsp), %rdi                              #65.21
        lea       (%rax,%rax,2), %rsi                           #771.18
        movq      (%rdx,%rsi,8), %rsi                           #771.18
        movsd     (%rsi,%rcx,8), %xmm0                          #67.52
        jmp       ..B1.91       # Prob 100%                     #67.52
                                # LOE rcx rbx rsi rdi r8 r12 r13 r14 r15 xmm0
..___tag_value_main.7:
..B1.133:                       # Preds ..B1.131                # Infreq
        movq      %rax, (%rsp)                                  #33.65
                                # LOE
..B1.134:                       # Preds ..B1.133                # Infreq
        lea       3192(%rsp), %rdi                              #33.65
#       std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::~vector(std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>> *)
        call      _ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev #33.65
                                # LOE
..B1.136:                       # Preds ..B1.141 ..B1.134 ..B1.144 # Infreq
        lea       3120(%rsp), %rdi                              #32.70
#       std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::~vector(std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>> *)
        call      _ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev #32.70
                                # LOE
..B1.137:                       # Preds ..B1.152 ..B1.148 ..B1.136 # Infreq
        movq      (%rsp), %rdi                                  #32.70
..___tag_value_main.56:
        call      _Unwind_Resume                                #32.70
..___tag_value_main.57:
                                # LOE
..___tag_value_main.6:
..B1.138:                       # Preds ..B1.41                 # Infreq
        movq      %rax, (%rsp)                                  #33.65
                                # LOE
..B1.139:                       # Preds ..B1.138                # Infreq
        lea       3168(%rsp), %rdi                              #33.100
#       std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::~vector(std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>> *)
        call      _ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev           #33.100
                                # LOE
..B1.141:                       # Preds ..B1.139 ..B1.143       # Infreq
        lea       3144(%rsp), %rdi                              #33.117
#       std::vector<int, std::allocator<int>>::~vector(std::vector<int, std::allocator<int>> *)
        call      _ZNSt6vectorIiSaIiEED1Ev                      #33.117
        jmp       ..B1.136      # Prob 100%                     #33.117
                                # LOE
..___tag_value_main.5:
..B1.143:                       # Preds ..B1.40                 # Infreq
        movq      %rax, (%rsp)                                  #33.100
        jmp       ..B1.141      # Prob 100%                     #33.100
                                # LOE
..___tag_value_main.4:
..B1.144:                       # Preds ..B1.39                 # Infreq
        movq      %rax, (%rsp)                                  #33.117
        jmp       ..B1.136      # Prob 100%                     #33.117
                                # LOE
..___tag_value_main.3:
..B1.145:                       # Preds ..B1.28                 # Infreq
        movq      %rax, (%rsp)                                  #32.70
                                # LOE
..B1.146:                       # Preds ..B1.145                # Infreq
        lea       3096(%rsp), %rdi                              #32.108
#       std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::~vector(std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>> *)
        call      _ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev           #32.108
                                # LOE
..B1.148:                       # Preds ..B1.146 ..B1.151       # Infreq
        lea       3072(%rsp), %rdi                              #32.128
#       std::vector<double, std::allocator<double>>::~vector(std::vector<double, std::allocator<double>> *)
        call      _ZNSt6vectorIdSaIdEED1Ev                      #32.128
        jmp       ..B1.137      # Prob 100%                     #32.128
                                # LOE
..___tag_value_main.2:
..B1.151:                       # Preds ..B1.27                 # Infreq
        movq      %rax, (%rsp)                                  #32.108
        jmp       ..B1.148      # Prob 100%                     #32.108
                                # LOE
..___tag_value_main.1:
..B1.152:                       # Preds ..B1.26                 # Infreq
        movq      %rax, (%rsp)                                  #32.128
        jmp       ..B1.137      # Prob 100%                     #32.128
                                # LOE
..B1.153:                       # Preds ..B1.17                 # Infreq
        movq      %rdx, %r13                                    #19.9
        jmp       ..B1.21       # Prob 100%                     #19.9
                                # LOE rax rdx rcx rsi rdi r8 r9 r11 r13 ebx xmm0 xmm1 xmm2
..B1.154:                       # Preds ..B1.5                  # Infreq
        movl      %ebx, %r11d                                   #19.9
        jmp       ..B1.9        # Prob 100%                     #19.9
        .align    16,0x90
	.cfi_endproc
                                # LOE rax rdx rcx rsi rdi r8 r9 ebx r11d r12d xmm0 xmm1 xmm2
# mark_end;
	.type	main,@function
	.size	main,.-main
	.section .gcc_except_table, "a"
	.align 4
main$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value_main.62 - ..___tag_value_main.61
..___tag_value_main.61:
	.byte	1
	.uleb128	..___tag_value_main.60 - ..___tag_value_main.59
..___tag_value_main.59:
	.uleb128	..___tag_value_main.18 - ..___tag_value_main.8
	.uleb128	..___tag_value_main.21 - ..___tag_value_main.18
	.byte	0
	.byte	0
	.uleb128	..___tag_value_main.22 - ..___tag_value_main.8
	.uleb128	..___tag_value_main.23 - ..___tag_value_main.22
	.uleb128	..___tag_value_main.1 - ..___tag_value_main.8
	.byte	0
	.uleb128	..___tag_value_main.24 - ..___tag_value_main.8
	.uleb128	..___tag_value_main.25 - ..___tag_value_main.24
	.uleb128	..___tag_value_main.2 - ..___tag_value_main.8
	.byte	0
	.uleb128	..___tag_value_main.26 - ..___tag_value_main.8
	.uleb128	..___tag_value_main.27 - ..___tag_value_main.26
	.uleb128	..___tag_value_main.3 - ..___tag_value_main.8
	.byte	0
	.uleb128	..___tag_value_main.28 - ..___tag_value_main.8
	.uleb128	..___tag_value_main.29 - ..___tag_value_main.28
	.uleb128	..___tag_value_main.4 - ..___tag_value_main.8
	.byte	0
	.uleb128	..___tag_value_main.30 - ..___tag_value_main.8
	.uleb128	..___tag_value_main.31 - ..___tag_value_main.30
	.uleb128	..___tag_value_main.5 - ..___tag_value_main.8
	.byte	0
	.uleb128	..___tag_value_main.32 - ..___tag_value_main.8
	.uleb128	..___tag_value_main.33 - ..___tag_value_main.32
	.uleb128	..___tag_value_main.6 - ..___tag_value_main.8
	.byte	0
	.uleb128	..___tag_value_main.34 - ..___tag_value_main.8
	.uleb128	..___tag_value_main.39 - ..___tag_value_main.34
	.byte	0
	.byte	0
	.uleb128	..___tag_value_main.54 - ..___tag_value_main.8
	.uleb128	..___tag_value_main.55 - ..___tag_value_main.54
	.uleb128	..___tag_value_main.7 - ..___tag_value_main.8
	.byte	0
	.uleb128	..___tag_value_main.56 - ..___tag_value_main.8
	.uleb128	..___tag_value_main.57 - ..___tag_value_main.56
	.byte	0
	.byte	0
..___tag_value_main.60:
	.long	0x00000000,0x00000000
..___tag_value_main.62:
	.data
# -- End  main
	.section .text._ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev, "xaG",@progbits,_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev,comdat
..TXTST1:
# -- Begin  _ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev
	.section .text._ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev, "xaG",@progbits,_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev
# --- std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::~vector(std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>> *)
_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev:
# parameter 1: %rdi
..B2.1:                         # Preds ..B2.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev$$LSDA
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev.63:
..L64:
                                                         #415.7
        subq      $40, %rsp                                     #415.7
	.cfi_def_cfa_offset 48
        movq      %rdi, %rdx                                    #415.7
        movq      (%rdx), %rdi                                  #415.23
        movq      8(%rdx), %rax                                 #415.47
        cmpq      %rax, %rdi                                    #102.22
        je        ..B2.13       # Prob 1%                       #102.22
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
        movq      %r13, 24(%rsp)                                #
	.cfi_offset 13, -24
        movq      %rax, %r13                                    #
        movq      %r14, 32(%rsp)                                #
	.cfi_offset 14, -16
        movq      %rdi, %r14                                    #
        movq      %r15, (%rsp)                                  #
	.cfi_offset 15, -48
        movq      %rdx, %r15                                    #
        movq      %rbx, 8(%rsp)                                 #
        movq      %rbp, 16(%rsp)                                #
	.cfi_offset 3, -40
	.cfi_offset 6, -32
                                # LOE r12 r13 r14 r15
..B2.3:                         # Preds ..B2.11 ..B2.2
        movq      (%r14), %rbp                                  #415.23
        movq      8(%r14), %rbx                                 #415.47
        cmpq      %rbx, %rbp                                    #102.22
        je        ..B2.9        # Prob 1%                       #102.22
                                # LOE rbx rbp r12 r13 r14 r15
..B2.5:                         # Preds ..B2.3 ..B2.7
        movq      (%rbp), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B2.7        # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B2.6:                         # Preds ..B2.5
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx rbp r12 r13 r14 r15
..B2.7:                         # Preds ..B2.6 ..B2.5
        addq      $24, %rbp                                     #102.32
        cmpq      %rbx, %rbp                                    #102.22
        jne       ..B2.5        # Prob 82%                      #102.22
                                # LOE rbx rbp r12 r13 r14 r15
..B2.9:                         # Preds ..B2.7 ..B2.3
        movq      (%r14), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B2.11       # Prob 72%                      #173.6
                                # LOE rdi r12 r13 r14 r15
..B2.10:                        # Preds ..B2.9
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE r12 r13 r14 r15
..B2.11:                        # Preds ..B2.10 ..B2.9
        addq      $24, %r14                                     #102.32
        cmpq      %r13, %r14                                    #102.22
        jne       ..B2.3        # Prob 82%                      #102.22
                                # LOE r12 r13 r14 r15
..B2.12:                        # Preds ..B2.11
        movq      %r15, %rdx                                    #
        movq      24(%rsp), %r13                                #
	.cfi_restore 13
        movq      32(%rsp), %r14                                #
	.cfi_restore 14
        movq      (%rsp), %r15                                  #
	.cfi_restore 15
        movq      8(%rsp), %rbx                                 #
	.cfi_restore 3
        movq      16(%rsp), %rbp                                #
	.cfi_restore 6
        movq      (%rdx), %rdi                                  #160.23
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B2.13:                        # Preds ..B2.12 ..B2.1
        testq     %rdi, %rdi                                    #173.6
        je        ..B2.15       # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B2.14:                        # Preds ..B2.13
        addq      $40, %rsp                                     #110.9
	.cfi_def_cfa_offset 8
#       operator delete(void *)
        jmp       _ZdlPv                                        #110.9
	.cfi_def_cfa_offset 48
                                # LOE
..B2.15:                        # Preds ..B2.13
        addq      $40, %rsp                                     #416.33
	.cfi_def_cfa_offset 8
        ret                                                     #416.33
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev,@function
	.size	_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev,.-_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev
	.section .gcc_except_table, "a"
	.align 4
_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev.83 - ..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev.82
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev.82:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev.81 - ..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev.80
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev.80:
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev.81:
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev.83:
	.data
# -- End  _ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev
	.section .text._ZNSt12_Vector_baseISt6vectorIS0_IdSaIdEESaIS2_EESaIS4_EED2Ev, "xaG",@progbits,_ZNSt12_Vector_baseISt6vectorIS0_IdSaIdEESaIS2_EESaIS4_EED2Ev,comdat
..TXTST2:
# -- Begin  _ZNSt12_Vector_baseISt6vectorIS0_IdSaIdEESaIS2_EESaIS4_EED2Ev
	.section .text._ZNSt12_Vector_baseISt6vectorIS0_IdSaIdEESaIS2_EESaIS4_EED2Ev, "xaG",@progbits,_ZNSt12_Vector_baseISt6vectorIS0_IdSaIdEESaIS2_EESaIS4_EED2Ev,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt12_Vector_baseISt6vectorIS0_IdSaIdEESaIS2_EESaIS4_EED2Ev
# --- std::_Vector_base<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::~_Vector_base(std::_Vector_base<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>> *const)
_ZNSt12_Vector_baseISt6vectorIS0_IdSaIdEESaIS2_EESaIS4_EED2Ev:
# parameter 1: %rdi
..B3.1:                         # Preds ..B3.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt12_Vector_baseISt6vectorIS0_IdSaIdEESaIS2_EESaIS4_EED2Ev.84:
..L85:
                                                         #159.7
        movq      (%rdi), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B3.3        # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B3.2:                         # Preds ..B3.1
#       operator delete(void *)
        jmp       _ZdlPv                                        #110.9
                                # LOE
..B3.3:                         # Preds ..B3.1
        ret                                                     #159.7
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt12_Vector_baseISt6vectorIS0_IdSaIdEESaIS2_EESaIS4_EED2Ev,@function
	.size	_ZNSt12_Vector_baseISt6vectorIS0_IdSaIdEESaIS2_EESaIS4_EED2Ev,.-_ZNSt12_Vector_baseISt6vectorIS0_IdSaIdEESaIS2_EESaIS4_EED2Ev
	.data
# -- End  _ZNSt12_Vector_baseISt6vectorIS0_IdSaIdEESaIS2_EESaIS4_EED2Ev
	.section .text._ZNSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EED2Ev, "xaG",@progbits,_ZNSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EED2Ev,comdat
..TXTST3:
# -- Begin  _ZNSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EED2Ev
	.section .text._ZNSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EED2Ev, "xaG",@progbits,_ZNSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EED2Ev,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EED2Ev
# --- std::_Vector_base<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::~_Vector_base(std::_Vector_base<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>> *const)
_ZNSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EED2Ev:
# parameter 1: %rdi
..B4.1:                         # Preds ..B4.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EED2Ev.87:
..L88:
                                                         #159.7
        movq      (%rdi), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B4.3        # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B4.2:                         # Preds ..B4.1
#       operator delete(void *)
        jmp       _ZdlPv                                        #110.9
                                # LOE
..B4.3:                         # Preds ..B4.1
        ret                                                     #159.7
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EED2Ev,@function
	.size	_ZNSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EED2Ev,.-_ZNSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EED2Ev
	.data
# -- End  _ZNSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EED2Ev
	.section .text._ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev, "xaG",@progbits,_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev,comdat
..TXTST4:
# -- Begin  _ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev
	.section .text._ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev, "xaG",@progbits,_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev
# --- std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::~vector(std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>> *)
_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev:
# parameter 1: %rdi
..B5.1:                         # Preds ..B5.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev$$LSDA
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev.90:
..L91:
                                                         #415.7
        subq      $40, %rsp                                     #415.7
	.cfi_def_cfa_offset 48
        movq      %rdi, %rdx                                    #415.7
        movq      (%rdx), %rdi                                  #415.23
        movq      8(%rdx), %rax                                 #415.47
        cmpq      %rax, %rdi                                    #102.22
        je        ..B5.13       # Prob 1%                       #102.22
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15
..B5.2:                         # Preds ..B5.1
        movq      %r13, 24(%rsp)                                #
	.cfi_offset 13, -24
        movq      %rax, %r13                                    #
        movq      %r14, 32(%rsp)                                #
	.cfi_offset 14, -16
        movq      %rdi, %r14                                    #
        movq      %r15, (%rsp)                                  #
	.cfi_offset 15, -48
        movq      %rdx, %r15                                    #
        movq      %rbx, 8(%rsp)                                 #
        movq      %rbp, 16(%rsp)                                #
	.cfi_offset 3, -40
	.cfi_offset 6, -32
                                # LOE r12 r13 r14 r15
..B5.3:                         # Preds ..B5.11 ..B5.2
        movq      (%r14), %rbp                                  #415.23
        movq      8(%r14), %rbx                                 #415.47
        cmpq      %rbx, %rbp                                    #102.22
        je        ..B5.9        # Prob 1%                       #102.22
                                # LOE rbx rbp r12 r13 r14 r15
..B5.5:                         # Preds ..B5.3 ..B5.7
        movq      (%rbp), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B5.7        # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B5.6:                         # Preds ..B5.5
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx rbp r12 r13 r14 r15
..B5.7:                         # Preds ..B5.6 ..B5.5
        addq      $24, %rbp                                     #102.32
        cmpq      %rbx, %rbp                                    #102.22
        jne       ..B5.5        # Prob 82%                      #102.22
                                # LOE rbx rbp r12 r13 r14 r15
..B5.9:                         # Preds ..B5.7 ..B5.3
        movq      (%r14), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B5.11       # Prob 72%                      #173.6
                                # LOE rdi r12 r13 r14 r15
..B5.10:                        # Preds ..B5.9
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE r12 r13 r14 r15
..B5.11:                        # Preds ..B5.10 ..B5.9
        addq      $24, %r14                                     #102.32
        cmpq      %r13, %r14                                    #102.22
        jne       ..B5.3        # Prob 82%                      #102.22
                                # LOE r12 r13 r14 r15
..B5.12:                        # Preds ..B5.11
        movq      %r15, %rdx                                    #
        movq      24(%rsp), %r13                                #
	.cfi_restore 13
        movq      32(%rsp), %r14                                #
	.cfi_restore 14
        movq      (%rsp), %r15                                  #
	.cfi_restore 15
        movq      8(%rsp), %rbx                                 #
	.cfi_restore 3
        movq      16(%rsp), %rbp                                #
	.cfi_restore 6
        movq      (%rdx), %rdi                                  #160.23
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B5.13:                        # Preds ..B5.12 ..B5.1
        testq     %rdi, %rdi                                    #173.6
        je        ..B5.15       # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B5.14:                        # Preds ..B5.13
        addq      $40, %rsp                                     #110.9
	.cfi_def_cfa_offset 8
#       operator delete(void *)
        jmp       _ZdlPv                                        #110.9
	.cfi_def_cfa_offset 48
                                # LOE
..B5.15:                        # Preds ..B5.13
        addq      $40, %rsp                                     #416.33
	.cfi_def_cfa_offset 8
        ret                                                     #416.33
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev,@function
	.size	_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev,.-_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev
	.section .gcc_except_table, "a"
	.align 4
_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev.110 - ..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev.109
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev.109:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev.108 - ..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev.107
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev.107:
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev.108:
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev.110:
	.data
# -- End  _ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev
	.section .text._ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_, "xaG",@progbits,_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_,comdat
..TXTST5:
# -- Begin  _ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_
	.section .text._ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_, "xaG",@progbits,_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_
# --- std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::vector(std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>> *, std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::size_type, const std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::value_type &, const std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::allocator_type &)
_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
..B6.1:                         # Preds ..B6.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_$$LSDA
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.113:
..L114:
                                                        #298.7
        pushq     %r14                                          #298.7
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
        pushq     %r15                                          #298.7
	.cfi_def_cfa_offset 24
	.cfi_offset 15, -24
        pushq     %rbx                                          #298.7
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
        pushq     %rbp                                          #298.7
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
        subq      $40, %rsp                                     #298.7
	.cfi_def_cfa_offset 80
        movq      %rdi, %rbx                                    #298.7
        movq      %rsi, %r15                                    #298.7
        xorl      %eax, %eax                                    #90.2
        movq      %rdx, %rbp                                    #298.7
        testq     %r15, %r15                                    #168.23
        movq      %rax, (%rbx)                                  #90.2
        movq      %rax, 8(%rbx)                                 #90.2
        movq      %rax, 16(%rbx)                                #90.2
        jne       ..B6.19       # Prob 5%                       #168.23
                                # LOE rax rbx rbp r12 r13 r15
..B6.2:                         # Preds ..B6.1
        lea       (%r15,%r15,2), %r14                           #183.36
        shlq      $3, %r14                                      #183.36
                                # LOE rax rbx rbp r12 r13 r14 r15
..B6.3:                         # Preds ..B6.20 ..B6.2
        addq      %rax, %r14                                    #183.36
        movq      %rax, %rsi                                    #183.29
        movq      %rax, (%rbx)                                  #181.2
        testq     %r15, %r15                                    #186.21
        movq      %r14, 16(%rbx)                                #183.2
        je        ..B6.10       # Prob 4%                       #186.21
                                # LOE rax rbx rbp rsi r12 r13 r14 r15
..B6.4:                         # Preds ..B6.3
        movq      %rax, 8(%rbx)                                 #1216.2
        movq      %rax, %r14                                    #1216.2
        movq      %r13, 24(%rsp)                                #1216.2
	.cfi_offset 13, -56
        movq      %rbp, %r13                                    #1216.2
        movq      %rsi, %rbp                                    #1216.2
                                # LOE rbx rbp r12 r13 r14 r15
..B6.5:                         # Preds ..B6.8 ..B6.4
        testq     %rbp, %rbp                                    #83.32
        je        ..B6.8        # Prob 15%                      #83.32
                                # LOE rbx rbp r12 r13 r14 r15
..B6.6:                         # Preds ..B6.5
        movq      %rbp, %rdi                                    #83.42
        movq      %r13, %rsi                                    #83.42
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.125:
#       std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::vector(std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>> *, const std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>> &)
        call      _ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_       #83.42
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.126:
                                # LOE rbx rbp r12 r13 r14 r15
..B6.8:                         # Preds ..B6.6 ..B6.5
        addq      $24, %rbp                                     #186.33
        decq      %r15                                          #186.26
        jne       ..B6.5        # Prob 82%                      #186.21
                                # LOE rbx rbp r12 r13 r14 r15
..B6.9:                         # Preds ..B6.8
        movq      24(%rsp), %r13                                #
	.cfi_restore 13
        movq      16(%rbx), %r14                                #1216.28
                                # LOE rbx r12 r13 r14
..B6.10:                        # Preds ..B6.9 ..B6.3
        movq      %r14, 8(%rbx)                                 #1216.2
        addq      $40, %rsp                                     #298.43
	.cfi_def_cfa_offset 40
	.cfi_restore 6
        popq      %rbp                                          #298.43
	.cfi_def_cfa_offset 32
	.cfi_restore 3
        popq      %rbx                                          #298.43
	.cfi_def_cfa_offset 24
	.cfi_restore 15
        popq      %r15                                          #298.43
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        popq      %r14                                          #298.43
	.cfi_def_cfa_offset 8
        ret                                                     #298.43
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -32
	.cfi_offset 6, -40
	.cfi_offset 13, -56
	.cfi_offset 14, -16
	.cfi_offset 15, -24
                                # LOE
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.111:
..B6.11:                        # Preds ..B6.6                  # Infreq
        movq      %rax, (%rsp)                                  #83.7
        movq      %rbp, %rsi                                    #83.7
        movq      %r14, %rax                                    #83.7
        movq      24(%rsp), %r13                                #83.7
	.cfi_restore 13
	.cfi_offset 13, -56
                                # LOE rax rbx rsi r12 r13 r13d r13b
..B6.12:                        # Preds ..B6.11                 # Infreq
        movq      (%rsp), %rdi                                  #189.4
        movq      %rsi, 8(%rsp)                                 #189.4
        movq      %rax, 16(%rsp)                                #189.4
        call      __cxa_begin_catch                             #189.4
                                # LOE rbx r12 r13 r13d r13b
..B6.13:                        # Preds ..B6.12                 # Infreq
        movq      16(%rsp), %rax                                #
        movq      %rax, %rdi                                    #126.7
        movq      8(%rsp), %rsi                                 #
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.145:
#       std::_Destroy_aux<false>::__destroy<std::_Vector_base<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::pointer>(std::_Vector_base<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::pointer, std::_Vector_base<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::pointer)
        call      _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_ #126.7
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.146:
                                # LOE rbx r12 r13 r13d r13b
..B6.14:                        # Preds ..B6.13                 # Infreq
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.147:
        call      __cxa_rethrow                                 #192.8
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.148:
                                # LOE rbx r12 r13
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.112:
..B6.15:                        # Preds ..B6.14                 # Infreq
        movq      %rax, (%rsp)                                  #190.6
                                # LOE rbx r12 r13
..B6.16:                        # Preds ..B6.15                 # Infreq
        call      __cxa_end_catch                               #190.6
                                # LOE rbx r12 r13
..B6.17:                        # Preds ..B6.16                 # Infreq
        movq      %rbx, %rdi                                    #297.20
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.149:
#       std::_Vector_base<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::~_Vector_base(std::_Vector_base<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>> *const)
        call      _ZNSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EED2Ev #297.20
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.150:
                                # LOE r12 r13
..B6.18:                        # Preds ..B6.17                 # Infreq
        movq      (%rsp), %rdi                                  #297.20
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.151:
        call      _Unwind_Resume                                #297.20
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.152:
	.cfi_restore 13
                                # LOE
..B6.19:                        # Preds ..B6.1                  # Infreq
        movq      $0xaaaaaaaaaaaaaaa, %rax                      #101.2
        cmpq      %rax, %r15                                    #101.18
        ja        ..B6.22       # Prob 0%                       #101.18
                                # LOE rbx rbp r12 r13 r15
..B6.20:                        # Preds ..B6.19                 # Infreq
        lea       (%r15,%r15,2), %r14                           #104.48
        shlq      $3, %r14                                      #104.48
        movq      %r14, %rdi                                    #104.27
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.154:
#       operator new(std::size_t)
        call      _Znwm                                         #104.27
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.155:
        jmp       ..B6.3        # Prob 100%                     #104.27
                                # LOE rax rbx rbp r12 r13 r14 r15
..B6.22:                        # Preds ..B6.19                 # Infreq
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.156:
#       std::__throw_bad_alloc()
        call      _ZSt17__throw_bad_allocv                      #102.4
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.157:
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_,@function
	.size	_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_,.-_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_
	.section .gcc_except_table, "a"
	.align 4
_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.162 - ..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.161
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.161:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.160 - ..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.159
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.159:
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.125 - ..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.113
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.126 - ..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.125
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.111 - ..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.113
	.byte	3
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.145 - ..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.113
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.148 - ..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.145
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.112 - ..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.113
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.151 - ..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.113
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.157 - ..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.151
	.byte	0
	.byte	0
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.160:
	.byte	1
	.byte	0
	.byte	0
	.byte	125
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.162:
	.data
# -- End  _ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_
	.section .text._ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev, "xaG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev,comdat
..TXTST6:
# -- Begin  _ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
	.section .text._ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev, "xaG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
# --- std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::~vector(std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>> *)
_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev:
# parameter 1: %rdi
..B7.1:                         # Preds ..B7.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev$$LSDA
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev.163:
..L164:
                                                        #415.7
        subq      $24, %rsp                                     #415.7
	.cfi_def_cfa_offset 32
        movq      %rdi, %rdx                                    #415.7
        movq      (%rdx), %rdi                                  #415.23
        movq      8(%rdx), %rax                                 #415.47
        cmpq      %rax, %rdi                                    #102.22
        je        ..B7.7        # Prob 1%                       #102.22
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15
..B7.2:                         # Preds ..B7.1
        movq      %r15, (%rsp)                                  #
	.cfi_offset 15, -32
        movq      %rdx, %r15                                    #
        movq      %rbx, 8(%rsp)                                 #
	.cfi_offset 3, -24
        movq      %rax, %rbx                                    #
        movq      %rbp, 16(%rsp)                                #
	.cfi_offset 6, -16
        movq      %rdi, %rbp                                    #
                                # LOE rbx rbp r12 r13 r14 r15
..B7.3:                         # Preds ..B7.5 ..B7.2
        movq      (%rbp), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B7.5        # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B7.4:                         # Preds ..B7.3
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx rbp r12 r13 r14 r15
..B7.5:                         # Preds ..B7.4 ..B7.3
        addq      $24, %rbp                                     #102.32
        cmpq      %rbx, %rbp                                    #102.22
        jne       ..B7.3        # Prob 82%                      #102.22
                                # LOE rbx rbp r12 r13 r14 r15
..B7.6:                         # Preds ..B7.5
        movq      %r15, %rdx                                    #
        movq      (%rsp), %r15                                  #
	.cfi_restore 15
        movq      8(%rsp), %rbx                                 #
	.cfi_restore 3
        movq      16(%rsp), %rbp                                #
	.cfi_restore 6
        movq      (%rdx), %rdi                                  #160.23
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B7.7:                         # Preds ..B7.6 ..B7.1
        testq     %rdi, %rdi                                    #173.6
        je        ..B7.9        # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B7.8:                         # Preds ..B7.7
        addq      $24, %rsp                                     #110.9
	.cfi_def_cfa_offset 8
#       operator delete(void *)
        jmp       _ZdlPv                                        #110.9
	.cfi_def_cfa_offset 32
                                # LOE
..B7.9:                         # Preds ..B7.7
        addq      $24, %rsp                                     #416.33
	.cfi_def_cfa_offset 8
        ret                                                     #416.33
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev,@function
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev,.-_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
	.section .gcc_except_table, "a"
	.align 4
_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev.179 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev.178
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev.178:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev.177 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev.176
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev.176:
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev.177:
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev.179:
	.data
# -- End  _ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
	.section .text._ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_, "xaG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_,comdat
..TXTST7:
# -- Begin  _ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_
	.section .text._ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_, "xaG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_
# --- std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::vector(std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>> *, std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::size_type, const std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::value_type &, const std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::allocator_type &)
_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
..B8.1:                         # Preds ..B8.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_$$LSDA
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.183:
..L184:
                                                        #298.7
        pushq     %r14                                          #298.7
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
        pushq     %r15                                          #298.7
	.cfi_def_cfa_offset 24
	.cfi_offset 15, -24
        pushq     %rbx                                          #298.7
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
        pushq     %rbp                                          #298.7
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
        subq      $40, %rsp                                     #298.7
	.cfi_def_cfa_offset 80
        movq      %rdi, %rbx                                    #298.7
        movq      %rsi, %r15                                    #298.7
        xorl      %eax, %eax                                    #90.2
        movq      %rdx, %rbp                                    #298.7
        testq     %r15, %r15                                    #168.23
        movq      %rax, (%rbx)                                  #90.2
        movq      %rax, 8(%rbx)                                 #90.2
        movq      %rax, 16(%rbx)                                #90.2
        jne       ..B8.19       # Prob 5%                       #168.23
                                # LOE rax rbx rbp r12 r13 r15
..B8.2:                         # Preds ..B8.1
        lea       (%r15,%r15,2), %r14                           #183.36
        shlq      $3, %r14                                      #183.36
                                # LOE rax rbx rbp r12 r13 r14 r15
..B8.3:                         # Preds ..B8.20 ..B8.2
        addq      %rax, %r14                                    #183.36
        movq      %rax, %rsi                                    #183.29
        movq      %rax, (%rbx)                                  #181.2
        testq     %r15, %r15                                    #186.21
        movq      %r14, 16(%rbx)                                #183.2
        je        ..B8.10       # Prob 4%                       #186.21
                                # LOE rax rbx rbp rsi r12 r13 r14 r15
..B8.4:                         # Preds ..B8.3
        movq      %rax, 8(%rbx)                                 #1216.2
        movq      %rax, %r14                                    #1216.2
        movq      %r13, 24(%rsp)                                #1216.2
	.cfi_offset 13, -56
        movq      %rbp, %r13                                    #1216.2
        movq      %rsi, %rbp                                    #1216.2
                                # LOE rbx rbp r12 r13 r14 r15
..B8.5:                         # Preds ..B8.8 ..B8.4
        testq     %rbp, %rbp                                    #83.32
        je        ..B8.8        # Prob 15%                      #83.32
                                # LOE rbx rbp r12 r13 r14 r15
..B8.6:                         # Preds ..B8.5
        movq      %rbp, %rdi                                    #83.42
        movq      %r13, %rsi                                    #83.42
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.195:
#       std::vector<int, std::allocator<int>>::vector(std::vector<int, std::allocator<int>> *, const std::vector<int, std::allocator<int>> &)
        call      _ZNSt6vectorIiSaIiEEC1ERKS1_                  #83.42
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.196:
                                # LOE rbx rbp r12 r13 r14 r15
..B8.8:                         # Preds ..B8.6 ..B8.5
        addq      $24, %rbp                                     #186.33
        decq      %r15                                          #186.26
        jne       ..B8.5        # Prob 82%                      #186.21
                                # LOE rbx rbp r12 r13 r14 r15
..B8.9:                         # Preds ..B8.8
        movq      24(%rsp), %r13                                #
	.cfi_restore 13
        movq      16(%rbx), %r14                                #1216.28
                                # LOE rbx r12 r13 r14
..B8.10:                        # Preds ..B8.9 ..B8.3
        movq      %r14, 8(%rbx)                                 #1216.2
        addq      $40, %rsp                                     #298.43
	.cfi_def_cfa_offset 40
	.cfi_restore 6
        popq      %rbp                                          #298.43
	.cfi_def_cfa_offset 32
	.cfi_restore 3
        popq      %rbx                                          #298.43
	.cfi_def_cfa_offset 24
	.cfi_restore 15
        popq      %r15                                          #298.43
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        popq      %r14                                          #298.43
	.cfi_def_cfa_offset 8
        ret                                                     #298.43
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -32
	.cfi_offset 6, -40
	.cfi_offset 13, -56
	.cfi_offset 14, -16
	.cfi_offset 15, -24
                                # LOE
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.181:
..B8.11:                        # Preds ..B8.6                  # Infreq
        movq      %rax, (%rsp)                                  #83.7
        movq      %rbp, %rsi                                    #83.7
        movq      %r14, %rax                                    #83.7
        movq      24(%rsp), %r13                                #83.7
	.cfi_restore 13
	.cfi_offset 13, -56
                                # LOE rax rbx rsi r12 r13 r13d r13b
..B8.12:                        # Preds ..B8.11                 # Infreq
        movq      (%rsp), %rdi                                  #189.4
        movq      %rsi, 8(%rsp)                                 #189.4
        movq      %rax, 16(%rsp)                                #189.4
        call      __cxa_begin_catch                             #189.4
                                # LOE rbx r12 r13 r13d r13b
..B8.13:                        # Preds ..B8.12                 # Infreq
        movq      16(%rsp), %rax                                #
        movq      %rax, %rdi                                    #126.7
        movq      8(%rsp), %rsi                                 #
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.215:
#       std::_Destroy_aux<false>::__destroy<std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::pointer>(std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::pointer, std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::pointer)
        call      _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_ #126.7
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.216:
                                # LOE rbx r12 r13 r13d r13b
..B8.14:                        # Preds ..B8.13                 # Infreq
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.217:
        call      __cxa_rethrow                                 #192.8
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.218:
                                # LOE rbx r12 r13
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.182:
..B8.15:                        # Preds ..B8.14                 # Infreq
        movq      %rax, (%rsp)                                  #190.6
                                # LOE rbx r12 r13
..B8.16:                        # Preds ..B8.15                 # Infreq
        call      __cxa_end_catch                               #190.6
                                # LOE rbx r12 r13
..B8.17:                        # Preds ..B8.16                 # Infreq
        movq      %rbx, %rdi                                    #297.20
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.219:
#       std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::~_Vector_base(std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>> *const)
        call      _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev #297.20
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.220:
	.cfi_restore 13
                                # LOE r12 r13
..B8.18:                        # Preds ..B8.24 ..B8.17         # Infreq
        movq      (%rsp), %rdi                                  #297.20
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.222:
        call      _Unwind_Resume                                #297.20
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.223:
                                # LOE
..B8.19:                        # Preds ..B8.1                  # Infreq
        movq      $0xaaaaaaaaaaaaaaa, %rax                      #101.2
        cmpq      %rax, %r15                                    #101.18
        ja        ..B8.26       # Prob 0%                       #101.18
                                # LOE rbx rbp r12 r13 r15
..B8.20:                        # Preds ..B8.19                 # Infreq
        lea       (%r15,%r15,2), %r14                           #104.48
        shlq      $3, %r14                                      #104.48
        movq      %r14, %rdi                                    #104.27
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.224:
#       operator new(std::size_t)
        call      _Znwm                                         #104.27
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.225:
        jmp       ..B8.3        # Prob 100%                     #104.27
                                # LOE rax rbx rbp r12 r13 r14 r15
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.180:
..B8.23:                        # Preds ..B8.20 ..B8.26         # Infreq
        movq      %rax, (%rsp)                                  #135.17
                                # LOE rbx r12 r13
..B8.24:                        # Preds ..B8.23                 # Infreq
        movq      %rbx, %rdi                                    #135.17
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.226:
#       std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::_Vector_impl::~_Vector_impl(std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::_Vector_impl *)
        call      _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev #135.17
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.227:
        jmp       ..B8.18       # Prob 100%                     #135.17
                                # LOE r12 r13
..B8.26:                        # Preds ..B8.19                 # Infreq
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.228:
#       std::__throw_bad_alloc()
        call      _ZSt17__throw_bad_allocv                      #102.4
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.229:
        .align    16,0x90
	.cfi_endproc
                                # LOE rbx r12 r13
# mark_end;
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_,@function
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_,.-_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_
	.section .gcc_except_table, "a"
	.align 4
_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.234 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.233
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.233:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.232 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.231
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.231:
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.195 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.183
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.196 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.195
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.181 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.183
	.byte	3
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.215 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.183
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.218 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.215
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.182 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.183
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.222 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.183
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.223 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.222
	.byte	0
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.224 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.183
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.225 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.224
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.180 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.183
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.228 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.183
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.229 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.228
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.180 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.183
	.byte	0
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.232:
	.byte	1
	.byte	0
	.byte	0
	.byte	125
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_.234:
	.data
# -- End  _ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_
	.section .text._ZNSt6vectorIiSaIiEED1Ev, "xaG",@progbits,_ZNSt6vectorIiSaIiEED1Ev,comdat
..TXTST8:
# -- Begin  _ZNSt6vectorIiSaIiEED1Ev
	.section .text._ZNSt6vectorIiSaIiEED1Ev, "xaG",@progbits,_ZNSt6vectorIiSaIiEED1Ev,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt6vectorIiSaIiEED1Ev
# --- std::vector<int, std::allocator<int>>::~vector(std::vector<int, std::allocator<int>> *)
_ZNSt6vectorIiSaIiEED1Ev:
# parameter 1: %rdi
..B9.1:                         # Preds ..B9.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIiSaIiEED1Ev$$LSDA
..___tag_value__ZNSt6vectorIiSaIiEED1Ev.235:
..L236:
                                                        #415.7
        movq      (%rdi), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B9.3        # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B9.2:                         # Preds ..B9.1
#       operator delete(void *)
        jmp       _ZdlPv                                        #110.9
                                # LOE
..B9.3:                         # Preds ..B9.1
        ret                                                     #416.33
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt6vectorIiSaIiEED1Ev,@function
	.size	_ZNSt6vectorIiSaIiEED1Ev,.-_ZNSt6vectorIiSaIiEED1Ev
	.section .gcc_except_table, "a"
	.align 4
_ZNSt6vectorIiSaIiEED1Ev$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEED1Ev.241 - ..___tag_value__ZNSt6vectorIiSaIiEED1Ev.240
..___tag_value__ZNSt6vectorIiSaIiEED1Ev.240:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEED1Ev.239 - ..___tag_value__ZNSt6vectorIiSaIiEED1Ev.238
..___tag_value__ZNSt6vectorIiSaIiEED1Ev.238:
..___tag_value__ZNSt6vectorIiSaIiEED1Ev.239:
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIiSaIiEED1Ev.241:
	.data
# -- End  _ZNSt6vectorIiSaIiEED1Ev
	.section .text._ZNSt6vectorIiSaIiEEC1EmRKiRKS0_, "xaG",@progbits,_ZNSt6vectorIiSaIiEEC1EmRKiRKS0_,comdat
..TXTST9:
# -- Begin  _ZNSt6vectorIiSaIiEEC1EmRKiRKS0_
	.section .text._ZNSt6vectorIiSaIiEEC1EmRKiRKS0_, "xaG",@progbits,_ZNSt6vectorIiSaIiEEC1EmRKiRKS0_,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt6vectorIiSaIiEEC1EmRKiRKS0_
# --- std::vector<int, std::allocator<int>>::vector(std::vector<int, std::allocator<int>> *, std::vector<int, std::allocator<int>>::size_type, const std::vector<int, std::allocator<int>>::value_type &, const std::vector<int, std::allocator<int>>::allocator_type &)
_ZNSt6vectorIiSaIiEEC1EmRKiRKS0_:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
..B10.1:                        # Preds ..B10.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIiSaIiEEC1EmRKiRKS0_$$LSDA
..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.243:
..L244:
                                                        #298.7
        pushq     %r13                                          #298.7
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
        pushq     %r14                                          #298.7
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
        pushq     %r15                                          #298.7
	.cfi_def_cfa_offset 32
	.cfi_offset 15, -32
        subq      $16, %rsp                                     #298.7
	.cfi_def_cfa_offset 48
        movq      %rdi, %r14                                    #298.7
        movq      %rsi, %r15                                    #298.7
        xorl      %eax, %eax                                    #90.2
        movq      %rdx, %r13                                    #298.7
        testq     %r15, %r15                                    #168.23
        movq      %rax, (%r14)                                  #90.2
        movq      %rax, 8(%r14)                                 #90.2
        movq      %rax, 16(%r14)                                #90.2
        jne       ..B10.4       # Prob 5%                       #168.23
                                # LOE rbx rbp r12 r13 r14 r15
..B10.2:                        # Preds ..B10.1
        movq      $0, (%r14)                                    #181.2
        lea       (,%r15,4), %rcx                               #183.36
        movq      %rcx, 16(%r14)                                #183.2
                                # LOE rcx rbx rbp r12 r14
..B10.3:                        # Preds ..B10.22 ..B10.2 ..B10.20 ..B10.7
        movq      %rcx, 8(%r14)                                 #1216.2
        addq      $16, %rsp                                     #298.43
	.cfi_def_cfa_offset 32
	.cfi_restore 15
        popq      %r15                                          #298.43
	.cfi_def_cfa_offset 24
	.cfi_restore 14
        popq      %r14                                          #298.43
	.cfi_def_cfa_offset 16
	.cfi_restore 13
        popq      %r13                                          #298.43
	.cfi_def_cfa_offset 8
        ret                                                     #298.43
	.cfi_def_cfa_offset 48
	.cfi_offset 13, -16
	.cfi_offset 14, -24
	.cfi_offset 15, -32
                                # LOE
..B10.4:                        # Preds ..B10.1                 # Infreq
        movq      $0x3fffffffffffffff, %rax                     #101.2
        cmpq      %rax, %r15                                    #101.18
        ja        ..B10.30      # Prob 0%                       #101.18
                                # LOE rbx rbp r12 r13 r14 r15
..B10.5:                        # Preds ..B10.4                 # Infreq
        lea       (,%r15,4), %rdi                               #104.48
..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.263:
#       operator new(std::size_t)
        call      _Znwm                                         #104.27
..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.264:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B10.6:                        # Preds ..B10.5                 # Infreq
        movq      %rax, %rdx                                    #104.27
                                # LOE rdx rbx rbp r12 r13 r14 r15
..B10.7:                        # Preds ..B10.6                 # Infreq
        movq      %rdx, (%r14)                                  #181.2
        lea       (%rdx,%r15,4), %rcx                           #183.36
        movq      %rcx, 16(%r14)                                #183.2
        testq     %r15, %r15                                    #750.15
        movl      (%r13), %eax                                  #748.25
        jbe       ..B10.3       # Prob 50%                      #750.15
                                # LOE rdx rcx rbx rbp r12 r14 r15 eax
..B10.8:                        # Preds ..B10.7                 # Infreq
        cmpq      $4, %r15                                      #749.7
        jl        ..B10.24      # Prob 10%                      #749.7
                                # LOE rdx rcx rbx rbp r12 r14 r15 eax
..B10.9:                        # Preds ..B10.8                 # Infreq
        movq      %rdx, %r9                                     #749.7
        andq      $15, %r9                                      #749.7
        je        ..B10.12      # Prob 50%                      #749.7
                                # LOE rdx rcx rbx rbp r9 r12 r14 r15 eax
..B10.10:                       # Preds ..B10.9                 # Infreq
        testq     $3, %r9                                       #749.7
        jne       ..B10.24      # Prob 10%                      #749.7
                                # LOE rdx rcx rbx rbp r9 r12 r14 r15 eax
..B10.11:                       # Preds ..B10.10                # Infreq
        negq      %r9                                           #749.7
        addq      $16, %r9                                      #749.7
        shrq      $2, %r9                                       #749.7
                                # LOE rdx rcx rbx rbp r9 r12 r14 r15 eax
..B10.12:                       # Preds ..B10.11 ..B10.9        # Infreq
        lea       4(%r9), %rsi                                  #749.7
        cmpq      %rsi, %r15                                    #749.7
        jl        ..B10.24      # Prob 10%                      #749.7
                                # LOE rdx rcx rbx rbp r9 r12 r14 r15 eax
..B10.13:                       # Preds ..B10.12                # Infreq
        movq      %r15, %rsi                                    #749.7
        xorl      %r8d, %r8d                                    #749.7
        subq      %r9, %rsi                                     #749.7
        andq      $3, %rsi                                      #749.7
        negq      %rsi                                          #749.7
        addq      %r15, %rsi                                    #749.7
        testq     %r9, %r9                                      #749.7
        jbe       ..B10.17      # Prob 9%                       #749.7
                                # LOE rdx rcx rbx rbp rsi r8 r9 r12 r14 r15 eax
..B10.15:                       # Preds ..B10.13 ..B10.15       # Infreq
        movl      %eax, (%rdx,%r8,4)                            #751.3
        incq      %r8                                           #749.7
        cmpq      %r9, %r8                                      #749.7
        jb        ..B10.15      # Prob 82%                      #749.7
                                # LOE rdx rcx rbx rbp rsi r8 r9 r12 r14 r15 eax
..B10.17:                       # Preds ..B10.15 ..B10.13       # Infreq
        movd      %eax, %xmm0                                   #748.23
        pshufd    $0, %xmm0, %xmm0                              #748.23
                                # LOE rdx rcx rbx rbp rsi r9 r12 r14 r15 eax xmm0
..B10.18:                       # Preds ..B10.18 ..B10.17       # Infreq
        movdqa    %xmm0, (%rdx,%r9,4)                           #751.3
        addq      $4, %r9                                       #749.7
        cmpq      %rsi, %r9                                     #749.7
        jb        ..B10.18      # Prob 82%                      #749.7
                                # LOE rdx rcx rbx rbp rsi r9 r12 r14 r15 eax xmm0
..B10.20:                       # Preds ..B10.18 ..B10.24       # Infreq
        cmpq      %r15, %rsi                                    #749.7
        jae       ..B10.3       # Prob 9%                       #749.7
                                # LOE rdx rcx rbx rbp rsi r12 r14 r15 eax
..B10.22:                       # Preds ..B10.20 ..B10.22       # Infreq
        movl      %eax, (%rdx,%rsi,4)                           #751.3
        incq      %rsi                                          #749.7
        cmpq      %r15, %rsi                                    #749.7
        jb        ..B10.22      # Prob 82%                      #749.7
        jmp       ..B10.3       # Prob 100%                     #749.7
                                # LOE rdx rcx rbx rbp rsi r12 r14 r15 eax
..B10.24:                       # Preds ..B10.8 ..B10.10 ..B10.12 # Infreq
        xorl      %esi, %esi                                    #749.7
        jmp       ..B10.20      # Prob 100%                     #749.7
                                # LOE rdx rcx rbx rbp rsi r12 r14 r15 eax
..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.242:
..B10.27:                       # Preds ..B10.5 ..B10.30        # Infreq
        movq      %rax, (%rsp)                                  #135.17
                                # LOE rbx rbp r12 r14
..B10.28:                       # Preds ..B10.27                # Infreq
        movq      %r14, %rdi                                    #135.17
..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.265:
#       std::_Vector_base<int, std::allocator<int>>::_Vector_impl::~_Vector_impl(std::_Vector_base<int, std::allocator<int>>::_Vector_impl *)
        call      _ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev #135.17
..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.266:
                                # LOE rbx rbp r12
..B10.29:                       # Preds ..B10.28                # Infreq
        movq      (%rsp), %rdi                                  #135.17
..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.267:
        call      _Unwind_Resume                                #135.17
..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.268:
                                # LOE
..B10.30:                       # Preds ..B10.4                 # Infreq
..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.269:
#       std::__throw_bad_alloc()
        call      _ZSt17__throw_bad_allocv                      #102.4
..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.270:
        .align    16,0x90
	.cfi_endproc
                                # LOE rbx rbp r12 r14
# mark_end;
	.type	_ZNSt6vectorIiSaIiEEC1EmRKiRKS0_,@function
	.size	_ZNSt6vectorIiSaIiEEC1EmRKiRKS0_,.-_ZNSt6vectorIiSaIiEEC1EmRKiRKS0_
	.section .gcc_except_table, "a"
	.align 4
_ZNSt6vectorIiSaIiEEC1EmRKiRKS0_$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.275 - ..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.274
..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.274:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.273 - ..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.272
..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.272:
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.263 - ..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.243
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.264 - ..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.263
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.242 - ..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.243
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.267 - ..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.243
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.268 - ..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.267
	.byte	0
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.269 - ..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.243
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.270 - ..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.269
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.242 - ..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.243
	.byte	0
..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.273:
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIiSaIiEEC1EmRKiRKS0_.275:
	.data
# -- End  _ZNSt6vectorIiSaIiEEC1EmRKiRKS0_
	.section .text._ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_, "xaG",@progbits,_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_,comdat
..TXTST10:
# -- Begin  _ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_
	.section .text._ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_, "xaG",@progbits,_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_
# --- std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::vector(std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>> *, std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::size_type, const std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::value_type &, const std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::allocator_type &)
_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
..B11.1:                        # Preds ..B11.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_$$LSDA
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.278:
..L279:
                                                        #298.7
        pushq     %r14                                          #298.7
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
        pushq     %r15                                          #298.7
	.cfi_def_cfa_offset 24
	.cfi_offset 15, -24
        pushq     %rbx                                          #298.7
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
        pushq     %rbp                                          #298.7
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
        subq      $40, %rsp                                     #298.7
	.cfi_def_cfa_offset 80
        movq      %rdi, %rbx                                    #298.7
        movq      %rsi, %r15                                    #298.7
        xorl      %eax, %eax                                    #90.2
        movq      %rdx, %rbp                                    #298.7
        testq     %r15, %r15                                    #168.23
        movq      %rax, (%rbx)                                  #90.2
        movq      %rax, 8(%rbx)                                 #90.2
        movq      %rax, 16(%rbx)                                #90.2
        jne       ..B11.19      # Prob 5%                       #168.23
                                # LOE rax rbx rbp r12 r13 r15
..B11.2:                        # Preds ..B11.1
        lea       (%r15,%r15,2), %r14                           #183.36
        shlq      $3, %r14                                      #183.36
                                # LOE rax rbx rbp r12 r13 r14 r15
..B11.3:                        # Preds ..B11.20 ..B11.2
        addq      %rax, %r14                                    #183.36
        movq      %rax, %rsi                                    #183.29
        movq      %rax, (%rbx)                                  #181.2
        testq     %r15, %r15                                    #186.21
        movq      %r14, 16(%rbx)                                #183.2
        je        ..B11.10      # Prob 4%                       #186.21
                                # LOE rax rbx rbp rsi r12 r13 r14 r15
..B11.4:                        # Preds ..B11.3
        movq      %rax, 8(%rbx)                                 #1216.2
        movq      %rax, %r14                                    #1216.2
        movq      %r13, 24(%rsp)                                #1216.2
	.cfi_offset 13, -56
        movq      %rbp, %r13                                    #1216.2
        movq      %rsi, %rbp                                    #1216.2
                                # LOE rbx rbp r12 r13 r14 r15
..B11.5:                        # Preds ..B11.8 ..B11.4
        testq     %rbp, %rbp                                    #83.32
        je        ..B11.8       # Prob 15%                      #83.32
                                # LOE rbx rbp r12 r13 r14 r15
..B11.6:                        # Preds ..B11.5
        movq      %rbp, %rdi                                    #83.42
        movq      %r13, %rsi                                    #83.42
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.290:
#       std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::vector(std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>> *, const std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>> &)
        call      _ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_       #83.42
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.291:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.8:                        # Preds ..B11.6 ..B11.5
        addq      $24, %rbp                                     #186.33
        decq      %r15                                          #186.26
        jne       ..B11.5       # Prob 82%                      #186.21
                                # LOE rbx rbp r12 r13 r14 r15
..B11.9:                        # Preds ..B11.8
        movq      24(%rsp), %r13                                #
	.cfi_restore 13
        movq      16(%rbx), %r14                                #1216.28
                                # LOE rbx r12 r13 r14
..B11.10:                       # Preds ..B11.9 ..B11.3
        movq      %r14, 8(%rbx)                                 #1216.2
        addq      $40, %rsp                                     #298.43
	.cfi_def_cfa_offset 40
	.cfi_restore 6
        popq      %rbp                                          #298.43
	.cfi_def_cfa_offset 32
	.cfi_restore 3
        popq      %rbx                                          #298.43
	.cfi_def_cfa_offset 24
	.cfi_restore 15
        popq      %r15                                          #298.43
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        popq      %r14                                          #298.43
	.cfi_def_cfa_offset 8
        ret                                                     #298.43
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -32
	.cfi_offset 6, -40
	.cfi_offset 13, -56
	.cfi_offset 14, -16
	.cfi_offset 15, -24
                                # LOE
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.276:
..B11.11:                       # Preds ..B11.6                 # Infreq
        movq      %rax, (%rsp)                                  #83.7
        movq      %rbp, %rsi                                    #83.7
        movq      %r14, %rax                                    #83.7
        movq      24(%rsp), %r13                                #83.7
	.cfi_restore 13
	.cfi_offset 13, -56
                                # LOE rax rbx rsi r12 r13 r13d r13b
..B11.12:                       # Preds ..B11.11                # Infreq
        movq      (%rsp), %rdi                                  #189.4
        movq      %rsi, 8(%rsp)                                 #189.4
        movq      %rax, 16(%rsp)                                #189.4
        call      __cxa_begin_catch                             #189.4
                                # LOE rbx r12 r13 r13d r13b
..B11.13:                       # Preds ..B11.12                # Infreq
        movq      16(%rsp), %rax                                #
        movq      %rax, %rdi                                    #126.7
        movq      8(%rsp), %rsi                                 #
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.310:
#       std::_Destroy_aux<false>::__destroy<std::_Vector_base<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::pointer>(std::_Vector_base<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::pointer, std::_Vector_base<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::pointer)
        call      _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_ #126.7
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.311:
                                # LOE rbx r12 r13 r13d r13b
..B11.14:                       # Preds ..B11.13                # Infreq
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.312:
        call      __cxa_rethrow                                 #192.8
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.313:
                                # LOE rbx r12 r13
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.277:
..B11.15:                       # Preds ..B11.14                # Infreq
        movq      %rax, (%rsp)                                  #190.6
                                # LOE rbx r12 r13
..B11.16:                       # Preds ..B11.15                # Infreq
        call      __cxa_end_catch                               #190.6
                                # LOE rbx r12 r13
..B11.17:                       # Preds ..B11.16                # Infreq
        movq      %rbx, %rdi                                    #297.20
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.314:
#       std::_Vector_base<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::~_Vector_base(std::_Vector_base<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>> *const)
        call      _ZNSt12_Vector_baseISt6vectorIS0_IdSaIdEESaIS2_EESaIS4_EED2Ev #297.20
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.315:
                                # LOE r12 r13
..B11.18:                       # Preds ..B11.17                # Infreq
        movq      (%rsp), %rdi                                  #297.20
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.316:
        call      _Unwind_Resume                                #297.20
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.317:
	.cfi_restore 13
                                # LOE
..B11.19:                       # Preds ..B11.1                 # Infreq
        movq      $0xaaaaaaaaaaaaaaa, %rax                      #101.2
        cmpq      %rax, %r15                                    #101.18
        ja        ..B11.22      # Prob 0%                       #101.18
                                # LOE rbx rbp r12 r13 r15
..B11.20:                       # Preds ..B11.19                # Infreq
        lea       (%r15,%r15,2), %r14                           #104.48
        shlq      $3, %r14                                      #104.48
        movq      %r14, %rdi                                    #104.27
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.319:
#       operator new(std::size_t)
        call      _Znwm                                         #104.27
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.320:
        jmp       ..B11.3       # Prob 100%                     #104.27
                                # LOE rax rbx rbp r12 r13 r14 r15
..B11.22:                       # Preds ..B11.19                # Infreq
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.321:
#       std::__throw_bad_alloc()
        call      _ZSt17__throw_bad_allocv                      #102.4
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.322:
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_,@function
	.size	_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_,.-_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_
	.section .gcc_except_table, "a"
	.align 4
_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.327 - ..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.326
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.326:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.325 - ..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.324
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.324:
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.290 - ..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.278
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.291 - ..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.290
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.276 - ..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.278
	.byte	3
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.310 - ..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.278
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.313 - ..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.310
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.277 - ..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.278
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.316 - ..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.278
	.uleb128	..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.322 - ..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.316
	.byte	0
	.byte	0
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.325:
	.byte	1
	.byte	0
	.byte	0
	.byte	125
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_.327:
	.data
# -- End  _ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_
	.section .text._ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev, "xaG",@progbits,_ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev,comdat
..TXTST11:
# -- Begin  _ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev
	.section .text._ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev, "xaG",@progbits,_ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev
# --- std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::~vector(std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>> *)
_ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev:
# parameter 1: %rdi
..B12.1:                        # Preds ..B12.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev$$LSDA
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev.328:
..L329:
                                                        #415.7
        subq      $24, %rsp                                     #415.7
	.cfi_def_cfa_offset 32
        movq      %rdi, %rdx                                    #415.7
        movq      (%rdx), %rdi                                  #415.23
        movq      8(%rdx), %rax                                 #415.47
        cmpq      %rax, %rdi                                    #102.22
        je        ..B12.7       # Prob 1%                       #102.22
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15
..B12.2:                        # Preds ..B12.1
        movq      %r15, (%rsp)                                  #
	.cfi_offset 15, -32
        movq      %rdx, %r15                                    #
        movq      %rbx, 8(%rsp)                                 #
	.cfi_offset 3, -24
        movq      %rax, %rbx                                    #
        movq      %rbp, 16(%rsp)                                #
	.cfi_offset 6, -16
        movq      %rdi, %rbp                                    #
                                # LOE rbx rbp r12 r13 r14 r15
..B12.3:                        # Preds ..B12.5 ..B12.2
        movq      (%rbp), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B12.5       # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B12.4:                        # Preds ..B12.3
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx rbp r12 r13 r14 r15
..B12.5:                        # Preds ..B12.4 ..B12.3
        addq      $24, %rbp                                     #102.32
        cmpq      %rbx, %rbp                                    #102.22
        jne       ..B12.3       # Prob 82%                      #102.22
                                # LOE rbx rbp r12 r13 r14 r15
..B12.6:                        # Preds ..B12.5
        movq      %r15, %rdx                                    #
        movq      (%rsp), %r15                                  #
	.cfi_restore 15
        movq      8(%rsp), %rbx                                 #
	.cfi_restore 3
        movq      16(%rsp), %rbp                                #
	.cfi_restore 6
        movq      (%rdx), %rdi                                  #160.23
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B12.7:                        # Preds ..B12.6 ..B12.1
        testq     %rdi, %rdi                                    #173.6
        je        ..B12.9       # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B12.8:                        # Preds ..B12.7
        addq      $24, %rsp                                     #110.9
	.cfi_def_cfa_offset 8
#       operator delete(void *)
        jmp       _ZdlPv                                        #110.9
	.cfi_def_cfa_offset 32
                                # LOE
..B12.9:                        # Preds ..B12.7
        addq      $24, %rsp                                     #416.33
	.cfi_def_cfa_offset 8
        ret                                                     #416.33
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev,@function
	.size	_ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev,.-_ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev
	.section .gcc_except_table, "a"
	.align 4
_ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev.344 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev.343
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev.343:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev.342 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev.341
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev.341:
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev.342:
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev.344:
	.data
# -- End  _ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev
	.section .text._ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_, "xaG",@progbits,_ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_,comdat
..TXTST12:
# -- Begin  _ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_
	.section .text._ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_, "xaG",@progbits,_ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_
# --- std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::vector(std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>> *, std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::size_type, const std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::value_type &, const std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::allocator_type &)
_ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
..B13.1:                        # Preds ..B13.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_$$LSDA
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.348:
..L349:
                                                        #298.7
        pushq     %r14                                          #298.7
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
        pushq     %r15                                          #298.7
	.cfi_def_cfa_offset 24
	.cfi_offset 15, -24
        pushq     %rbx                                          #298.7
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
        pushq     %rbp                                          #298.7
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
        subq      $40, %rsp                                     #298.7
	.cfi_def_cfa_offset 80
        movq      %rdi, %rbx                                    #298.7
        movq      %rsi, %r15                                    #298.7
        xorl      %eax, %eax                                    #90.2
        movq      %rdx, %rbp                                    #298.7
        testq     %r15, %r15                                    #168.23
        movq      %rax, (%rbx)                                  #90.2
        movq      %rax, 8(%rbx)                                 #90.2
        movq      %rax, 16(%rbx)                                #90.2
        jne       ..B13.19      # Prob 5%                       #168.23
                                # LOE rax rbx rbp r12 r13 r15
..B13.2:                        # Preds ..B13.1
        lea       (%r15,%r15,2), %r14                           #183.36
        shlq      $3, %r14                                      #183.36
                                # LOE rax rbx rbp r12 r13 r14 r15
..B13.3:                        # Preds ..B13.20 ..B13.2
        addq      %rax, %r14                                    #183.36
        movq      %rax, %rsi                                    #183.29
        movq      %rax, (%rbx)                                  #181.2
        testq     %r15, %r15                                    #186.21
        movq      %r14, 16(%rbx)                                #183.2
        je        ..B13.10      # Prob 4%                       #186.21
                                # LOE rax rbx rbp rsi r12 r13 r14 r15
..B13.4:                        # Preds ..B13.3
        movq      %rax, 8(%rbx)                                 #1216.2
        movq      %rax, %r14                                    #1216.2
        movq      %r13, 24(%rsp)                                #1216.2
	.cfi_offset 13, -56
        movq      %rbp, %r13                                    #1216.2
        movq      %rsi, %rbp                                    #1216.2
                                # LOE rbx rbp r12 r13 r14 r15
..B13.5:                        # Preds ..B13.8 ..B13.4
        testq     %rbp, %rbp                                    #83.32
        je        ..B13.8       # Prob 15%                      #83.32
                                # LOE rbx rbp r12 r13 r14 r15
..B13.6:                        # Preds ..B13.5
        movq      %rbp, %rdi                                    #83.42
        movq      %r13, %rsi                                    #83.42
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.360:
#       std::vector<double, std::allocator<double>>::vector(std::vector<double, std::allocator<double>> *, const std::vector<double, std::allocator<double>> &)
        call      _ZNSt6vectorIdSaIdEEC1ERKS1_                  #83.42
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.361:
                                # LOE rbx rbp r12 r13 r14 r15
..B13.8:                        # Preds ..B13.6 ..B13.5
        addq      $24, %rbp                                     #186.33
        decq      %r15                                          #186.26
        jne       ..B13.5       # Prob 82%                      #186.21
                                # LOE rbx rbp r12 r13 r14 r15
..B13.9:                        # Preds ..B13.8
        movq      24(%rsp), %r13                                #
	.cfi_restore 13
        movq      16(%rbx), %r14                                #1216.28
                                # LOE rbx r12 r13 r14
..B13.10:                       # Preds ..B13.9 ..B13.3
        movq      %r14, 8(%rbx)                                 #1216.2
        addq      $40, %rsp                                     #298.43
	.cfi_def_cfa_offset 40
	.cfi_restore 6
        popq      %rbp                                          #298.43
	.cfi_def_cfa_offset 32
	.cfi_restore 3
        popq      %rbx                                          #298.43
	.cfi_def_cfa_offset 24
	.cfi_restore 15
        popq      %r15                                          #298.43
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        popq      %r14                                          #298.43
	.cfi_def_cfa_offset 8
        ret                                                     #298.43
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -32
	.cfi_offset 6, -40
	.cfi_offset 13, -56
	.cfi_offset 14, -16
	.cfi_offset 15, -24
                                # LOE
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.346:
..B13.11:                       # Preds ..B13.6                 # Infreq
        movq      %rax, (%rsp)                                  #83.7
        movq      %rbp, %rsi                                    #83.7
        movq      %r14, %rax                                    #83.7
        movq      24(%rsp), %r13                                #83.7
	.cfi_restore 13
	.cfi_offset 13, -56
                                # LOE rax rbx rsi r12 r13 r13d r13b
..B13.12:                       # Preds ..B13.11                # Infreq
        movq      (%rsp), %rdi                                  #189.4
        movq      %rsi, 8(%rsp)                                 #189.4
        movq      %rax, 16(%rsp)                                #189.4
        call      __cxa_begin_catch                             #189.4
                                # LOE rbx r12 r13 r13d r13b
..B13.13:                       # Preds ..B13.12                # Infreq
        movq      16(%rsp), %rax                                #
        movq      %rax, %rdi                                    #126.7
        movq      8(%rsp), %rsi                                 #
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.380:
#       std::_Destroy_aux<false>::__destroy<std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::pointer>(std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::pointer, std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::pointer)
        call      _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_ #126.7
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.381:
                                # LOE rbx r12 r13 r13d r13b
..B13.14:                       # Preds ..B13.13                # Infreq
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.382:
        call      __cxa_rethrow                                 #192.8
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.383:
                                # LOE rbx r12 r13
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.347:
..B13.15:                       # Preds ..B13.14                # Infreq
        movq      %rax, (%rsp)                                  #190.6
                                # LOE rbx r12 r13
..B13.16:                       # Preds ..B13.15                # Infreq
        call      __cxa_end_catch                               #190.6
                                # LOE rbx r12 r13
..B13.17:                       # Preds ..B13.16                # Infreq
        movq      %rbx, %rdi                                    #297.20
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.384:
#       std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::~_Vector_base(std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>> *const)
        call      _ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev #297.20
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.385:
	.cfi_restore 13
                                # LOE r12 r13
..B13.18:                       # Preds ..B13.24 ..B13.17       # Infreq
        movq      (%rsp), %rdi                                  #297.20
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.387:
        call      _Unwind_Resume                                #297.20
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.388:
                                # LOE
..B13.19:                       # Preds ..B13.1                 # Infreq
        movq      $0xaaaaaaaaaaaaaaa, %rax                      #101.2
        cmpq      %rax, %r15                                    #101.18
        ja        ..B13.26      # Prob 0%                       #101.18
                                # LOE rbx rbp r12 r13 r15
..B13.20:                       # Preds ..B13.19                # Infreq
        lea       (%r15,%r15,2), %r14                           #104.48
        shlq      $3, %r14                                      #104.48
        movq      %r14, %rdi                                    #104.27
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.389:
#       operator new(std::size_t)
        call      _Znwm                                         #104.27
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.390:
        jmp       ..B13.3       # Prob 100%                     #104.27
                                # LOE rax rbx rbp r12 r13 r14 r15
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.345:
..B13.23:                       # Preds ..B13.20 ..B13.26       # Infreq
        movq      %rax, (%rsp)                                  #135.17
                                # LOE rbx r12 r13
..B13.24:                       # Preds ..B13.23                # Infreq
        movq      %rbx, %rdi                                    #135.17
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.391:
#       std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::_Vector_impl::~_Vector_impl(std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::_Vector_impl *)
        call      _ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implD1Ev #135.17
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.392:
        jmp       ..B13.18      # Prob 100%                     #135.17
                                # LOE r12 r13
..B13.26:                       # Preds ..B13.19                # Infreq
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.393:
#       std::__throw_bad_alloc()
        call      _ZSt17__throw_bad_allocv                      #102.4
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.394:
        .align    16,0x90
	.cfi_endproc
                                # LOE rbx r12 r13
# mark_end;
	.type	_ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_,@function
	.size	_ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_,.-_ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_
	.section .gcc_except_table, "a"
	.align 4
_ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.399 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.398
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.398:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.397 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.396
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.396:
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.360 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.348
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.361 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.360
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.346 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.348
	.byte	3
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.380 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.348
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.383 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.380
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.347 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.348
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.387 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.348
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.388 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.387
	.byte	0
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.389 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.348
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.390 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.389
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.345 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.348
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.393 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.348
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.394 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.393
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.345 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.348
	.byte	0
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.397:
	.byte	1
	.byte	0
	.byte	0
	.byte	125
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_.399:
	.data
# -- End  _ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_
	.section .text._ZNSt6vectorIdSaIdEED1Ev, "xaG",@progbits,_ZNSt6vectorIdSaIdEED1Ev,comdat
..TXTST13:
# -- Begin  _ZNSt6vectorIdSaIdEED1Ev
	.section .text._ZNSt6vectorIdSaIdEED1Ev, "xaG",@progbits,_ZNSt6vectorIdSaIdEED1Ev,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt6vectorIdSaIdEED1Ev
# --- std::vector<double, std::allocator<double>>::~vector(std::vector<double, std::allocator<double>> *)
_ZNSt6vectorIdSaIdEED1Ev:
# parameter 1: %rdi
..B14.1:                        # Preds ..B14.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIdSaIdEED1Ev$$LSDA
..___tag_value__ZNSt6vectorIdSaIdEED1Ev.400:
..L401:
                                                        #415.7
        movq      (%rdi), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B14.3       # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B14.2:                        # Preds ..B14.1
#       operator delete(void *)
        jmp       _ZdlPv                                        #110.9
                                # LOE
..B14.3:                        # Preds ..B14.1
        ret                                                     #416.33
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt6vectorIdSaIdEED1Ev,@function
	.size	_ZNSt6vectorIdSaIdEED1Ev,.-_ZNSt6vectorIdSaIdEED1Ev
	.section .gcc_except_table, "a"
	.align 4
_ZNSt6vectorIdSaIdEED1Ev$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEED1Ev.406 - ..___tag_value__ZNSt6vectorIdSaIdEED1Ev.405
..___tag_value__ZNSt6vectorIdSaIdEED1Ev.405:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEED1Ev.404 - ..___tag_value__ZNSt6vectorIdSaIdEED1Ev.403
..___tag_value__ZNSt6vectorIdSaIdEED1Ev.403:
..___tag_value__ZNSt6vectorIdSaIdEED1Ev.404:
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIdSaIdEED1Ev.406:
	.data
# -- End  _ZNSt6vectorIdSaIdEED1Ev
	.section .text._ZNSt6vectorIdSaIdEEC1EmRKdRKS0_, "xaG",@progbits,_ZNSt6vectorIdSaIdEEC1EmRKdRKS0_,comdat
..TXTST14:
# -- Begin  _ZNSt6vectorIdSaIdEEC1EmRKdRKS0_
	.section .text._ZNSt6vectorIdSaIdEEC1EmRKdRKS0_, "xaG",@progbits,_ZNSt6vectorIdSaIdEEC1EmRKdRKS0_,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt6vectorIdSaIdEEC1EmRKdRKS0_
# --- std::vector<double, std::allocator<double>>::vector(std::vector<double, std::allocator<double>> *, std::vector<double, std::allocator<double>>::size_type, const std::vector<double, std::allocator<double>>::value_type &, const std::vector<double, std::allocator<double>>::allocator_type &)
_ZNSt6vectorIdSaIdEEC1EmRKdRKS0_:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
..B15.1:                        # Preds ..B15.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIdSaIdEEC1EmRKdRKS0_$$LSDA
..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.408:
..L409:
                                                        #298.7
        pushq     %r12                                          #298.7
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r15                                          #298.7
	.cfi_def_cfa_offset 24
	.cfi_offset 15, -24
        pushq     %rbx                                          #298.7
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
        pushq     %rbp                                          #298.7
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
        pushq     %rsi                                          #298.7
	.cfi_def_cfa_offset 48
        movq      %rdi, %r12                                    #298.7
        movq      %rsi, %r15                                    #298.7
        xorl      %eax, %eax                                    #90.2
        movq      %rdx, %rbx                                    #298.7
        testq     %r15, %r15                                    #168.23
        movq      %rax, (%r12)                                  #90.2
        movq      %rax, 8(%r12)                                 #90.2
        movq      %rax, 16(%r12)                                #90.2
        jne       ..B15.24      # Prob 5%                       #168.23
                                # LOE rbx r12 r13 r14 r15
..B15.2:                        # Preds ..B15.1
        xorl      %esi, %esi                                    #168.51
        lea       (,%r15,8), %rbp                               #183.36
                                # LOE rbx rbp rsi r12 r13 r14 r15
..B15.3:                        # Preds ..B15.26 ..B15.2
        addq      %rsi, %rbp                                    #183.36
        movq      %rsi, (%r12)                                  #181.2
        testq     %r15, %r15                                    #750.15
        movq      %rbp, 16(%r12)                                #183.2
        movsd     (%rbx), %xmm0                                 #748.25
        jbe       ..B15.20      # Prob 50%                      #750.15
                                # LOE rbp rsi r12 r13 r14 r15 xmm0
..B15.4:                        # Preds ..B15.3
        cmpq      $8, %r15                                      #749.7
        jl        ..B15.21      # Prob 10%                      #749.7
                                # LOE rbp rsi r12 r13 r14 r15 xmm0
..B15.5:                        # Preds ..B15.4
        movq      %rsi, %rcx                                    #749.7
        andq      $15, %rcx                                     #749.7
        je        ..B15.8       # Prob 50%                      #749.7
                                # LOE rcx rbp rsi r12 r13 r14 r15 xmm0
..B15.6:                        # Preds ..B15.5
        testq     $7, %rcx                                      #749.7
        jne       ..B15.21      # Prob 10%                      #749.7
                                # LOE rbp rsi r12 r13 r14 r15 xmm0
..B15.7:                        # Preds ..B15.6
        movl      $1, %ecx                                      #749.7
                                # LOE rcx rbp rsi r12 r13 r14 r15 xmm0
..B15.8:                        # Preds ..B15.7 ..B15.5
        lea       8(%rcx), %rax                                 #749.7
        cmpq      %rax, %r15                                    #749.7
        jl        ..B15.21      # Prob 10%                      #749.7
                                # LOE rcx rbp rsi r12 r13 r14 r15 xmm0
..B15.9:                        # Preds ..B15.8
        movq      %r15, %rax                                    #749.7
        xorl      %edx, %edx                                    #749.7
        subq      %rcx, %rax                                    #749.7
        andq      $7, %rax                                      #749.7
        negq      %rax                                          #749.7
        addq      %r15, %rax                                    #749.7
        testq     %rcx, %rcx                                    #749.7
        jbe       ..B15.13      # Prob 9%                       #749.7
                                # LOE rax rdx rcx rbp rsi r12 r13 r14 r15 xmm0
..B15.11:                       # Preds ..B15.9 ..B15.11
        movsd     %xmm0, (%rsi,%rdx,8)                          #751.3
        incq      %rdx                                          #749.7
        cmpq      %rcx, %rdx                                    #749.7
        jb        ..B15.11      # Prob 82%                      #749.7
                                # LOE rax rdx rcx rbp rsi r12 r13 r14 r15 xmm0
..B15.13:                       # Preds ..B15.11 ..B15.9
        movaps    %xmm0, %xmm1                                  #748.23
        unpcklpd  %xmm1, %xmm1                                  #748.23
                                # LOE rax rcx rbp rsi r12 r13 r14 r15 xmm0 xmm1
..B15.14:                       # Preds ..B15.14 ..B15.13
        movaps    %xmm1, (%rsi,%rcx,8)                          #751.3
        movaps    %xmm1, 16(%rsi,%rcx,8)                        #751.3
        movaps    %xmm1, 32(%rsi,%rcx,8)                        #751.3
        movaps    %xmm1, 48(%rsi,%rcx,8)                        #751.3
        addq      $8, %rcx                                      #749.7
        cmpq      %rax, %rcx                                    #749.7
        jb        ..B15.14      # Prob 82%                      #749.7
                                # LOE rax rcx rbp rsi r12 r13 r14 r15 xmm0 xmm1
..B15.16:                       # Preds ..B15.14 ..B15.21
        cmpq      %r15, %rax                                    #749.7
        jae       ..B15.20      # Prob 9%                       #749.7
                                # LOE rax rbp rsi r12 r13 r14 r15 xmm0
..B15.18:                       # Preds ..B15.16 ..B15.18
        movsd     %xmm0, (%rsi,%rax,8)                          #751.3
        incq      %rax                                          #749.7
        cmpq      %r15, %rax                                    #749.7
        jb        ..B15.18      # Prob 82%                      #749.7
                                # LOE rax rbp rsi r12 r13 r14 r15 xmm0
..B15.20:                       # Preds ..B15.18 ..B15.16 ..B15.3
        movq      %rbp, 8(%r12)                                 #1216.2
        popq      %rcx                                          #298.43
	.cfi_def_cfa_offset 40
	.cfi_restore 6
        popq      %rbp                                          #298.43
	.cfi_def_cfa_offset 32
	.cfi_restore 3
        popq      %rbx                                          #298.43
	.cfi_def_cfa_offset 24
	.cfi_restore 15
        popq      %r15                                          #298.43
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #298.43
	.cfi_def_cfa_offset 8
        ret                                                     #298.43
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -32
	.cfi_offset 6, -40
	.cfi_offset 12, -16
	.cfi_offset 15, -24
                                # LOE
..B15.21:                       # Preds ..B15.4 ..B15.6 ..B15.8 # Infreq
        xorl      %eax, %eax                                    #749.7
        jmp       ..B15.16      # Prob 100%                     #749.7
                                # LOE rax rbp rsi r12 r13 r14 r15 xmm0
..B15.24:                       # Preds ..B15.1                 # Infreq
        movq      $0x1fffffffffffffff, %rax                     #101.2
        cmpq      %rax, %r15                                    #101.18
        ja        ..B15.31      # Prob 0%                       #101.18
                                # LOE rbx r12 r13 r14 r15
..B15.25:                       # Preds ..B15.24                # Infreq
        lea       (,%r15,8), %rbp                               #104.48
        movq      %rbp, %rdi                                    #104.27
..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.433:
#       operator new(std::size_t)
        call      _Znwm                                         #104.27
..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.434:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B15.26:                       # Preds ..B15.25                # Infreq
        movq      %rax, %rsi                                    #104.27
        jmp       ..B15.3       # Prob 100%                     #104.27
                                # LOE rbx rbp rsi r12 r13 r14 r15
..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.407:
..B15.28:                       # Preds ..B15.25 ..B15.31       # Infreq
        movq      %rax, (%rsp)                                  #135.17
                                # LOE r12 r13 r14
..B15.29:                       # Preds ..B15.28                # Infreq
        movq      %r12, %rdi                                    #135.17
..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.435:
#       std::_Vector_base<double, std::allocator<double>>::_Vector_impl::~_Vector_impl(std::_Vector_base<double, std::allocator<double>>::_Vector_impl *)
        call      _ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev #135.17
..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.436:
                                # LOE r13 r14
..B15.30:                       # Preds ..B15.29                # Infreq
        movq      (%rsp), %rdi                                  #135.17
..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.437:
        call      _Unwind_Resume                                #135.17
..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.438:
                                # LOE
..B15.31:                       # Preds ..B15.24                # Infreq
..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.439:
#       std::__throw_bad_alloc()
        call      _ZSt17__throw_bad_allocv                      #102.4
..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.440:
        .align    16,0x90
	.cfi_endproc
                                # LOE r12 r13 r14
# mark_end;
	.type	_ZNSt6vectorIdSaIdEEC1EmRKdRKS0_,@function
	.size	_ZNSt6vectorIdSaIdEEC1EmRKdRKS0_,.-_ZNSt6vectorIdSaIdEEC1EmRKdRKS0_
	.section .gcc_except_table, "a"
	.align 4
_ZNSt6vectorIdSaIdEEC1EmRKdRKS0_$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.445 - ..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.444
..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.444:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.443 - ..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.442
..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.442:
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.433 - ..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.408
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.434 - ..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.433
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.407 - ..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.408
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.437 - ..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.408
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.438 - ..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.437
	.byte	0
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.439 - ..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.408
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.440 - ..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.439
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.407 - ..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.408
	.byte	0
..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.443:
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIdSaIdEEC1EmRKdRKS0_.445:
	.data
# -- End  _ZNSt6vectorIdSaIdEEC1EmRKdRKS0_
	.section .text._ZNSt11char_traitsIcE6lengthEPKc, "xaG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
..TXTST15:
# -- Begin  _ZNSt11char_traitsIcE6lengthEPKc
	.section .text._ZNSt11char_traitsIcE6lengthEPKc, "xaG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt11char_traitsIcE6lengthEPKc
# --- std::char_traits<char>::length(const std::char_traits<char>::char_type *)
_ZNSt11char_traitsIcE6lengthEPKc:
# parameter 1: %rdi
..B16.1:                        # Preds ..B16.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.446:
..L447:
                                                        #259.7
        pushq     %rsi                                          #259.7
	.cfi_def_cfa_offset 16
        movq      %rdi, %rdx                                    #259.16
        movq      %rdx, %rcx                                    #259.16
        andq      $-16, %rdx                                    #259.16
        pxor      %xmm0, %xmm0                                  #259.16
        pcmpeqb   (%rdx), %xmm0                                 #259.16
        pmovmskb  %xmm0, %eax                                   #259.16
        andl      $15, %ecx                                     #259.16
        shrl      %cl, %eax                                     #259.16
        bsf       %eax, %eax                                    #259.16
        jne       ..L449        # Prob 60%                      #259.16
        movq      %rdx, %rax                                    #259.16
        addq      %rcx, %rdx                                    #259.16
        call      __intel_sse2_strlen                           #259.16
..L449:                                                         #
                                # LOE rax rbx rbp r12 r13 r14 r15
..B16.4:                        # Preds ..B16.1
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
# -- Begin  _Z18checkVectorizationii
	.text
# mark_begin;
       .align    16,0x90
	.globl _Z18checkVectorizationii
# --- checkVectorization(int, int)
_Z18checkVectorizationii:
# parameter 1: %edi
# parameter 2: %esi
..B17.1:                        # Preds ..B17.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _Z18checkVectorizationii$$LSDA
..___tag_value__Z18checkVectorizationii.459:
..L460:
                                                        #8.54
        pushq     %r12                                          #8.54
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #8.54
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #8.54
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #8.54
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rbx                                          #8.54
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        pushq     %rbp                                          #8.54
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        subq      $3640, %rsp                                   #8.54
	.cfi_def_cfa_offset 3696
        movl      $4, %eax                                      #19.46
        xorl      %r8d, %r8d                                    #10.16
        xorl      %edx, %edx                                    #16.5
        xorl      %ecx, %ecx                                    #16.5
        movl      %esi, 3632(%rsp)                              #8.54
        xorl      %r9d, %r9d                                    #16.5
        movslq    %esi, %rsi                                    #8.54
        movd      %eax, %xmm0                                   #19.46
        movq      %rsi, 3600(%rsp)                              #8.54
        xorl      %esi, %esi                                    #16.5
        movl      %edi, (%rsp)                                  #8.54
        xorl      %eax, %eax                                    #16.5
        movslq    %edi, %rbp                                    #8.54
        movq      $0x3ff0000000000000, %rdi                     #25.37
        movq      %r8, 3624(%rsp)                               #10.16
        xorl      %ebx, %ebx                                    #16.5
        pshufd    $0, %xmm0, %xmm2                              #19.46
        movaps    .L_2il0floatpacket.41(%rip), %xmm1            #25.37
        movdqa    .L_2il0floatpacket.42(%rip), %xmm0            #19.46
                                # LOE rax rdx rcx rbp rdi r8 r9 ebx esi xmm0 xmm1 xmm2
..B17.2:                        # Preds ..B17.23 ..B17.1
        movl      %esi, 3280(%rsp,%r9)                          #17.9
        movl      %esi, 3348(%rsp,%r9)                          #18.9
        incl      %esi                                          #16.36
        movl      %esi, %r12d                                   #19.9
        decl      %r12d                                         #19.9
        jle       ..B17.13      # Prob 50%                      #19.9
                                # LOE rax rdx rcx rbp rsi rdi r8 r9 ebx r12d xmm0 xmm1 xmm2
..B17.3:                        # Preds ..B17.2
        cmpl      $8, %r12d                                     #19.9
        jb        ..B17.149     # Prob 10%                      #19.9
                                # LOE rax rdx rcx rbp rsi rdi r8 r9 ebx r12d xmm0 xmm1 xmm2
..B17.4:                        # Preds ..B17.3
        movl      %r12d, %r11d                                  #19.9
        movq      %rcx, %r15                                    #19.9
        andl      $-8, %r11d                                    #19.9
        lea       2064(%rsp,%rdx), %r14                         #24.17
        movl      %r11d, %r10d                                  #19.9
        movdqa    %xmm0, %xmm3                                  #19.46
        lea       16(%rsp,%r8), %r13                            #25.17
                                # LOE rax rdx rcx rbp rsi rdi r8 r9 r10 r13 r14 r15 ebx r11d r12d xmm0 xmm1 xmm2 xmm3
..B17.5:                        # Preds ..B17.5 ..B17.4
        movdqa    %xmm3, (%r14,%r15,4)                          #24.17
        paddd     %xmm2, %xmm3                                  #19.46
        movaps    %xmm1, (%r13,%r15,8)                          #25.17
        movaps    %xmm1, 16(%r13,%r15,8)                        #25.17
        movdqa    %xmm3, 16(%r14,%r15,4)                        #24.17
        paddd     %xmm2, %xmm3                                  #19.46
        movaps    %xmm1, 32(%r13,%r15,8)                        #25.17
        movaps    %xmm1, 48(%r13,%r15,8)                        #25.17
        addq      $8, %r15                                      #19.9
        cmpq      %r10, %r15                                    #19.9
        jb        ..B17.5       # Prob 93%                      #19.9
                                # LOE rax rdx rcx rbp rsi rdi r8 r9 r10 r13 r14 r15 ebx r11d r12d xmm0 xmm1 xmm2 xmm3
..B17.7:                        # Preds ..B17.5 ..B17.149
        movl      %ebx, %r10d                                   #19.9
        lea       1(%r11), %r13d                                #19.9
        cmpl      %r13d, %r12d                                  #19.9
        jb        ..B17.13      # Prob 0%                       #19.9
                                # LOE rax rdx rcx rbp rsi rdi r8 r9 ebx r10d r11d r12d xmm0 xmm1 xmm2
..B17.8:                        # Preds ..B17.7
        subl      %r11d, %r12d                                  #19.9
        lea       2064(%rsp,%rdx), %r14                         #24.17
        lea       16(%rsp,%r8), %r13                            #25.17
                                # LOE rax rdx rcx rbp rsi rdi r8 r9 r13 r14 ebx r10d r11d r12d xmm0 xmm1 xmm2
..B17.9:                        # Preds ..B17.9 ..B17.8
        movslq    %r11d, %r11                                   #24.17
        incl      %r10d                                         #19.9
        movl      %r11d, (%r14,%r11,4)                          #24.17
        movq      %rdi, (%r13,%r11,8)                           #25.17
        incl      %r11d                                         #19.9
        cmpl      %r12d, %r10d                                  #19.9
        jb        ..B17.9       # Prob 93%                      #19.9
                                # LOE rax rdx rcx rbp rsi rdi r8 r9 r13 r14 ebx r10d r11d r12d xmm0 xmm1 xmm2
..B17.13:                       # Preds ..B17.9 ..B17.2 ..B17.7
        lea       (%rdx,%r9), %r10                              #21.17
        movl      $-1, 2064(%rsp,%r10)                          #21.17
        lea       (%r8,%rax), %r11                              #22.17
        movq      %rcx, 16(%rsp,%r11)                           #22.17
                                # LOE rax rdx rcx rbp rsi rdi r8 r9 ebx xmm0 xmm1 xmm2
..B17.14:                       # Preds ..B17.13
        lea       1(%rsi), %r10d                                #19.9
        cmpl      $16, %r10d                                    #19.9
        ja        ..B17.23      # Prob 50%                      #19.9
                                # LOE rax rdx rcx rbp rsi rdi r8 r9 ebx r10d xmm0 xmm1 xmm2
..B17.15:                       # Preds ..B17.14
        movl      %esi, %r11d                                   #19.9
        negl      %r11d                                         #19.9
        addl      $16, %r11d                                    #19.9
        cmpl      $8, %r11d                                     #19.9
        jb        ..B17.148     # Prob 10%                      #19.9
                                # LOE rax rdx rcx rbp rsi rdi r8 r9 r11 ebx r10d xmm0 xmm1 xmm2
..B17.16:                       # Preds ..B17.15
        movd      %esi, %xmm3                                   #19.46
        lea       2(%rsi), %r12d                                #19.46
        movd      %r10d, %xmm4                                  #19.46
        lea       3(%rsi), %r10d                                #19.46
        lea       2064(%rsp,%rdx), %r14                         #24.17
        punpcklqdq %xmm4, %xmm3                                 #19.46
        lea       16(%rsp,%r8), %r13                            #25.17
        movd      %r12d, %xmm6                                  #19.46
        movq      %rcx, %r12                                    #19.9
        movd      %r10d, %xmm5                                  #19.46
        punpcklqdq %xmm5, %xmm6                                 #19.46
        lea       (%r14,%rsi,4), %r10                           #24.17
        shufps    $136, %xmm6, %xmm3                            #19.46
        lea       (%r13,%rsi,8), %r14                           #25.17
        movl      %r11d, %r13d                                  #19.9
        andl      $-8, %r13d                                    #19.9
        .align    16,0x90
                                # LOE rax rdx rcx rbp rdi r8 r9 r10 r11 r12 r13 r14 ebx esi xmm0 xmm1 xmm2 xmm3
..B17.17:                       # Preds ..B17.17 ..B17.16
        movdqu    %xmm3, (%r10,%r12,4)                          #24.17
        paddd     %xmm2, %xmm3                                  #19.46
        movsd     %xmm1, (%r14,%r12,8)                          #25.17
        movhpd    %xmm1, 8(%r14,%r12,8)                         #25.17
        movsd     %xmm1, 16(%r14,%r12,8)                        #25.17
        movhpd    %xmm1, 24(%r14,%r12,8)                        #25.17
        movdqu    %xmm3, 16(%r10,%r12,4)                        #24.17
        movsd     %xmm1, 32(%r14,%r12,8)                        #25.17
        paddd     %xmm2, %xmm3                                  #19.46
        movhpd    %xmm1, 40(%r14,%r12,8)                        #25.17
        movsd     %xmm1, 48(%r14,%r12,8)                        #25.17
        movhpd    %xmm1, 56(%r14,%r12,8)                        #25.17
        addq      $8, %r12                                      #19.9
        cmpq      %r13, %r12                                    #19.9
        jb        ..B17.17      # Prob 93%                      #19.9
                                # LOE rax rdx rcx rbp rdi r8 r9 r10 r11 r12 r13 r14 ebx esi xmm0 xmm1 xmm2 xmm3
..B17.19:                       # Preds ..B17.17 ..B17.148
        cmpq      %r11, %r13                                    #19.9
        jae       ..B17.23      # Prob 0%                       #19.9
                                # LOE rax rdx rcx rbp rsi rdi r8 r9 r11 r13 ebx xmm0 xmm1 xmm2
..B17.20:                       # Preds ..B17.19
        movl      %esi, %esi                                    #24.17
        lea       2064(%rsp,%rdx), %r10                         #24.17
        lea       16(%rsp,%r8), %r12                            #25.17
        lea       (%r10,%rsi,4), %r10                           #24.17
        lea       (%r12,%rsi,8), %r12                           #25.17
                                # LOE rax rdx rcx rbp rdi r8 r9 r10 r11 r12 r13 ebx esi xmm0 xmm1 xmm2
..B17.21:                       # Preds ..B17.21 ..B17.20
        movl      %r13d, %r14d                                  #24.17
        addl      %esi, %r14d                                   #19.46
        movl      %r14d, (%r10,%r13,4)                          #24.17
        movq      %rdi, (%r12,%r13,8)                           #25.17
        incq      %r13                                          #19.9
        cmpq      %r11, %r13                                    #19.9
        jb        ..B17.21      # Prob 93%                      #19.9
                                # LOE rax rdx rcx rbp rdi r8 r9 r10 r11 r12 r13 ebx esi xmm0 xmm1 xmm2
..B17.23:                       # Preds ..B17.21 ..B17.14 ..B17.19
        addq      $128, %r8                                     #16.36
        addq      $64, %rdx                                     #16.36
        addq      $4, %r9                                       #16.36
        addq      $8, %rax                                      #16.36
        cmpl      $16, %esi                                     #16.5
        jb        ..B17.2       # Prob 99%                      #16.5
                                # LOE rax rdx rcx rbp rsi rdi r8 r9 ebx xmm0 xmm1 xmm2
..B17.24:                       # Preds ..B17.23
        movl      $16, %esi                                     #32.128
        lea       3088(%rsp), %rdi                              #32.128
        movq      $0, 184(%rdi)                                 #32.128
        lea       3272(%rsp), %rdx                              #32.128
        lea       3476(%rsp), %rcx                              #32.128
..___tag_value__Z18checkVectorizationii.474:
#       std::vector<double, std::allocator<double>>::vector(std::vector<double, std::allocator<double>> *, std::vector<double, std::allocator<double>>::size_type, const std::vector<double, std::allocator<double>>::value_type &, const std::vector<double, std::allocator<double>>::allocator_type &)
        call      _ZNSt6vectorIdSaIdEEC1EmRKdRKS0_              #32.128
..___tag_value__Z18checkVectorizationii.475:
                                # LOE rbp
..B17.25:                       # Preds ..B17.24
        movl      $16, %esi                                     #32.108
        lea       3112(%rsp), %rdi                              #32.108
        lea       3088(%rsp), %rdx                              #32.108
        lea       3477(%rsp), %rcx                              #32.108
..___tag_value__Z18checkVectorizationii.476:
#       std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::vector(std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>> *, std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::size_type, const std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::value_type &, const std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::allocator_type &)
        call      _ZNSt6vectorIS_IdSaIdEESaIS1_EEC1EmRKS1_RKS2_ #32.108
..___tag_value__Z18checkVectorizationii.477:
                                # LOE rbp
..B17.26:                       # Preds ..B17.25
        movl      $32, %esi                                     #32.70
        lea       3136(%rsp), %rdi                              #32.70
        lea       3112(%rsp), %rdx                              #32.70
        lea       3478(%rsp), %rcx                              #32.70
..___tag_value__Z18checkVectorizationii.478:
#       std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::vector(std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>> *, std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::size_type, const std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::value_type &, const std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::allocator_type &)
        call      _ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_ #32.70
..___tag_value__Z18checkVectorizationii.479:
                                # LOE rbp
..B17.27:                       # Preds ..B17.26
        movq      3112(%rsp), %r12                              #32.48
        movq      3120(%rsp), %rbx                              #32.48
        cmpq      %rbx, %r12                                    #102.22
        je        ..B17.33      # Prob 1%                       #102.22
                                # LOE rbx rbp r12
..B17.29:                       # Preds ..B17.27 ..B17.31
        movq      (%r12), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B17.31      # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12
..B17.30:                       # Preds ..B17.29
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx rbp r12
..B17.31:                       # Preds ..B17.30 ..B17.29
        addq      $24, %r12                                     #102.32
        cmpq      %rbx, %r12                                    #102.22
        jne       ..B17.29      # Prob 82%                      #102.22
                                # LOE rbx rbp r12
..B17.32:                       # Preds ..B17.31
        movq      3112(%rsp), %r12                              #32.48
                                # LOE rbp r12
..B17.33:                       # Preds ..B17.32 ..B17.27
        testq     %r12, %r12                                    #173.6
        je        ..B17.35      # Prob 72%                      #173.6
                                # LOE rbp r12
..B17.34:                       # Preds ..B17.33
        movq      %r12, %rdi                                    #110.9
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbp
..B17.35:                       # Preds ..B17.34 ..B17.33
        movq      3088(%rsp), %rdi                              #32.48
        testq     %rdi, %rdi                                    #173.6
        je        ..B17.37      # Prob 72%                      #173.6
                                # LOE rbp rdi
..B17.36:                       # Preds ..B17.35
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbp
..B17.37:                       # Preds ..B17.36 ..B17.35
        movl      $16, %esi                                     #33.117
        lea       3160(%rsp), %rdi                              #33.117
        movl      $0, 184(%rdi)                                 #33.117
        lea       3344(%rsp), %rdx                              #33.117
        lea       3479(%rsp), %rcx                              #33.117
..___tag_value__Z18checkVectorizationii.480:
#       std::vector<int, std::allocator<int>>::vector(std::vector<int, std::allocator<int>> *, std::vector<int, std::allocator<int>>::size_type, const std::vector<int, std::allocator<int>>::value_type &, const std::vector<int, std::allocator<int>>::allocator_type &)
        call      _ZNSt6vectorIiSaIiEEC1EmRKiRKS0_              #33.117
..___tag_value__Z18checkVectorizationii.481:
                                # LOE rbp
..B17.38:                       # Preds ..B17.37
        movl      $16, %esi                                     #33.100
        lea       3184(%rsp), %rdi                              #33.100
        lea       3160(%rsp), %rdx                              #33.100
        lea       3616(%rsp), %rcx                              #33.100
..___tag_value__Z18checkVectorizationii.482:
#       std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::vector(std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>> *, std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::size_type, const std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::value_type &, const std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::allocator_type &)
        call      _ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_ #33.100
..___tag_value__Z18checkVectorizationii.483:
                                # LOE rbp
..B17.39:                       # Preds ..B17.38
        movl      $32, %esi                                     #33.65
        lea       3208(%rsp), %rdi                              #33.65
        lea       3184(%rsp), %rdx                              #33.65
        lea       3617(%rsp), %rcx                              #33.65
..___tag_value__Z18checkVectorizationii.484:
#       std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::vector(std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>> *, std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::size_type, const std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::value_type &, const std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::allocator_type &)
        call      _ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EEC1EmRKS3_RKS4_ #33.65
..___tag_value__Z18checkVectorizationii.485:
                                # LOE rbp
..B17.40:                       # Preds ..B17.39
        movq      3184(%rsp), %r12                              #33.45
        movq      3192(%rsp), %rbx                              #33.45
        cmpq      %rbx, %r12                                    #102.22
        je        ..B17.46      # Prob 1%                       #102.22
                                # LOE rbx rbp r12
..B17.42:                       # Preds ..B17.40 ..B17.44
        movq      (%r12), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B17.44      # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12
..B17.43:                       # Preds ..B17.42
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx rbp r12
..B17.44:                       # Preds ..B17.43 ..B17.42
        addq      $24, %r12                                     #102.32
        cmpq      %rbx, %r12                                    #102.22
        jne       ..B17.42      # Prob 82%                      #102.22
                                # LOE rbx rbp r12
..B17.45:                       # Preds ..B17.44
        movq      3184(%rsp), %r12                              #33.45
                                # LOE rbp r12
..B17.46:                       # Preds ..B17.45 ..B17.40
        testq     %r12, %r12                                    #173.6
        je        ..B17.48      # Prob 72%                      #173.6
                                # LOE rbp r12
..B17.47:                       # Preds ..B17.46
        movq      %r12, %rdi                                    #110.9
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbp
..B17.48:                       # Preds ..B17.47 ..B17.46
        movq      3160(%rsp), %rdi                              #33.45
        testq     %rdi, %rdi                                    #173.6
        je        ..B17.50      # Prob 72%                      #173.6
                                # LOE rbp rdi
..B17.49:                       # Preds ..B17.48
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbp
..B17.50:                       # Preds ..B17.49 ..B17.48
        movq      3208(%rsp), %rbx                              #51.9
        lea       3280(%rsp,%rbp,4), %r10                       #38.20
        movslq    3348(%rsp), %rax                              #45.21
        lea       3348(%rsp,%rbp,4), %r11                       #50.48
        movslq    3364(%rsp), %rcx                              #45.21
        lea       3412(%rsp,%rbp,4), %r12                       #43.9
        shlq      $6, %rbp                                      #46.16
        xorl      %esi, %esi                                    #34.5
        movslq    3372(%rsp), %r13                              #45.21
        movslq    3376(%rsp), %r14                              #45.21
        movq      120(%rbx), %r9                                #771.18
        movq      %rax, 3528(%rsp)                              #45.21
        lea       2064(%rsp,%rbp), %rdx                         #46.16
        movslq    3380(%rsp), %r15                              #45.21
        movslq    3384(%rsp), %rax                              #45.21
        movslq    3368(%rsp), %rbp                              #45.21
        movq      %rcx, 3504(%rsp)                              #45.21
        xorl      %ecx, %ecx                                    #34.5
        movq      %r12, 3240(%rsp)                              #43.9
        movq      %r9, 3256(%rsp)                               #771.18
        movq      %r10, 8(%rsp)                                 #38.20
        movq      %r11, 3232(%rsp)                              #50.48
        movq      3600(%rsp), %r12                              #46.16
        movq      %r13, 3536(%rsp)                              #45.21
        movq      %r14, 3488(%rsp)                              #45.21
        shlq      $6, %r12                                      #46.16
        movslq    3352(%rsp), %r11                              #45.21
        movslq    3356(%rsp), %r10                              #45.21
        movslq    3360(%rsp), %r9                               #45.21
        movslq    3404(%rsp), %r14                              #45.21
        movslq    3408(%rsp), %r13                              #45.21
        movq      %r15, 3512(%rsp)                              #45.21
        movq      %rax, 3520(%rsp)                              #45.21
        movq      %rdx, 3248(%rsp)                              #46.16
        movq      %rbp, 3480(%rsp)                              #45.21
        xorl      %ebp, %ebp                                    #34.5
        movslq    3388(%rsp), %rax                              #45.21
        movslq    3396(%rsp), %rdi                              #45.21
        movslq    3400(%rsp), %r15                              #45.21
        movq      %r13, 3544(%rsp)                              #34.5
        movq      %r14, 3576(%rsp)                              #34.5
        movq      %r9, 3568(%rsp)                               #34.5
        movq      %r10, 3560(%rsp)                              #34.5
        movq      %r11, 3552(%rsp)                              #34.5
        movq      %r12, 3608(%rsp)                              #34.5
        movq      3136(%rsp), %r8                               #47.17
        movslq    3392(%rsp), %rdx                              #45.21
        movq      3248(%rsp), %r13                              #34.5
        movq      3240(%rsp), %r14                              #34.5
        movq      3232(%rsp), %r12                              #34.5
        movq      8(%rsp), %r10                                 #34.5
        movq      3256(%rsp), %r9                               #34.5
        movq      3624(%rsp), %r11                              #34.5
        movq      %rax, 3496(%rsp)                              #45.21
        xorl      %eax, %eax                                    #34.5
        movsd     .L_2il0floatpacket.43(%rip), %xmm0            #47.54
        movq      %rbx, 3264(%rsp)                              #34.5
        movq      %r15, 3584(%rsp)                              #34.5
        movq      %rdi, 3592(%rsp)                              #34.5
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.51:                       # Preds ..B17.83 ..B17.50
        movslq    (%r10,%rbp,4), %rbx                           #38.20
        cmpq      %r11, %rbx                                    #39.9
        movl      %esi, (%r14,%rbp,4)                           #43.9
        cmovg     %rbx, %r11                                    #39.9
        cmpl      $-1, (%rax,%r13)                              #46.39
        je        ..B17.53      # Prob 40%                      #46.39
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.52:                       # Preds ..B17.51
        movq      120(%r8), %rbx                                #771.18
        movq      3528(%rsp), %r15                              #47.48
        movq      (%rbx,%rcx), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.53:                       # Preds ..B17.51 ..B17.52
        cmpl      $-1, 4(%rax,%r13)                             #46.39
        je        ..B17.55      # Prob 40%                      #46.39
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.54:                       # Preds ..B17.53
        movq      120(%r8), %rbx                                #771.18
        movq      3552(%rsp), %r15                              #47.48
        movq      (%rbx,%rcx), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.55:                       # Preds ..B17.53 ..B17.54
        cmpl      $-1, 8(%rax,%r13)                             #46.39
        je        ..B17.57      # Prob 40%                      #46.39
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.56:                       # Preds ..B17.55
        movq      120(%r8), %rbx                                #771.18
        movq      3560(%rsp), %r15                              #47.48
        movq      (%rbx,%rcx), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.57:                       # Preds ..B17.55 ..B17.56
        cmpl      $-1, 12(%rax,%r13)                            #46.39
        je        ..B17.59      # Prob 40%                      #46.39
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.58:                       # Preds ..B17.57
        movq      120(%r8), %rbx                                #771.18
        movq      3568(%rsp), %r15                              #47.48
        movq      (%rbx,%rcx), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.59:                       # Preds ..B17.57 ..B17.58
        cmpl      $-1, 16(%rax,%r13)                            #46.39
        je        ..B17.61      # Prob 40%                      #46.39
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.60:                       # Preds ..B17.59
        movq      120(%r8), %rbx                                #771.18
        movq      3504(%rsp), %r15                              #47.48
        movq      (%rbx,%rcx), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.61:                       # Preds ..B17.59 ..B17.60
        cmpl      $-1, 20(%rax,%r13)                            #46.39
        je        ..B17.63      # Prob 40%                      #46.39
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.62:                       # Preds ..B17.61
        movq      120(%r8), %rbx                                #771.18
        movq      3480(%rsp), %r15                              #47.48
        movq      (%rbx,%rcx), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.63:                       # Preds ..B17.61 ..B17.62
        cmpl      $-1, 24(%rax,%r13)                            #46.39
        je        ..B17.65      # Prob 40%                      #46.39
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.64:                       # Preds ..B17.63
        movq      120(%r8), %rbx                                #771.18
        movq      3536(%rsp), %r15                              #47.48
        movq      (%rbx,%rcx), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.65:                       # Preds ..B17.63 ..B17.64
        cmpl      $-1, 28(%rax,%r13)                            #46.39
        je        ..B17.67      # Prob 40%                      #46.39
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.66:                       # Preds ..B17.65
        movq      120(%r8), %rbx                                #771.18
        movq      3488(%rsp), %r15                              #47.48
        movq      (%rbx,%rcx), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.67:                       # Preds ..B17.65 ..B17.66
        cmpl      $-1, 32(%rax,%r13)                            #46.39
        je        ..B17.69      # Prob 40%                      #46.39
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.68:                       # Preds ..B17.67
        movq      120(%r8), %rbx                                #771.18
        movq      3512(%rsp), %r15                              #47.48
        movq      (%rbx,%rcx), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.69:                       # Preds ..B17.67 ..B17.68
        cmpl      $-1, 36(%rax,%r13)                            #46.39
        je        ..B17.71      # Prob 40%                      #46.39
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.70:                       # Preds ..B17.69
        movq      120(%r8), %rbx                                #771.18
        movq      3520(%rsp), %r15                              #47.48
        movq      (%rbx,%rcx), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.71:                       # Preds ..B17.69 ..B17.70
        cmpl      $-1, 40(%rax,%r13)                            #46.39
        je        ..B17.73      # Prob 40%                      #46.39
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.72:                       # Preds ..B17.71
        movq      120(%r8), %rbx                                #771.18
        movq      3496(%rsp), %r15                              #47.48
        movq      (%rbx,%rcx), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.73:                       # Preds ..B17.71 ..B17.72
        cmpl      $-1, 44(%rax,%r13)                            #46.39
        je        ..B17.75      # Prob 40%                      #46.39
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.74:                       # Preds ..B17.73
        movq      120(%r8), %rbx                                #771.18
        movq      (%rbx,%rcx), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%rdx,8)                          #47.48
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.75:                       # Preds ..B17.73 ..B17.74
        cmpl      $-1, 48(%rax,%r13)                            #46.39
        je        ..B17.77      # Prob 40%                      #46.39
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.76:                       # Preds ..B17.75
        movq      120(%r8), %rbx                                #771.18
        movq      3592(%rsp), %r15                              #47.48
        movq      (%rbx,%rcx), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.77:                       # Preds ..B17.75 ..B17.76
        cmpl      $-1, 52(%rax,%r13)                            #46.39
        je        ..B17.79      # Prob 40%                      #46.39
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.78:                       # Preds ..B17.77
        movq      120(%r8), %rbx                                #771.18
        movq      3584(%rsp), %r15                              #47.48
        movq      (%rbx,%rcx), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.79:                       # Preds ..B17.77 ..B17.78
        cmpl      $-1, 56(%rax,%r13)                            #46.39
        je        ..B17.81      # Prob 40%                      #46.39
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.80:                       # Preds ..B17.79
        movq      120(%r8), %rbx                                #771.18
        movq      3576(%rsp), %r15                              #47.48
        movq      (%rbx,%rcx), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.81:                       # Preds ..B17.79 ..B17.80
        cmpl      $-1, 60(%rax,%r13)                            #46.39
        je        ..B17.83      # Prob 40%                      #46.39
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.82:                       # Preds ..B17.81
        movq      120(%r8), %rbx                                #771.18
        movq      3544(%rsp), %r15                              #47.48
        movq      (%rbx,%rcx), %rdi                             #771.18
        movsd     %xmm0, (%rdi,%r15,8)                          #47.48
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.83:                       # Preds ..B17.81 ..B17.82
        movq      120(%r8), %r15                                #771.18
        lea       (%rsi,%rsi,2), %rbx                           #771.18
        movslq    (%r12,%rbp,4), %rdi                           #50.48
        incq      %rsi                                          #34.5
        addq      3600(%rsp), %rbp                              #34.5
        addq      $24, %rcx                                     #34.5
        movq      (%r15,%rbx,8), %r15                           #771.18
        addq      3608(%rsp), %rax                              #34.5
        cmpq      $16, %rsi                                     #34.5
        movq      $0, (%r15,%rdi,8)                             #50.47
        movq      (%r9,%rbx,8), %rdi                            #1126.25
        movq      %rdi, 8(%r9,%rbx,8)                           #1353.2
        jb        ..B17.51      # Prob 91%                      #34.5
                                # LOE rax rdx rcx rbp rsi r8 r9 r10 r11 r12 r13 r14 xmm0
..B17.84:                       # Preds ..B17.83
        movq      %r11, 3624(%rsp)                              #
        xorl      %edx, %edx                                    #53.20
        movq      3264(%rsp), %rbx                              #
        cmpq      $0, 3624(%rsp)                                #53.33
        jle       ..B17.93      # Prob 3%                       #53.33
                                # LOE rdx rbx r8 r11 ebx r11d bl bh r11b xmm0
..B17.85:                       # Preds ..B17.84
        movq      %r11, %rsi                                    #54.24
        xorb      %al, %al                                      #54.24
        movl      (%rsp), %r12d                                 #54.24
        movq      %rbx, %rdi                                    #54.24
        xorl      %ecx, %ecx                                    #54.24
                                # LOE rdx rsi rdi r8 ecx r12d al
..B17.86:                       # Preds ..B17.91 ..B17.85
        movq      %rdx, (%rsp)                                  #54.24
        movb      %al, %r15b                                    #54.24
        movq      %rsi, 3624(%rsp)                              #54.24
        lea       2064(%rsp,%rdx,4), %r13                       #58.21
        movl      %ecx, %r14d                                   #54.24
        lea       16(%rsp,%rdx,8), %rbp                         #59.29
                                # LOE rbp rdi r8 r13 r12d r14d r15b
..B17.87:                       # Preds ..B17.90 ..B17.86
        lea       (%r12,%r14), %ebx                             #55.34
        movslq    %ebx, %rbx                                    #58.21
        movq      %rbx, %rdx                                    #59.29
        movq      %rbx, %rax                                    #58.21
        shlq      $7, %rdx                                      #59.29
        shlq      $6, %rax                                      #58.21
        movsd     (%rdx,%rbp), %xmm0                            #59.29
        movl      (%rax,%r13), %eax                             #58.21
        cmpl      %eax, %ebx                                    #60.23
        movsd     %xmm0, 3232(%rsp)                             #59.29
        je        ..B17.90      # Prob 78%                      #60.23
                                # LOE rbx rbp rdi r8 r13 eax r12d r14d r15b
..B17.88:                       # Preds ..B17.87
        movslq    3412(%rsp,%rbx,4), %rdx                       #62.44
        movslq    %eax, %rax                                    #61.25
        movq      120(%r8), %rcx                                #771.18
        lea       (%rdx,%rdx,2), %rdx                           #771.18
        movslq    3348(%rsp,%rax,4), %rax                       #61.25
        lea       (%rcx,%rdx,8), %r10                           #771.18
        movq      (%r10), %rsi                                  #771.18
        movl      %eax, %r9d                                    #61.25
        movl      %r9d, 8(%rsp)                                 #61.23
        lea       (,%rax,8), %rcx                               #771.18
        movsd     (%rsi,%rcx), %xmm0                            #62.56
        ucomisd   .L_2il0floatpacket.43(%rip), %xmm0            #62.63
        jp        ..B17.89      # Prob 0%                       #62.63
        je        ..B17.122     # Prob 16%                      #62.63
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r10 r13 r9d r12d r14d r15b
..B17.89:                       # Preds ..B17.125 ..B17.127 ..B17.88
        movq      (%r10), %rax                                  #771.18
        movsd     (%rcx,%rax), %xmm0                            #67.52
        addsd     3232(%rsp), %xmm0                             #67.52
        movsd     %xmm0, (%rcx,%rax)                            #67.52
                                # LOE rbp rdi r8 r13 r12d r14d r15b
..B17.90:                       # Preds ..B17.89 ..B17.87
        incb      %r15b                                         #54.52
        addl      3632(%rsp), %r14d                             #54.52
        cmpb      $16, %r15b                                    #54.37
        jl        ..B17.87      # Prob 82%                      #54.37
                                # LOE rbp rdi r8 r13 r12d r14d r15b
..B17.91:                       # Preds ..B17.90
        movq      (%rsp), %rdx                                  #
        xorb      %al, %al                                      #
        incq      %rdx                                          #53.41
        xorl      %ecx, %ecx                                    #
        movq      3624(%rsp), %rsi                              #
        cmpq      %rsi, %rdx                                    #53.33
        jl        ..B17.86      # Prob 93%                      #53.33
                                # LOE rdx rsi rdi r8 ecx r12d al
..B17.92:                       # Preds ..B17.91
        movq      %rdi, %rbx                                    #
                                # LOE rbx
..B17.93:                       # Preds ..B17.92 ..B17.84
        movq      3216(%rsp), %rbp                              #71.5
        cmpq      %rbp, %rbx                                    #102.22
        movl      block_size(%rip), %r12d                       #71.12
        je        ..B17.105     # Prob 1%                       #102.22
                                # LOE rbx rbp r12d
..B17.95:                       # Preds ..B17.93 ..B17.103
        movq      (%rbx), %r14                                  #415.23
        movq      8(%rbx), %r13                                 #415.47
        cmpq      %r13, %r14                                    #102.22
        je        ..B17.101     # Prob 1%                       #102.22
                                # LOE rbx rbp r13 r14 r12d
..B17.97:                       # Preds ..B17.95 ..B17.99
        movq      (%r14), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B17.99      # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r13 r14 r12d
..B17.98:                       # Preds ..B17.97
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx rbp r13 r14 r12d
..B17.99:                       # Preds ..B17.98 ..B17.97
        addq      $24, %r14                                     #102.32
        cmpq      %r13, %r14                                    #102.22
        jne       ..B17.97      # Prob 82%                      #102.22
                                # LOE rbx rbp r13 r14 r12d
..B17.101:                      # Preds ..B17.99 ..B17.95
        movq      (%rbx), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B17.103     # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12d
..B17.102:                      # Preds ..B17.101
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx rbp r12d
..B17.103:                      # Preds ..B17.102 ..B17.101
        addq      $24, %rbx                                     #102.32
        cmpq      %rbp, %rbx                                    #102.22
        jne       ..B17.95      # Prob 82%                      #102.22
                                # LOE rbx rbp r12d
..B17.104:                      # Preds ..B17.103
        movq      3208(%rsp), %rbx                              #71.5
                                # LOE rbx r12d
..B17.105:                      # Preds ..B17.104 ..B17.93
        testq     %rbx, %rbx                                    #173.6
        je        ..B17.107     # Prob 72%                      #173.6
                                # LOE rbx r12d
..B17.106:                      # Preds ..B17.105
        movq      %rbx, %rdi                                    #110.9
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE r12d
..B17.107:                      # Preds ..B17.106 ..B17.105
        movq      3136(%rsp), %rbp                              #71.5
        movq      3144(%rsp), %rbx                              #71.5
        cmpq      %rbx, %rbp                                    #102.22
        je        ..B17.119     # Prob 1%                       #102.22
                                # LOE rbx rbp r12d
..B17.109:                      # Preds ..B17.107 ..B17.117
        movq      (%rbp), %r14                                  #415.23
        movq      8(%rbp), %r13                                 #415.47
        cmpq      %r13, %r14                                    #102.22
        je        ..B17.115     # Prob 1%                       #102.22
                                # LOE rbx rbp r13 r14 r12d
..B17.111:                      # Preds ..B17.109 ..B17.113
        movq      (%r14), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B17.113     # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r13 r14 r12d
..B17.112:                      # Preds ..B17.111
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx rbp r13 r14 r12d
..B17.113:                      # Preds ..B17.112 ..B17.111
        addq      $24, %r14                                     #102.32
        cmpq      %r13, %r14                                    #102.22
        jne       ..B17.111     # Prob 82%                      #102.22
                                # LOE rbx rbp r13 r14 r12d
..B17.115:                      # Preds ..B17.113 ..B17.109
        movq      (%rbp), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B17.117     # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12d
..B17.116:                      # Preds ..B17.115
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx rbp r12d
..B17.117:                      # Preds ..B17.116 ..B17.115
        addq      $24, %rbp                                     #102.32
        cmpq      %rbx, %rbp                                    #102.22
        jne       ..B17.109     # Prob 82%                      #102.22
                                # LOE rbx rbp r12d
..B17.118:                      # Preds ..B17.117
        movq      3136(%rsp), %rbp                              #71.5
                                # LOE rbp r12d
..B17.119:                      # Preds ..B17.118 ..B17.107
        testq     %rbp, %rbp                                    #173.6
        je        ..B17.121     # Prob 72%                      #173.6
                                # LOE rbp r12d
..B17.120:                      # Preds ..B17.119
        movq      %rbp, %rdi                                    #110.9
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE r12d
..B17.121:                      # Preds ..B17.120 ..B17.119
        movl      %r12d, %eax                                   #71.5
        addq      $3640, %rsp                                   #71.5
	.cfi_def_cfa_offset 56
	.cfi_restore 6
        popq      %rbp                                          #71.5
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #71.5
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #71.5
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #71.5
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #71.5
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #71.5
	.cfi_def_cfa_offset 8
        ret                                                     #71.5
	.cfi_def_cfa_offset 3696
	.cfi_offset 3, -48
	.cfi_offset 6, -56
	.cfi_offset 12, -16
	.cfi_offset 13, -24
	.cfi_offset 14, -32
	.cfi_offset 15, -40
                                # LOE
..B17.122:                      # Preds ..B17.88                # Infreq
        movq      120(%rdi), %r10                               #771.18
        movq      $0, (%rsi,%rax,8)                             #64.56
        lea       (%r10,%rdx,8), %rax                           #771.18
        movq      8(%rax), %rsi                                 #903.6
        cmpq      16(%rax), %rsi                                #903.33
        je        ..B17.126     # Prob 12%                      #903.33
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r10 r13 r9d r12d r14d r15b
..B17.123:                      # Preds ..B17.122               # Infreq
        testq     %rsi, %rsi                                    #130.23
        je        ..B17.125     # Prob 12%                      #130.23
                                # LOE rdx rcx rbp rsi rdi r8 r10 r13 r9d r12d r14d r15b
..B17.124:                      # Preds ..B17.123               # Infreq
        movl      %r9d, (%rsi)                                  #130.32
                                # LOE rdx rcx rbp rsi rdi r8 r10 r13 r12d r14d r15b
..B17.125:                      # Preds ..B17.123 ..B17.124     # Infreq
        movq      120(%r8), %rax                                #771.18
        addq      $4, %rsi                                      #907.8
        movq      %rsi, 8(%r10,%rdx,8)                          #907.8
        lea       (%rax,%rdx,8), %r10                           #771.18
        jmp       ..B17.89      # Prob 100%                     #771.18
                                # LOE rcx rbp rdi r8 r10 r13 r12d r14d r15b
..B17.126:                      # Preds ..B17.122               # Infreq
        movq      %rax, %rdi                                    #913.4
        lea       8(%rsp), %rdx                                 #913.4
..___tag_value__Z18checkVectorizationii.506:
#       std::vector<int, std::allocator<int>>::_M_insert_aux(std::vector<int, std::allocator<int>> *, std::vector<int, std::allocator<int>>::iterator, const std::vector<int, std::allocator<int>>::value_type &)
        call      _ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi #913.4
..___tag_value__Z18checkVectorizationii.507:
                                # LOE rbx rbp r13 r12d r14d r15b
..B17.127:                      # Preds ..B17.126               # Infreq
        movq      3136(%rsp), %r8                               #67.17
        movslq    3412(%rsp,%rbx,4), %rax                       #67.40
        movslq    8(%rsp), %rcx                                 #67.53
        movq      3208(%rsp), %rdi                              #65.21
        movq      120(%r8), %rdx                                #771.18
        lea       (%rax,%rax,2), %rsi                           #771.18
        shlq      $3, %rcx                                      #771.18
        lea       (%rdx,%rsi,8), %r10                           #771.18
        jmp       ..B17.89      # Prob 100%                     #771.18
                                # LOE rcx rbp rdi r8 r10 r13 r12d r14d r15b
..___tag_value__Z18checkVectorizationii.458:
..B17.128:                      # Preds ..B17.126               # Infreq
        movq      %rax, (%rsp)                                  #33.65
                                # LOE
..B17.129:                      # Preds ..B17.128               # Infreq
        lea       3208(%rsp), %rdi                              #33.65
#       std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::~vector(std::vector<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>> *)
        call      _ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED1Ev #33.65
                                # LOE
..B17.131:                      # Preds ..B17.136 ..B17.129 ..B17.139 # Infreq
        lea       3136(%rsp), %rdi                              #32.70
#       std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::~vector(std::vector<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>> *)
        call      _ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EED1Ev #32.70
                                # LOE
..B17.132:                      # Preds ..B17.147 ..B17.143 ..B17.131 # Infreq
        movq      (%rsp), %rdi                                  #32.70
..___tag_value__Z18checkVectorizationii.508:
        call      _Unwind_Resume                                #32.70
..___tag_value__Z18checkVectorizationii.509:
                                # LOE
..___tag_value__Z18checkVectorizationii.457:
..B17.133:                      # Preds ..B17.39                # Infreq
        movq      %rax, (%rsp)                                  #33.65
                                # LOE
..B17.134:                      # Preds ..B17.133               # Infreq
        lea       3184(%rsp), %rdi                              #33.100
#       std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::~vector(std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>> *)
        call      _ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev           #33.100
                                # LOE
..B17.136:                      # Preds ..B17.134 ..B17.138     # Infreq
        lea       3160(%rsp), %rdi                              #33.117
#       std::vector<int, std::allocator<int>>::~vector(std::vector<int, std::allocator<int>> *)
        call      _ZNSt6vectorIiSaIiEED1Ev                      #33.117
        jmp       ..B17.131     # Prob 100%                     #33.117
                                # LOE
..___tag_value__Z18checkVectorizationii.456:
..B17.138:                      # Preds ..B17.38                # Infreq
        movq      %rax, (%rsp)                                  #33.100
        jmp       ..B17.136     # Prob 100%                     #33.100
                                # LOE
..___tag_value__Z18checkVectorizationii.455:
..B17.139:                      # Preds ..B17.37                # Infreq
        movq      %rax, (%rsp)                                  #33.117
        jmp       ..B17.131     # Prob 100%                     #33.117
                                # LOE
..___tag_value__Z18checkVectorizationii.454:
..B17.140:                      # Preds ..B17.26                # Infreq
        movq      %rax, (%rsp)                                  #32.70
                                # LOE
..B17.141:                      # Preds ..B17.140               # Infreq
        lea       3112(%rsp), %rdi                              #32.108
#       std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::~vector(std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>> *)
        call      _ZNSt6vectorIS_IdSaIdEESaIS1_EED1Ev           #32.108
                                # LOE
..B17.143:                      # Preds ..B17.141 ..B17.146     # Infreq
        lea       3088(%rsp), %rdi                              #32.128
#       std::vector<double, std::allocator<double>>::~vector(std::vector<double, std::allocator<double>> *)
        call      _ZNSt6vectorIdSaIdEED1Ev                      #32.128
        jmp       ..B17.132     # Prob 100%                     #32.128
                                # LOE
..___tag_value__Z18checkVectorizationii.453:
..B17.146:                      # Preds ..B17.25                # Infreq
        movq      %rax, (%rsp)                                  #32.108
        jmp       ..B17.143     # Prob 100%                     #32.108
                                # LOE
..___tag_value__Z18checkVectorizationii.452:
..B17.147:                      # Preds ..B17.24                # Infreq
        movq      %rax, (%rsp)                                  #32.128
        jmp       ..B17.132     # Prob 100%                     #32.128
                                # LOE
..B17.148:                      # Preds ..B17.15                # Infreq
        movq      %rcx, %r13                                    #19.9
        jmp       ..B17.19      # Prob 100%                     #19.9
                                # LOE rax rdx rcx rbp rsi rdi r8 r9 r11 r13 ebx xmm0 xmm1 xmm2
..B17.149:                      # Preds ..B17.3                 # Infreq
        movl      %ebx, %r11d                                   #19.9
        jmp       ..B17.7       # Prob 100%                     #19.9
        .align    16,0x90
	.cfi_endproc
                                # LOE rax rdx rcx rbp rsi rdi r8 r9 ebx r11d r12d xmm0 xmm1 xmm2
# mark_end;
	.type	_Z18checkVectorizationii,@function
	.size	_Z18checkVectorizationii,.-_Z18checkVectorizationii
	.section .gcc_except_table, "a"
	.align 4
_Z18checkVectorizationii$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__Z18checkVectorizationii.514 - ..___tag_value__Z18checkVectorizationii.513
..___tag_value__Z18checkVectorizationii.513:
	.byte	1
	.uleb128	..___tag_value__Z18checkVectorizationii.512 - ..___tag_value__Z18checkVectorizationii.511
..___tag_value__Z18checkVectorizationii.511:
	.uleb128	..___tag_value__Z18checkVectorizationii.474 - ..___tag_value__Z18checkVectorizationii.459
	.uleb128	..___tag_value__Z18checkVectorizationii.475 - ..___tag_value__Z18checkVectorizationii.474
	.uleb128	..___tag_value__Z18checkVectorizationii.452 - ..___tag_value__Z18checkVectorizationii.459
	.byte	0
	.uleb128	..___tag_value__Z18checkVectorizationii.476 - ..___tag_value__Z18checkVectorizationii.459
	.uleb128	..___tag_value__Z18checkVectorizationii.477 - ..___tag_value__Z18checkVectorizationii.476
	.uleb128	..___tag_value__Z18checkVectorizationii.453 - ..___tag_value__Z18checkVectorizationii.459
	.byte	0
	.uleb128	..___tag_value__Z18checkVectorizationii.478 - ..___tag_value__Z18checkVectorizationii.459
	.uleb128	..___tag_value__Z18checkVectorizationii.479 - ..___tag_value__Z18checkVectorizationii.478
	.uleb128	..___tag_value__Z18checkVectorizationii.454 - ..___tag_value__Z18checkVectorizationii.459
	.byte	0
	.uleb128	..___tag_value__Z18checkVectorizationii.480 - ..___tag_value__Z18checkVectorizationii.459
	.uleb128	..___tag_value__Z18checkVectorizationii.481 - ..___tag_value__Z18checkVectorizationii.480
	.uleb128	..___tag_value__Z18checkVectorizationii.455 - ..___tag_value__Z18checkVectorizationii.459
	.byte	0
	.uleb128	..___tag_value__Z18checkVectorizationii.482 - ..___tag_value__Z18checkVectorizationii.459
	.uleb128	..___tag_value__Z18checkVectorizationii.483 - ..___tag_value__Z18checkVectorizationii.482
	.uleb128	..___tag_value__Z18checkVectorizationii.456 - ..___tag_value__Z18checkVectorizationii.459
	.byte	0
	.uleb128	..___tag_value__Z18checkVectorizationii.484 - ..___tag_value__Z18checkVectorizationii.459
	.uleb128	..___tag_value__Z18checkVectorizationii.485 - ..___tag_value__Z18checkVectorizationii.484
	.uleb128	..___tag_value__Z18checkVectorizationii.457 - ..___tag_value__Z18checkVectorizationii.459
	.byte	0
	.uleb128	..___tag_value__Z18checkVectorizationii.506 - ..___tag_value__Z18checkVectorizationii.459
	.uleb128	..___tag_value__Z18checkVectorizationii.507 - ..___tag_value__Z18checkVectorizationii.506
	.uleb128	..___tag_value__Z18checkVectorizationii.458 - ..___tag_value__Z18checkVectorizationii.459
	.byte	0
	.uleb128	..___tag_value__Z18checkVectorizationii.508 - ..___tag_value__Z18checkVectorizationii.459
	.uleb128	..___tag_value__Z18checkVectorizationii.509 - ..___tag_value__Z18checkVectorizationii.508
	.byte	0
	.byte	0
..___tag_value__Z18checkVectorizationii.512:
	.long	0x00000000,0x00000000
..___tag_value__Z18checkVectorizationii.514:
	.data
# -- End  _Z18checkVectorizationii
	.section .text._ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi, "xaG",@progbits,_ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi,comdat
..TXTST16:
# -- Begin  _ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi
	.section .text._ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi, "xaG",@progbits,_ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi
# --- std::vector<int, std::allocator<int>>::_M_insert_aux(std::vector<int, std::allocator<int>> *, std::vector<int, std::allocator<int>>::iterator, const std::vector<int, std::allocator<int>>::value_type &)
_ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
..B18.1:                        # Preds ..B18.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi$$LSDA
..___tag_value__ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi.515:
..L516:
                                                        #321.5
        pushq     %r12                                          #321.5
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #321.5
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #321.5
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #321.5
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rbx                                          #321.5
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        subq      $16, %rsp                                     #321.5
	.cfi_def_cfa_offset 64
        movq      %rdi, %r13                                    #321.5
        movq      %rsi, (%rsp)                                  #321.5
        movq      %rdx, %r15                                    #321.5
        movq      8(%r13), %rdi                                 #322.11
        cmpq      16(%r13), %rdi                                #322.38
        je        ..B18.9       # Prob 1%                       #322.38
                                # LOE rbp rdi r13 r15
..B18.2:                        # Preds ..B18.1
        testq     %rdi, %rdi                                    #130.23
        je        ..B18.4       # Prob 12%                      #130.23
                                # LOE rbp rdi r13 r15
..B18.3:                        # Preds ..B18.2
        movl      -4(%rdi), %eax                                #130.32
        movl      %eax, (%rdi)                                  #130.32
                                # LOE rbp rdi r13 r15
..B18.4:                        # Preds ..B18.2 ..B18.3
        movq      (%rsp), %rsi                                  #331.4
        lea       -4(%rdi), %rdx                                #331.4
        subq      %rsi, %rdx                                    #630.55
        lea       4(%rdi), %rax                                 #327.6
        sarq      $2, %rdx                                      #565.36
        movq      %rax, 8(%r13)                                 #327.6
        testq     %rdx, %rdx                                    #566.8
        movl      (%r15), %ebx                                  #329.19
        je        ..B18.7       # Prob 78%                      #566.8
                                # LOE rdx rbp rsi rdi ebx
..B18.5:                        # Preds ..B18.4
        shlq      $2, %rdx                                      #567.6
        subq      %rdx, %rdi                                    #567.6
        call      _intel_fast_memmove                           #567.6
                                # LOE rbp ebx
..B18.6:                        # Preds ..B18.5
        movq      (%rsp), %rsi                                  #335.5
                                # LOE rbp rsi ebx
..B18.7:                        # Preds ..B18.6 ..B18.4
        movl      %ebx, (%rsi)                                  #335.4
                                # LOE rbp
..B18.8:                        # Preds ..B18.7
        addq      $16, %rsp                                     #393.5
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #393.5
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #393.5
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #393.5
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #393.5
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #393.5
	.cfi_def_cfa_offset 8
        ret                                                     #393.5
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 12, -16
	.cfi_offset 13, -24
	.cfi_offset 14, -32
	.cfi_offset 15, -40
                                # LOE
..B18.9:                        # Preds ..B18.1                 # Infreq
        movq      (%r13), %rsi                                  #646.52
        subq      %rsi, %rdi                                    #646.26
        sarq      $2, %rdi                                      #646.52
                                # LOE rbp rsi rdi r13 r15
..B18.10:                       # Preds ..B18.9                 # Infreq
        movl      $1, %ebx                                      #1341.35
        cmpq      $1, %rdi                                      #1341.35
        cmova     %rdi, %rbx                                    #1341.35
        addq      %rdi, %rbx                                    #1341.35
        cmpq      %rdi, %rbx                                    #1342.18
        jb        ..B18.14      # Prob 78%                      #1342.18
                                # LOE rbx rbp rsi r13 r15
..B18.11:                       # Preds ..B18.10                # Infreq
        movq      $0x3fffffffffffffff, %rax                     #1342.36
        cmpq      %rax, %rbx                                    #1342.36
        ja        ..B18.14      # Prob 22%                      #1342.36
                                # LOE rbx rbp rsi r13 r15
..B18.12:                       # Preds ..B18.11                # Infreq
        movq      (%rsp), %rcx                                  #344.37
        movq      %rcx, %r14                                    #344.37
        subq      %rsi, %r14                                    #344.37
        shrq      $2, %r14                                      #898.35
        testq     %rbx, %rbx                                    #168.23
        jne       ..B18.15      # Prob 5%                       #168.23
                                # LOE rcx rbx rbp rsi r13 r14 r15
..B18.13:                       # Preds ..B18.12                # Infreq
        shlq      $2, %rbx                                      #391.38
        xorl      %r12d, %r12d                                  #168.51
        jmp       ..B18.17      # Prob 100%                     #168.51
                                # LOE rcx rbx rbp rsi r12 r13 r14 r15
..B18.14:                       # Preds ..B18.10 ..B18.11       # Infreq
        movq      (%rsp), %r14                                  #344.37
        movq      $0x3fffffffffffffff, %rbx                     #1342.63
        subq      %rsi, %r14                                    #344.37
        shrq      $2, %r14                                      #898.35
                                # LOE rbx rbp r13 r14 r15
..B18.15:                       # Preds ..B18.12 ..B18.14       # Infreq
        shlq      $2, %rbx                                      #104.48
        movq      %rbx, %rdi                                    #104.27
..___tag_value__ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi.545:
#       operator new(std::size_t)
        call      _Znwm                                         #104.27
..___tag_value__ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi.546:
                                # LOE rax rbx rbp r13 r14 r15
..B18.29:                       # Preds ..B18.15                # Infreq
        movq      %rax, %r12                                    #104.27
                                # LOE rbx rbp r12 r13 r14 r15
..B18.16:                       # Preds ..B18.29                # Infreq
        movq      (%r13), %rsi                                  #364.4
        movq      (%rsp), %rcx                                  #364.4
                                # LOE rcx rbx rbp rsi r12 r13 r14 r15
..B18.17:                       # Preds ..B18.16 ..B18.13       # Infreq
        lea       (%r12,%r14,4), %rdx                           #354.26
        testq     %rdx, %rdx                                    #130.23
        je        ..B18.19      # Prob 12%                      #130.23
                                # LOE rdx rcx rbx rbp rsi r12 r13 r15
..B18.18:                       # Preds ..B18.17                # Infreq
        movl      (%r15), %eax                                  #130.32
        movl      %eax, (%rdx)                                  #130.32
                                # LOE rcx rbx rbp rsi r12 r13
..B18.19:                       # Preds ..B18.17 ..B18.18       # Infreq
        movq      %rcx, %r14                                    #364.39
        subq      %rsi, %r14                                    #364.39
        sarq      $2, %r14                                      #370.36
        testq     %r14, %r14                                    #371.8
        je        ..B18.21      # Prob 78%                      #371.8
                                # LOE rcx rbx rbp rsi r12 r13 r14
..B18.20:                       # Preds ..B18.19                # Infreq
        movq      %r12, %rdi                                    #372.6
        lea       (,%r14,4), %rdx                               #372.6
        call      _intel_fast_memmove                           #372.6
        movq      (%rsp), %rcx                                  #372.6
                                # LOE rcx rbx rbp r12 r13 r14
..B18.21:                       # Preds ..B18.19 ..B18.20       # Infreq
        movq      8(%r13), %r15                                 #371.23
        lea       4(%r12,%r14,4), %r14                          #367.10
        subq      %rcx, %r15                                    #281.3
        sarq      $2, %r15                                      #370.36
        testq     %r15, %r15                                    #371.8
        je        ..B18.23      # Prob 78%                      #371.8
                                # LOE rcx rbx rbp r12 r13 r14 r15
..B18.22:                       # Preds ..B18.21                # Infreq
        movq      %r14, %rdi                                    #372.6
        lea       (,%r15,4), %rdx                               #372.6
        movq      %rcx, %rsi                                    #372.6
        call      _intel_fast_memmove                           #372.6
                                # LOE rbx rbp r12 r13 r14 r15
..B18.23:                       # Preds ..B18.21 ..B18.22       # Infreq
        movq      (%r13), %rdi                                  #386.18
        lea       (%r14,%r15,4), %r14                           #373.11
        testq     %rdi, %rdi                                    #173.6
        je        ..B18.25      # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14
..B18.24:                       # Preds ..B18.23                # Infreq
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx rbp r12 r13 r14
..B18.25:                       # Preds ..B18.23 ..B18.24       # Infreq
        addq      %r12, %rbx                                    #391.38
        movq      %r12, (%r13)                                  #389.4
        movq      %r14, 8(%r13)                                 #390.4
        movq      %rbx, 16(%r13)                                #391.4
        addq      $16, %rsp                                     #391.4
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #391.4
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #391.4
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #391.4
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #391.4
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #391.4
	.cfi_def_cfa_offset 8
        ret                                                     #391.4
        .align    16,0x90
	.cfi_endproc
                                # LOE rbp
# mark_end;
	.type	_ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi,@function
	.size	_ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi,.-_ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi
	.section .gcc_except_table, "a"
	.align 4
_ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi.562 - ..___tag_value__ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi.561
..___tag_value__ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi.561:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi.560 - ..___tag_value__ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi.559
..___tag_value__ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi.559:
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi.545 - ..___tag_value__ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi.515
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi.546 - ..___tag_value__ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi.545
	.byte	0
	.byte	0
..___tag_value__ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi.560:
	.byte	1
	.byte	0
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi.562:
	.data
# -- End  _ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi
	.section .text._ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, "xaG",@progbits,_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
..TXTST17:
# -- Begin  _ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.section .text._ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, "xaG",@progbits,_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
# --- std::_Vector_base<int, std::allocator<int>>::_M_get_Tp_allocator(std::_Vector_base<int, std::allocator<int>> *)
_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
# parameter 1: %rdi
..B19.1:                        # Preds ..B19.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv.563:
..L564:
                                                        #114.7
        movq      %rdi, %rax                                    #114.47
        ret                                                     #114.47
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,@function
	.size	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,.-_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.data
# -- End  _ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.section .text._ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, "xaG",@progbits,_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,comdat
..TXTST18:
# -- Begin  _ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.section .text._ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, "xaG",@progbits,_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
# --- std::_Vector_base<int, std::allocator<int>>::_M_deallocate(std::_Vector_base<int, std::allocator<int>> *, std::_Vector_base<int, std::allocator<int>>::pointer, std::size_t)
_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
..B20.1:                        # Preds ..B20.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.566:
..L567:
                                                        #172.7
        testq     %rsi, %rsi                                    #173.6
        je        ..B20.3       # Prob 72%                      #173.6
                                # LOE rbx rbp rsi r12 r13 r14 r15
..B20.2:                        # Preds ..B20.1
        movq      %rsi, %rdi                                    #110.9
#       operator delete(void *)
        jmp       _ZdlPv                                        #110.9
                                # LOE
..B20.3:                        # Preds ..B20.1
        ret                                                     #175.7
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,@function
	.size	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,.-_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.data
# -- End  _ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.section .text._ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_, "xaG",@progbits,_ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_,comdat
..TXTST19:
# -- Begin  _ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_
	.section .text._ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_, "xaG",@progbits,_ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_
# --- std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::vector(std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>> *, const std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>> &)
_ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_:
# parameter 1: %rdi
# parameter 2: %rsi
..B21.1:                        # Preds ..B21.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_$$LSDA
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.572:
..L573:
                                                        #313.7
        pushq     %r15                                          #313.7
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
        pushq     %rbx                                          #313.7
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
        pushq     %rbp                                          #313.7
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
        subq      $32, %rsp                                     #313.7
	.cfi_def_cfa_offset 64
        movq      %rsi, %rbp                                    #313.7
        movq      $0x2aaaaaaaaaaaaaab, %rax                     #646.52
        movq      %rdi, %rbx                                    #313.7
        movq      8(%rbp), %rcx                                 #646.26
        subq      (%rbp), %rcx                                  #646.26
        imulq     %rcx                                          #646.52
        sarq      $2, %rdx                                      #646.52
        xorl      %eax, %eax                                    #90.2
        sarq      $63, %rcx                                     #646.52
        movq      %rax, (%rbx)                                  #90.2
        subq      %rcx, %rdx                                    #646.52
        movq      %rax, 8(%rbx)                                 #90.2
        movq      %rax, 16(%rbx)                                #90.2
        jne       ..B21.19      # Prob 5%                       #168.23
                                # LOE rax rdx rbx rbp r12 r13 r14
..B21.2:                        # Preds ..B21.1
        lea       (%rdx,%rdx,2), %r15                           #183.36
        shlq      $3, %r15                                      #183.36
                                # LOE rax rbx rbp r12 r13 r14 r15
..B21.3:                        # Preds ..B21.20 ..B21.2
        movq      %rax, (%rbx)                                  #181.2
        addq      %rax, %r15                                    #183.36
        movq      %rax, 8(%rbx)                                 #182.2
        movq      (%rbp), %rsi                                  #548.31
        movq      8(%rbp), %rdx                                 #566.31
        cmpq      %rdx, %rsi                                    #825.36
        movq      %r15, 16(%rbx)                                #183.2
        movq      %rax, %r15                                    #71.29
        je        ..B21.10      # Prob 4%                       #825.36
                                # LOE rax rdx rbx rsi r12 r13 r14 r15
..B21.4:                        # Preds ..B21.3
        movq      %r13, 16(%rsp)                                #
	.cfi_offset 13, -48
        movq      %rax, %rbp                                    #
        movq      %r14, 24(%rsp)                                #
	.cfi_offset 14, -40
        movq      %rdx, %r14                                    #
        movq      %rsi, %r13                                    #
                                # LOE rbx rbp r12 r13 r14 r15
..B21.5:                        # Preds ..B21.8 ..B21.4
        testq     %r15, %r15                                    #83.32
        je        ..B21.8       # Prob 15%                      #83.32
                                # LOE rbx rbp r12 r13 r14 r15
..B21.6:                        # Preds ..B21.5
        movq      %r15, %rdi                                    #83.42
        movq      %r13, %rsi                                    #83.42
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.583:
#       std::vector<double, std::allocator<double>>::vector(std::vector<double, std::allocator<double>> *, const std::vector<double, std::allocator<double>> &)
        call      _ZNSt6vectorIdSaIdEEC1ERKS1_                  #83.42
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.584:
                                # LOE rbx rbp r12 r13 r14 r15
..B21.8:                        # Preds ..B21.6 ..B21.5
        addq      $24, %r13                                     #748.4
        addq      $24, %r15                                     #74.47
        cmpq      %r14, %r13                                    #825.36
        jne       ..B21.5       # Prob 82%                      #825.36
                                # LOE rbx rbp r12 r13 r14 r15
..B21.9:                        # Preds ..B21.8
        movq      16(%rsp), %r13                                #
	.cfi_restore 13
        movq      24(%rsp), %r14                                #
	.cfi_restore 14
                                # LOE rbx r12 r13 r14 r15
..B21.10:                       # Preds ..B21.9 ..B21.3
        movq      %r15, 8(%rbx)                                 #313.9
        addq      $32, %rsp                                     #317.7
	.cfi_def_cfa_offset 32
	.cfi_restore 6
        popq      %rbp                                          #317.7
	.cfi_def_cfa_offset 24
	.cfi_restore 3
        popq      %rbx                                          #317.7
	.cfi_def_cfa_offset 16
	.cfi_restore 15
        popq      %r15                                          #317.7
	.cfi_def_cfa_offset 8
        ret                                                     #317.7
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -24
	.cfi_offset 6, -32
	.cfi_offset 13, -48
	.cfi_offset 14, -40
	.cfi_offset 15, -16
                                # LOE
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.570:
..B21.11:                       # Preds ..B21.6                 # Infreq
        movq      %rax, (%rsp)                                  #83.7
        movq      %rbp, %rax                                    #83.7
        movq      16(%rsp), %r13                                #83.7
	.cfi_restore 13
        movq      24(%rsp), %r14                                #83.7
	.cfi_restore 14
	.cfi_offset 13, -48
	.cfi_offset 14, -40
                                # LOE rax rbx r12 r13 r14 r15 r13d r14d r13b r14b
..B21.12:                       # Preds ..B21.11                # Infreq
        movq      (%rsp), %rdi                                  #78.4
        movq      %rax, 8(%rsp)                                 #78.4
        call      __cxa_begin_catch                             #78.4
                                # LOE rbx r12 r13 r14 r15 r13d r14d r13b r14b
..B21.13:                       # Preds ..B21.12                # Infreq
        movq      8(%rsp), %rax                                 #
        movq      %rax, %rdi                                    #126.7
        movq      %r15, %rsi                                    #126.7
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.604:
#       std::_Destroy_aux<false>::__destroy<std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::pointer>(std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::pointer, std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::pointer)
        call      _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_ #126.7
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.605:
                                # LOE rbx r12 r13 r14 r13d r14d r13b r14b
..B21.14:                       # Preds ..B21.13                # Infreq
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.606:
        call      __cxa_rethrow                                 #81.8
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.607:
                                # LOE rbx r12 r13 r14
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.571:
..B21.15:                       # Preds ..B21.14                # Infreq
        movq      %rax, (%rsp)                                  #79.6
                                # LOE rbx r12 r13 r14
..B21.16:                       # Preds ..B21.15                # Infreq
        call      __cxa_end_catch                               #79.6
                                # LOE rbx r12 r13 r14
..B21.17:                       # Preds ..B21.16                # Infreq
        movq      %rbx, %rdi                                    #312.9
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.608:
#       std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::~_Vector_base(std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>> *const)
        call      _ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev #312.9
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.609:
	.cfi_restore 13
	.cfi_restore 14
                                # LOE r12 r13 r14
..B21.18:                       # Preds ..B21.24 ..B21.17       # Infreq
        movq      (%rsp), %rdi                                  #312.9
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.612:
        call      _Unwind_Resume                                #312.9
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.613:
                                # LOE
..B21.19:                       # Preds ..B21.1                 # Infreq
        movq      $0xaaaaaaaaaaaaaaa, %rax                      #101.2
        cmpq      %rax, %rdx                                    #101.18
        ja        ..B21.26      # Prob 0%                       #101.18
                                # LOE rdx rbx rbp r12 r13 r14
..B21.20:                       # Preds ..B21.19                # Infreq
        lea       (%rdx,%rdx,2), %r15                           #104.48
        shlq      $3, %r15                                      #104.48
        movq      %r15, %rdi                                    #104.27
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.614:
#       operator new(std::size_t)
        call      _Znwm                                         #104.27
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.615:
        jmp       ..B21.3       # Prob 100%                     #104.27
                                # LOE rax rbx rbp r12 r13 r14 r15
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.569:
..B21.23:                       # Preds ..B21.20 ..B21.26       # Infreq
        movq      %rax, (%rsp)                                  #135.17
                                # LOE rbx r12 r13 r14
..B21.24:                       # Preds ..B21.23                # Infreq
        movq      %rbx, %rdi                                    #135.17
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.616:
#       std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::_Vector_impl::~_Vector_impl(std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::_Vector_impl *)
        call      _ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implD1Ev #135.17
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.617:
        jmp       ..B21.18      # Prob 100%                     #135.17
                                # LOE r12 r13 r14
..B21.26:                       # Preds ..B21.19                # Infreq
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.618:
#       std::__throw_bad_alloc()
        call      _ZSt17__throw_bad_allocv                      #102.4
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.619:
        .align    16,0x90
	.cfi_endproc
                                # LOE rbx r12 r13 r14
# mark_end;
	.type	_ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_,@function
	.size	_ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_,.-_ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_
	.section .gcc_except_table, "a"
	.align 4
_ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.624 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.623
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.623:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.622 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.621
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.621:
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.583 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.572
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.584 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.583
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.570 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.572
	.byte	3
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.604 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.572
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.607 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.604
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.571 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.572
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.612 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.572
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.613 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.612
	.byte	0
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.614 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.572
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.615 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.614
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.569 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.572
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.618 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.572
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.619 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.618
	.uleb128	..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.569 - ..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.572
	.byte	0
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.622:
	.byte	1
	.byte	0
	.byte	0
	.byte	125
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_.624:
	.data
# -- End  _ZNSt6vectorIS_IdSaIdEESaIS1_EEC1ERKS3_
	.section .text._ZNSt6vectorIdSaIdEEC1ERKS1_, "xaG",@progbits,_ZNSt6vectorIdSaIdEEC1ERKS1_,comdat
..TXTST20:
# -- Begin  _ZNSt6vectorIdSaIdEEC1ERKS1_
	.section .text._ZNSt6vectorIdSaIdEEC1ERKS1_, "xaG",@progbits,_ZNSt6vectorIdSaIdEEC1ERKS1_,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt6vectorIdSaIdEEC1ERKS1_
# --- std::vector<double, std::allocator<double>>::vector(std::vector<double, std::allocator<double>> *, const std::vector<double, std::allocator<double>> &)
_ZNSt6vectorIdSaIdEEC1ERKS1_:
# parameter 1: %rdi
# parameter 2: %rsi
..B22.1:                        # Preds ..B22.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIdSaIdEEC1ERKS1_$$LSDA
..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.626:
..L627:
                                                        #313.7
        pushq     %r12                                          #313.7
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r15                                          #313.7
	.cfi_def_cfa_offset 24
	.cfi_offset 15, -24
        pushq     %rbx                                          #313.7
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
        pushq     %rbp                                          #313.7
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
        pushq     %rsi                                          #313.7
	.cfi_def_cfa_offset 48
        movq      %rsi, %r15                                    #313.7
        movq      %rdi, %rbx                                    #313.7
        xorl      %ebp, %ebp                                    #90.2
        movq      8(%r15), %r12                                 #646.26
        subq      (%r15), %r12                                  #646.26
        sarq      $3, %r12                                      #646.52
        movq      %rbp, (%rbx)                                  #90.2
        testq     %r12, %r12                                    #168.23
        movq      %rbp, 8(%rbx)                                 #90.2
        movq      %rbp, 16(%rbx)                                #90.2
        jne       ..B22.6       # Prob 5%                       #168.23
                                # LOE rbx rbp r12 r13 r14 r15
..B22.2:                        # Preds ..B22.1
        shlq      $3, %r12                                      #183.36
                                # LOE rbx rbp r12 r13 r14 r15
..B22.3:                        # Preds ..B22.8 ..B22.2
        movq      %rbp, (%rbx)                                  #181.2
        addq      %rbp, %r12                                    #183.36
        movq      %rbp, 8(%rbx)                                 #182.2
        movq      %r12, 16(%rbx)                                #183.2
        movq      (%r15), %rsi                                  #548.31
        movq      8(%r15), %r12                                 #566.31
        subq      %rsi, %r12                                    #221.16
        sarq      $3, %r12                                      #370.36
        testq     %r12, %r12                                    #371.8
        je        ..B22.5       # Prob 78%                      #371.8
                                # LOE rbx rbp rsi r12 r13 r14
..B22.4:                        # Preds ..B22.3
        movq      %rbp, %rdi                                    #372.6
        lea       (,%r12,8), %rdx                               #372.6
        call      _intel_fast_memmove                           #372.6
                                # LOE rbx rbp r12 r13 r14
..B22.5:                        # Preds ..B22.3 ..B22.4
        lea       (%rbp,%r12,8), %rax                           #373.11
        movq      %rax, 8(%rbx)                                 #313.9
        popq      %rcx                                          #317.7
	.cfi_def_cfa_offset 40
	.cfi_restore 6
        popq      %rbp                                          #317.7
	.cfi_def_cfa_offset 32
	.cfi_restore 3
        popq      %rbx                                          #317.7
	.cfi_def_cfa_offset 24
	.cfi_restore 15
        popq      %r15                                          #317.7
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #317.7
	.cfi_def_cfa_offset 8
        ret                                                     #317.7
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -32
	.cfi_offset 6, -40
	.cfi_offset 12, -16
	.cfi_offset 15, -24
                                # LOE
..B22.6:                        # Preds ..B22.1                 # Infreq
        movq      $0x1fffffffffffffff, %rax                     #101.2
        cmpq      %rax, %r12                                    #101.18
        ja        ..B22.13      # Prob 0%                       #101.18
                                # LOE rbx r12 r13 r14 r15
..B22.7:                        # Preds ..B22.6                 # Infreq
        shlq      $3, %r12                                      #104.48
        movq      %r12, %rdi                                    #104.27
..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.651:
#       operator new(std::size_t)
        call      _Znwm                                         #104.27
..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.652:
                                # LOE rax rbx r12 r13 r14 r15
..B22.8:                        # Preds ..B22.7                 # Infreq
        movq      %rax, %rbp                                    #104.27
        jmp       ..B22.3       # Prob 100%                     #104.27
                                # LOE rbx rbp r12 r13 r14 r15
..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.625:
..B22.10:                       # Preds ..B22.7 ..B22.13        # Infreq
        movq      %rax, (%rsp)                                  #135.17
                                # LOE rbx r13 r14
..B22.11:                       # Preds ..B22.10                # Infreq
        movq      %rbx, %rdi                                    #135.17
..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.653:
#       std::_Vector_base<double, std::allocator<double>>::_Vector_impl::~_Vector_impl(std::_Vector_base<double, std::allocator<double>>::_Vector_impl *)
        call      _ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev #135.17
..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.654:
                                # LOE r13 r14
..B22.12:                       # Preds ..B22.11                # Infreq
        movq      (%rsp), %rdi                                  #135.17
..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.655:
        call      _Unwind_Resume                                #135.17
..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.656:
                                # LOE
..B22.13:                       # Preds ..B22.6                 # Infreq
..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.657:
#       std::__throw_bad_alloc()
        call      _ZSt17__throw_bad_allocv                      #102.4
..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.658:
        .align    16,0x90
	.cfi_endproc
                                # LOE rbx r13 r14
# mark_end;
	.type	_ZNSt6vectorIdSaIdEEC1ERKS1_,@function
	.size	_ZNSt6vectorIdSaIdEEC1ERKS1_,.-_ZNSt6vectorIdSaIdEEC1ERKS1_
	.section .gcc_except_table, "a"
	.align 4
_ZNSt6vectorIdSaIdEEC1ERKS1_$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.663 - ..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.662
..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.662:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.661 - ..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.660
..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.660:
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.651 - ..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.626
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.652 - ..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.651
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.625 - ..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.626
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.655 - ..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.626
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.656 - ..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.655
	.byte	0
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.657 - ..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.626
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.658 - ..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.657
	.uleb128	..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.625 - ..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.626
	.byte	0
..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.661:
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIdSaIdEEC1ERKS1_.663:
	.data
# -- End  _ZNSt6vectorIdSaIdEEC1ERKS1_
	.section .text._ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_, "xaG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_,comdat
..TXTST21:
# -- Begin  _ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_
	.section .text._ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_, "xaG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_
# --- std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::vector(std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>> *, const std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>> &)
_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_:
# parameter 1: %rdi
# parameter 2: %rsi
..B23.1:                        # Preds ..B23.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_$$LSDA
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.667:
..L668:
                                                        #313.7
        pushq     %r15                                          #313.7
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
        pushq     %rbx                                          #313.7
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
        pushq     %rbp                                          #313.7
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
        subq      $32, %rsp                                     #313.7
	.cfi_def_cfa_offset 64
        movq      %rsi, %rbp                                    #313.7
        movq      $0x2aaaaaaaaaaaaaab, %rax                     #646.52
        movq      %rdi, %rbx                                    #313.7
        movq      8(%rbp), %rcx                                 #646.26
        subq      (%rbp), %rcx                                  #646.26
        imulq     %rcx                                          #646.52
        sarq      $2, %rdx                                      #646.52
        xorl      %eax, %eax                                    #90.2
        sarq      $63, %rcx                                     #646.52
        movq      %rax, (%rbx)                                  #90.2
        subq      %rcx, %rdx                                    #646.52
        movq      %rax, 8(%rbx)                                 #90.2
        movq      %rax, 16(%rbx)                                #90.2
        jne       ..B23.19      # Prob 5%                       #168.23
                                # LOE rax rdx rbx rbp r12 r13 r14
..B23.2:                        # Preds ..B23.1
        lea       (%rdx,%rdx,2), %r15                           #183.36
        shlq      $3, %r15                                      #183.36
                                # LOE rax rbx rbp r12 r13 r14 r15
..B23.3:                        # Preds ..B23.20 ..B23.2
        movq      %rax, (%rbx)                                  #181.2
        addq      %rax, %r15                                    #183.36
        movq      %rax, 8(%rbx)                                 #182.2
        movq      (%rbp), %rsi                                  #548.31
        movq      8(%rbp), %rdx                                 #566.31
        cmpq      %rdx, %rsi                                    #825.36
        movq      %r15, 16(%rbx)                                #183.2
        movq      %rax, %r15                                    #71.29
        je        ..B23.10      # Prob 4%                       #825.36
                                # LOE rax rdx rbx rsi r12 r13 r14 r15
..B23.4:                        # Preds ..B23.3
        movq      %r13, 16(%rsp)                                #
	.cfi_offset 13, -48
        movq      %rax, %rbp                                    #
        movq      %r14, 24(%rsp)                                #
	.cfi_offset 14, -40
        movq      %rdx, %r14                                    #
        movq      %rsi, %r13                                    #
                                # LOE rbx rbp r12 r13 r14 r15
..B23.5:                        # Preds ..B23.8 ..B23.4
        testq     %r15, %r15                                    #83.32
        je        ..B23.8       # Prob 15%                      #83.32
                                # LOE rbx rbp r12 r13 r14 r15
..B23.6:                        # Preds ..B23.5
        movq      %r15, %rdi                                    #83.42
        movq      %r13, %rsi                                    #83.42
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.678:
#       std::vector<int, std::allocator<int>>::vector(std::vector<int, std::allocator<int>> *, const std::vector<int, std::allocator<int>> &)
        call      _ZNSt6vectorIiSaIiEEC1ERKS1_                  #83.42
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.679:
                                # LOE rbx rbp r12 r13 r14 r15
..B23.8:                        # Preds ..B23.6 ..B23.5
        addq      $24, %r13                                     #748.4
        addq      $24, %r15                                     #74.47
        cmpq      %r14, %r13                                    #825.36
        jne       ..B23.5       # Prob 82%                      #825.36
                                # LOE rbx rbp r12 r13 r14 r15
..B23.9:                        # Preds ..B23.8
        movq      16(%rsp), %r13                                #
	.cfi_restore 13
        movq      24(%rsp), %r14                                #
	.cfi_restore 14
                                # LOE rbx r12 r13 r14 r15
..B23.10:                       # Preds ..B23.9 ..B23.3
        movq      %r15, 8(%rbx)                                 #313.9
        addq      $32, %rsp                                     #317.7
	.cfi_def_cfa_offset 32
	.cfi_restore 6
        popq      %rbp                                          #317.7
	.cfi_def_cfa_offset 24
	.cfi_restore 3
        popq      %rbx                                          #317.7
	.cfi_def_cfa_offset 16
	.cfi_restore 15
        popq      %r15                                          #317.7
	.cfi_def_cfa_offset 8
        ret                                                     #317.7
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -24
	.cfi_offset 6, -32
	.cfi_offset 13, -48
	.cfi_offset 14, -40
	.cfi_offset 15, -16
                                # LOE
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.665:
..B23.11:                       # Preds ..B23.6                 # Infreq
        movq      %rax, (%rsp)                                  #83.7
        movq      %rbp, %rax                                    #83.7
        movq      16(%rsp), %r13                                #83.7
	.cfi_restore 13
        movq      24(%rsp), %r14                                #83.7
	.cfi_restore 14
	.cfi_offset 13, -48
	.cfi_offset 14, -40
                                # LOE rax rbx r12 r13 r14 r15 r13d r14d r13b r14b
..B23.12:                       # Preds ..B23.11                # Infreq
        movq      (%rsp), %rdi                                  #78.4
        movq      %rax, 8(%rsp)                                 #78.4
        call      __cxa_begin_catch                             #78.4
                                # LOE rbx r12 r13 r14 r15 r13d r14d r13b r14b
..B23.13:                       # Preds ..B23.12                # Infreq
        movq      8(%rsp), %rax                                 #
        movq      %rax, %rdi                                    #126.7
        movq      %r15, %rsi                                    #126.7
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.699:
#       std::_Destroy_aux<false>::__destroy<std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::pointer>(std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::pointer, std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::pointer)
        call      _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_ #126.7
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.700:
                                # LOE rbx r12 r13 r14 r13d r14d r13b r14b
..B23.14:                       # Preds ..B23.13                # Infreq
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.701:
        call      __cxa_rethrow                                 #81.8
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.702:
                                # LOE rbx r12 r13 r14
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.666:
..B23.15:                       # Preds ..B23.14                # Infreq
        movq      %rax, (%rsp)                                  #79.6
                                # LOE rbx r12 r13 r14
..B23.16:                       # Preds ..B23.15                # Infreq
        call      __cxa_end_catch                               #79.6
                                # LOE rbx r12 r13 r14
..B23.17:                       # Preds ..B23.16                # Infreq
        movq      %rbx, %rdi                                    #312.9
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.703:
#       std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::~_Vector_base(std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>> *const)
        call      _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev #312.9
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.704:
	.cfi_restore 13
	.cfi_restore 14
                                # LOE r12 r13 r14
..B23.18:                       # Preds ..B23.24 ..B23.17       # Infreq
        movq      (%rsp), %rdi                                  #312.9
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.707:
        call      _Unwind_Resume                                #312.9
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.708:
                                # LOE
..B23.19:                       # Preds ..B23.1                 # Infreq
        movq      $0xaaaaaaaaaaaaaaa, %rax                      #101.2
        cmpq      %rax, %rdx                                    #101.18
        ja        ..B23.26      # Prob 0%                       #101.18
                                # LOE rdx rbx rbp r12 r13 r14
..B23.20:                       # Preds ..B23.19                # Infreq
        lea       (%rdx,%rdx,2), %r15                           #104.48
        shlq      $3, %r15                                      #104.48
        movq      %r15, %rdi                                    #104.27
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.709:
#       operator new(std::size_t)
        call      _Znwm                                         #104.27
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.710:
        jmp       ..B23.3       # Prob 100%                     #104.27
                                # LOE rax rbx rbp r12 r13 r14 r15
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.664:
..B23.23:                       # Preds ..B23.20 ..B23.26       # Infreq
        movq      %rax, (%rsp)                                  #135.17
                                # LOE rbx r12 r13 r14
..B23.24:                       # Preds ..B23.23                # Infreq
        movq      %rbx, %rdi                                    #135.17
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.711:
#       std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::_Vector_impl::~_Vector_impl(std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::_Vector_impl *)
        call      _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev #135.17
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.712:
        jmp       ..B23.18      # Prob 100%                     #135.17
                                # LOE r12 r13 r14
..B23.26:                       # Preds ..B23.19                # Infreq
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.713:
#       std::__throw_bad_alloc()
        call      _ZSt17__throw_bad_allocv                      #102.4
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.714:
        .align    16,0x90
	.cfi_endproc
                                # LOE rbx r12 r13 r14
# mark_end;
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_,@function
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_,.-_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_
	.section .gcc_except_table, "a"
	.align 4
_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.719 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.718
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.718:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.717 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.716
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.716:
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.678 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.667
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.679 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.678
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.665 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.667
	.byte	3
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.699 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.667
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.702 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.699
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.666 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.667
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.707 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.667
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.708 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.707
	.byte	0
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.709 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.667
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.710 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.709
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.664 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.667
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.713 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.667
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.714 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.713
	.uleb128	..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.664 - ..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.667
	.byte	0
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.717:
	.byte	1
	.byte	0
	.byte	0
	.byte	125
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_.719:
	.data
# -- End  _ZNSt6vectorIS_IiSaIiEESaIS1_EEC1ERKS3_
	.section .text._ZNSt6vectorIiSaIiEEC1ERKS1_, "xaG",@progbits,_ZNSt6vectorIiSaIiEEC1ERKS1_,comdat
..TXTST22:
# -- Begin  _ZNSt6vectorIiSaIiEEC1ERKS1_
	.section .text._ZNSt6vectorIiSaIiEEC1ERKS1_, "xaG",@progbits,_ZNSt6vectorIiSaIiEEC1ERKS1_,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt6vectorIiSaIiEEC1ERKS1_
# --- std::vector<int, std::allocator<int>>::vector(std::vector<int, std::allocator<int>> *, const std::vector<int, std::allocator<int>> &)
_ZNSt6vectorIiSaIiEEC1ERKS1_:
# parameter 1: %rdi
# parameter 2: %rsi
..B24.1:                        # Preds ..B24.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIiSaIiEEC1ERKS1_$$LSDA
..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.721:
..L722:
                                                        #313.7
        pushq     %r12                                          #313.7
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r15                                          #313.7
	.cfi_def_cfa_offset 24
	.cfi_offset 15, -24
        pushq     %rbx                                          #313.7
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
        pushq     %rbp                                          #313.7
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
        pushq     %rsi                                          #313.7
	.cfi_def_cfa_offset 48
        movq      %rsi, %r15                                    #313.7
        movq      %rdi, %rbx                                    #313.7
        xorl      %ebp, %ebp                                    #90.2
        movq      8(%r15), %r12                                 #646.26
        subq      (%r15), %r12                                  #646.26
        sarq      $2, %r12                                      #646.52
        movq      %rbp, (%rbx)                                  #90.2
        testq     %r12, %r12                                    #168.23
        movq      %rbp, 8(%rbx)                                 #90.2
        movq      %rbp, 16(%rbx)                                #90.2
        jne       ..B24.6       # Prob 5%                       #168.23
                                # LOE rbx rbp r12 r13 r14 r15
..B24.2:                        # Preds ..B24.1
        shlq      $2, %r12                                      #183.36
                                # LOE rbx rbp r12 r13 r14 r15
..B24.3:                        # Preds ..B24.8 ..B24.2
        movq      %rbp, (%rbx)                                  #181.2
        addq      %rbp, %r12                                    #183.36
        movq      %rbp, 8(%rbx)                                 #182.2
        movq      %r12, 16(%rbx)                                #183.2
        movq      (%r15), %rsi                                  #548.31
        movq      8(%r15), %r12                                 #566.31
        subq      %rsi, %r12                                    #221.16
        sarq      $2, %r12                                      #370.36
        testq     %r12, %r12                                    #371.8
        je        ..B24.5       # Prob 78%                      #371.8
                                # LOE rbx rbp rsi r12 r13 r14
..B24.4:                        # Preds ..B24.3
        movq      %rbp, %rdi                                    #372.6
        lea       (,%r12,4), %rdx                               #372.6
        call      _intel_fast_memmove                           #372.6
                                # LOE rbx rbp r12 r13 r14
..B24.5:                        # Preds ..B24.3 ..B24.4
        lea       (%rbp,%r12,4), %rax                           #373.11
        movq      %rax, 8(%rbx)                                 #313.9
        popq      %rcx                                          #317.7
	.cfi_def_cfa_offset 40
	.cfi_restore 6
        popq      %rbp                                          #317.7
	.cfi_def_cfa_offset 32
	.cfi_restore 3
        popq      %rbx                                          #317.7
	.cfi_def_cfa_offset 24
	.cfi_restore 15
        popq      %r15                                          #317.7
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #317.7
	.cfi_def_cfa_offset 8
        ret                                                     #317.7
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -32
	.cfi_offset 6, -40
	.cfi_offset 12, -16
	.cfi_offset 15, -24
                                # LOE
..B24.6:                        # Preds ..B24.1                 # Infreq
        movq      $0x3fffffffffffffff, %rax                     #101.2
        cmpq      %rax, %r12                                    #101.18
        ja        ..B24.13      # Prob 0%                       #101.18
                                # LOE rbx r12 r13 r14 r15
..B24.7:                        # Preds ..B24.6                 # Infreq
        shlq      $2, %r12                                      #104.48
        movq      %r12, %rdi                                    #104.27
..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.746:
#       operator new(std::size_t)
        call      _Znwm                                         #104.27
..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.747:
                                # LOE rax rbx r12 r13 r14 r15
..B24.8:                        # Preds ..B24.7                 # Infreq
        movq      %rax, %rbp                                    #104.27
        jmp       ..B24.3       # Prob 100%                     #104.27
                                # LOE rbx rbp r12 r13 r14 r15
..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.720:
..B24.10:                       # Preds ..B24.7 ..B24.13        # Infreq
        movq      %rax, (%rsp)                                  #135.17
                                # LOE rbx r13 r14
..B24.11:                       # Preds ..B24.10                # Infreq
        movq      %rbx, %rdi                                    #135.17
..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.748:
#       std::_Vector_base<int, std::allocator<int>>::_Vector_impl::~_Vector_impl(std::_Vector_base<int, std::allocator<int>>::_Vector_impl *)
        call      _ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev #135.17
..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.749:
                                # LOE r13 r14
..B24.12:                       # Preds ..B24.11                # Infreq
        movq      (%rsp), %rdi                                  #135.17
..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.750:
        call      _Unwind_Resume                                #135.17
..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.751:
                                # LOE
..B24.13:                       # Preds ..B24.6                 # Infreq
..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.752:
#       std::__throw_bad_alloc()
        call      _ZSt17__throw_bad_allocv                      #102.4
..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.753:
        .align    16,0x90
	.cfi_endproc
                                # LOE rbx r13 r14
# mark_end;
	.type	_ZNSt6vectorIiSaIiEEC1ERKS1_,@function
	.size	_ZNSt6vectorIiSaIiEEC1ERKS1_,.-_ZNSt6vectorIiSaIiEEC1ERKS1_
	.section .gcc_except_table, "a"
	.align 4
_ZNSt6vectorIiSaIiEEC1ERKS1_$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.758 - ..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.757
..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.757:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.756 - ..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.755
..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.755:
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.746 - ..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.721
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.747 - ..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.746
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.720 - ..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.721
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.750 - ..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.721
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.751 - ..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.750
	.byte	0
	.byte	0
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.752 - ..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.721
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.753 - ..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.752
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.720 - ..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.721
	.byte	0
..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.756:
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIiSaIiEEC1ERKS1_.758:
	.data
# -- End  _ZNSt6vectorIiSaIiEEC1ERKS1_
	.section .text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_, "xaG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_,comdat
..TXTST23:
# -- Begin  _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_
	.section .text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_, "xaG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_
# --- std::_Destroy_aux<false>::__destroy<std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::pointer>(std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::pointer, std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::pointer)
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_:
# parameter 1: %rdi
# parameter 2: %rsi
..B25.1:                        # Preds ..B25.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_$$LSDA
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.759:
..L760:
                                                        #101.2
        subq      $24, %rsp                                     #101.2
	.cfi_def_cfa_offset 32
        cmpq      %rsi, %rdi                                    #102.22
        je        ..B25.7       # Prob 1%                       #102.22
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15
..B25.2:                        # Preds ..B25.1
        movq      %r12, 8(%rsp)                                 #
	.cfi_offset 12, -24
        movq      %rdi, %r12                                    #
        movq      %r13, (%rsp)                                  #
	.cfi_offset 13, -32
        movq      %rsi, %r13                                    #
                                # LOE rbx rbp r12 r13 r14 r15
..B25.3:                        # Preds ..B25.5 ..B25.2
        movq      (%r12), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B25.5       # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B25.4:                        # Preds ..B25.3
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx rbp r12 r13 r14 r15
..B25.5:                        # Preds ..B25.4 ..B25.3
        addq      $24, %r12                                     #102.32
        cmpq      %r13, %r12                                    #102.22
        jne       ..B25.3       # Prob 82%                      #102.22
                                # LOE rbx rbp r12 r13 r14 r15
..B25.6:                        # Preds ..B25.5
        movq      8(%rsp), %r12                                 #
	.cfi_restore 12
        movq      (%rsp), %r13                                  #
	.cfi_restore 13
                                # LOE rbx rbp r12 r13 r14 r15
..B25.7:                        # Preds ..B25.6 ..B25.1
        addq      $24, %rsp                                     #104.2
	.cfi_def_cfa_offset 8
        ret                                                     #104.2
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_,@function
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_,.-_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_
	.section .gcc_except_table, "a"
	.align 4
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.771 - ..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.770
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.770:
	.byte	1
	.uleb128	..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.769 - ..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.768
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.768:
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.769:
	.long	0x00000000,0x00000000
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.771:
	.data
# -- End  _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_
	.section .text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_, "xaG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_,comdat
..TXTST24:
# -- Begin  _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_
	.section .text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_, "xaG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_
# --- std::_Destroy_aux<false>::__destroy<std::_Vector_base<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::pointer>(std::_Vector_base<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::pointer, std::_Vector_base<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>, std::allocator<std::vector<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>>>::pointer)
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_:
# parameter 1: %rdi
# parameter 2: %rsi
..B26.1:                        # Preds ..B26.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_$$LSDA
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_.772:
..L773:
                                                        #101.2
        subq      $40, %rsp                                     #101.2
	.cfi_def_cfa_offset 48
        cmpq      %rsi, %rdi                                    #102.22
        je        ..B26.13      # Prob 1%                       #102.22
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15
..B26.2:                        # Preds ..B26.1
        movq      %r14, 16(%rsp)                                #
	.cfi_offset 14, -32
        movq      %rdi, %r14                                    #
        movq      %r15, 24(%rsp)                                #
	.cfi_offset 15, -24
        movq      %rsi, %r15                                    #
        movq      %rbx, (%rsp)                                  #
        movq      %rbp, 8(%rsp)                                 #
	.cfi_offset 3, -48
	.cfi_offset 6, -40
                                # LOE r12 r13 r14 r15
..B26.3:                        # Preds ..B26.11 ..B26.2
        movq      (%r14), %rbp                                  #415.23
        movq      8(%r14), %rbx                                 #415.47
        cmpq      %rbx, %rbp                                    #102.22
        je        ..B26.9       # Prob 1%                       #102.22
                                # LOE rbx rbp r12 r13 r14 r15
..B26.5:                        # Preds ..B26.3 ..B26.7
        movq      (%rbp), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B26.7       # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B26.6:                        # Preds ..B26.5
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx rbp r12 r13 r14 r15
..B26.7:                        # Preds ..B26.6 ..B26.5
        addq      $24, %rbp                                     #102.32
        cmpq      %rbx, %rbp                                    #102.22
        jne       ..B26.5       # Prob 82%                      #102.22
                                # LOE rbx rbp r12 r13 r14 r15
..B26.9:                        # Preds ..B26.7 ..B26.3
        movq      (%r14), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B26.11      # Prob 72%                      #173.6
                                # LOE rdi r12 r13 r14 r15
..B26.10:                       # Preds ..B26.9
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE r12 r13 r14 r15
..B26.11:                       # Preds ..B26.10 ..B26.9
        addq      $24, %r14                                     #102.32
        cmpq      %r15, %r14                                    #102.22
        jne       ..B26.3       # Prob 82%                      #102.22
                                # LOE r12 r13 r14 r15
..B26.12:                       # Preds ..B26.11
        movq      16(%rsp), %r14                                #
	.cfi_restore 14
        movq      24(%rsp), %r15                                #
	.cfi_restore 15
        movq      (%rsp), %rbx                                  #
	.cfi_restore 3
        movq      8(%rsp), %rbp                                 #
	.cfi_restore 6
                                # LOE rbx rbp r12 r13 r14 r15
..B26.13:                       # Preds ..B26.12 ..B26.1
        addq      $40, %rsp                                     #104.2
	.cfi_def_cfa_offset 8
        ret                                                     #104.2
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_,@function
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_,.-_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_
	.section .gcc_except_table, "a"
	.align 4
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_.788 - ..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_.787
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_.787:
	.byte	1
	.uleb128	..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_.786 - ..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_.785
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_.785:
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_.786:
	.long	0x00000000,0x00000000
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_.788:
	.data
# -- End  _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IdSaIdEESaIS4_EEEEvT_S8_
	.section .text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev, "xaG",@progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev,comdat
..TXTST25:
# -- Begin  _ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	.section .text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev, "xaG",@progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
# --- std::_Vector_base<double, std::allocator<double>>::_Vector_impl::~_Vector_impl(std::_Vector_base<double, std::allocator<double>>::_Vector_impl *)
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev:
# parameter 1: %rdi
..B27.1:                        # Preds ..B27.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev.789:
..L790:
                                                        #79.14
        ret                                                     #79.14
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev,@function
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev,.-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	.data
# -- End  _ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	.section .text._ZNSt12_Vector_baseIdSaIdEED2Ev, "xaG",@progbits,_ZNSt12_Vector_baseIdSaIdEED2Ev,comdat
..TXTST26:
# -- Begin  _ZNSt12_Vector_baseIdSaIdEED2Ev
	.section .text._ZNSt12_Vector_baseIdSaIdEED2Ev, "xaG",@progbits,_ZNSt12_Vector_baseIdSaIdEED2Ev,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt12_Vector_baseIdSaIdEED2Ev
# --- std::_Vector_base<double, std::allocator<double>>::~_Vector_base(std::_Vector_base<double, std::allocator<double>> *const)
_ZNSt12_Vector_baseIdSaIdEED2Ev:
# parameter 1: %rdi
..B28.1:                        # Preds ..B28.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt12_Vector_baseIdSaIdEED2Ev$$LSDA
..___tag_value__ZNSt12_Vector_baseIdSaIdEED2Ev.792:
..L793:
                                                        #159.7
        movq      (%rdi), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B28.3       # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B28.2:                        # Preds ..B28.1
#       operator delete(void *)
        jmp       _ZdlPv                                        #110.9
                                # LOE
..B28.3:                        # Preds ..B28.1
        ret                                                     #159.7
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt12_Vector_baseIdSaIdEED2Ev,@function
	.size	_ZNSt12_Vector_baseIdSaIdEED2Ev,.-_ZNSt12_Vector_baseIdSaIdEED2Ev
	.section .gcc_except_table, "a"
	.align 4
_ZNSt12_Vector_baseIdSaIdEED2Ev$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt12_Vector_baseIdSaIdEED2Ev.798 - ..___tag_value__ZNSt12_Vector_baseIdSaIdEED2Ev.797
..___tag_value__ZNSt12_Vector_baseIdSaIdEED2Ev.797:
	.byte	1
	.uleb128	..___tag_value__ZNSt12_Vector_baseIdSaIdEED2Ev.796 - ..___tag_value__ZNSt12_Vector_baseIdSaIdEED2Ev.795
..___tag_value__ZNSt12_Vector_baseIdSaIdEED2Ev.795:
..___tag_value__ZNSt12_Vector_baseIdSaIdEED2Ev.796:
	.long	0x00000000,0x00000000
..___tag_value__ZNSt12_Vector_baseIdSaIdEED2Ev.798:
	.data
# -- End  _ZNSt12_Vector_baseIdSaIdEED2Ev
	.section .text._ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev, "xaG",@progbits,_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev,comdat
..TXTST27:
# -- Begin  _ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev
	.section .text._ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev, "xaG",@progbits,_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev
# --- std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::~_Vector_base(std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>> *const)
_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev:
# parameter 1: %rdi
..B29.1:                        # Preds ..B29.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev$$LSDA
..___tag_value__ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.799:
..L800:
                                                        #159.7
        movq      (%rdi), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B29.3       # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B29.2:                        # Preds ..B29.1
#       operator delete(void *)
        jmp       _ZdlPv                                        #110.9
                                # LOE
..B29.3:                        # Preds ..B29.1
        ret                                                     #159.7
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev,@function
	.size	_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev,.-_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev
	.section .gcc_except_table, "a"
	.align 4
_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.805 - ..___tag_value__ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.804
..___tag_value__ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.804:
	.byte	1
	.uleb128	..___tag_value__ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.803 - ..___tag_value__ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.802
..___tag_value__ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.802:
..___tag_value__ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.803:
	.long	0x00000000,0x00000000
..___tag_value__ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.805:
	.data
# -- End  _ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev
	.section .text._ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implD1Ev, "xaG",@progbits,_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implD1Ev,comdat
..TXTST28:
# -- Begin  _ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implD1Ev
	.section .text._ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implD1Ev, "xaG",@progbits,_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implD1Ev,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implD1Ev
# --- std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::_Vector_impl::~_Vector_impl(std::_Vector_base<std::vector<double, std::allocator<double>>, std::allocator<std::vector<double, std::allocator<double>>>>::_Vector_impl *)
_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implD1Ev:
# parameter 1: %rdi
..B30.1:                        # Preds ..B30.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implD1Ev.806:
..L807:
                                                        #79.14
        ret                                                     #79.14
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implD1Ev,@function
	.size	_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implD1Ev,.-_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implD1Ev
	.data
# -- End  _ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implD1Ev
	.section .text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_, "xaG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_,comdat
..TXTST29:
# -- Begin  _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
	.section .text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_, "xaG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
# --- std::_Destroy_aux<false>::__destroy<std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::pointer>(std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::pointer, std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::pointer)
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_:
# parameter 1: %rdi
# parameter 2: %rsi
..B31.1:                        # Preds ..B31.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_$$LSDA
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_.809:
..L810:
                                                        #101.2
        subq      $24, %rsp                                     #101.2
	.cfi_def_cfa_offset 32
        cmpq      %rsi, %rdi                                    #102.22
        je        ..B31.7       # Prob 1%                       #102.22
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15
..B31.2:                        # Preds ..B31.1
        movq      %r12, 8(%rsp)                                 #
	.cfi_offset 12, -24
        movq      %rdi, %r12                                    #
        movq      %r13, (%rsp)                                  #
	.cfi_offset 13, -32
        movq      %rsi, %r13                                    #
                                # LOE rbx rbp r12 r13 r14 r15
..B31.3:                        # Preds ..B31.5 ..B31.2
        movq      (%r12), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B31.5       # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B31.4:                        # Preds ..B31.3
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx rbp r12 r13 r14 r15
..B31.5:                        # Preds ..B31.4 ..B31.3
        addq      $24, %r12                                     #102.32
        cmpq      %r13, %r12                                    #102.22
        jne       ..B31.3       # Prob 82%                      #102.22
                                # LOE rbx rbp r12 r13 r14 r15
..B31.6:                        # Preds ..B31.5
        movq      8(%rsp), %r12                                 #
	.cfi_restore 12
        movq      (%rsp), %r13                                  #
	.cfi_restore 13
                                # LOE rbx rbp r12 r13 r14 r15
..B31.7:                        # Preds ..B31.6 ..B31.1
        addq      $24, %rsp                                     #104.2
	.cfi_def_cfa_offset 8
        ret                                                     #104.2
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_,@function
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_,.-_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
	.section .gcc_except_table, "a"
	.align 4
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_.821 - ..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_.820
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_.820:
	.byte	1
	.uleb128	..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_.819 - ..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_.818
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_.818:
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_.819:
	.long	0x00000000,0x00000000
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_.821:
	.data
# -- End  _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
	.section .text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_, "xaG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_,comdat
..TXTST30:
# -- Begin  _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_
	.section .text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_, "xaG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_
# --- std::_Destroy_aux<false>::__destroy<std::_Vector_base<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::pointer>(std::_Vector_base<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::pointer, std::_Vector_base<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>, std::allocator<std::vector<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>>>::pointer)
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_:
# parameter 1: %rdi
# parameter 2: %rsi
..B32.1:                        # Preds ..B32.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_$$LSDA
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_.822:
..L823:
                                                        #101.2
        subq      $40, %rsp                                     #101.2
	.cfi_def_cfa_offset 48
        cmpq      %rsi, %rdi                                    #102.22
        je        ..B32.13      # Prob 1%                       #102.22
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15
..B32.2:                        # Preds ..B32.1
        movq      %r14, 16(%rsp)                                #
	.cfi_offset 14, -32
        movq      %rdi, %r14                                    #
        movq      %r15, 24(%rsp)                                #
	.cfi_offset 15, -24
        movq      %rsi, %r15                                    #
        movq      %rbx, (%rsp)                                  #
        movq      %rbp, 8(%rsp)                                 #
	.cfi_offset 3, -48
	.cfi_offset 6, -40
                                # LOE r12 r13 r14 r15
..B32.3:                        # Preds ..B32.11 ..B32.2
        movq      (%r14), %rbp                                  #415.23
        movq      8(%r14), %rbx                                 #415.47
        cmpq      %rbx, %rbp                                    #102.22
        je        ..B32.9       # Prob 1%                       #102.22
                                # LOE rbx rbp r12 r13 r14 r15
..B32.5:                        # Preds ..B32.3 ..B32.7
        movq      (%rbp), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B32.7       # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B32.6:                        # Preds ..B32.5
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE rbx rbp r12 r13 r14 r15
..B32.7:                        # Preds ..B32.6 ..B32.5
        addq      $24, %rbp                                     #102.32
        cmpq      %rbx, %rbp                                    #102.22
        jne       ..B32.5       # Prob 82%                      #102.22
                                # LOE rbx rbp r12 r13 r14 r15
..B32.9:                        # Preds ..B32.7 ..B32.3
        movq      (%r14), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B32.11      # Prob 72%                      #173.6
                                # LOE rdi r12 r13 r14 r15
..B32.10:                       # Preds ..B32.9
#       operator delete(void *)
        call      _ZdlPv                                        #110.9
                                # LOE r12 r13 r14 r15
..B32.11:                       # Preds ..B32.10 ..B32.9
        addq      $24, %r14                                     #102.32
        cmpq      %r15, %r14                                    #102.22
        jne       ..B32.3       # Prob 82%                      #102.22
                                # LOE r12 r13 r14 r15
..B32.12:                       # Preds ..B32.11
        movq      16(%rsp), %r14                                #
	.cfi_restore 14
        movq      24(%rsp), %r15                                #
	.cfi_restore 15
        movq      (%rsp), %rbx                                  #
	.cfi_restore 3
        movq      8(%rsp), %rbp                                 #
	.cfi_restore 6
                                # LOE rbx rbp r12 r13 r14 r15
..B32.13:                       # Preds ..B32.12 ..B32.1
        addq      $40, %rsp                                     #104.2
	.cfi_def_cfa_offset 8
        ret                                                     #104.2
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_,@function
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_,.-_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_
	.section .gcc_except_table, "a"
	.align 4
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_.838 - ..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_.837
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_.837:
	.byte	1
	.uleb128	..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_.836 - ..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_.835
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_.835:
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_.836:
	.long	0x00000000,0x00000000
..___tag_value__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_.838:
	.data
# -- End  _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_IiSaIiEESaIS4_EEEEvT_S8_
	.section .text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev, "xaG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev,comdat
..TXTST31:
# -- Begin  _ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	.section .text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev, "xaG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
# --- std::_Vector_base<int, std::allocator<int>>::_Vector_impl::~_Vector_impl(std::_Vector_base<int, std::allocator<int>>::_Vector_impl *)
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev:
# parameter 1: %rdi
..B33.1:                        # Preds ..B33.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev.839:
..L840:
                                                        #79.14
        ret                                                     #79.14
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev,@function
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev,.-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	.data
# -- End  _ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	.section .text._ZNSt12_Vector_baseIiSaIiEED2Ev, "xaG",@progbits,_ZNSt12_Vector_baseIiSaIiEED2Ev,comdat
..TXTST32:
# -- Begin  _ZNSt12_Vector_baseIiSaIiEED2Ev
	.section .text._ZNSt12_Vector_baseIiSaIiEED2Ev, "xaG",@progbits,_ZNSt12_Vector_baseIiSaIiEED2Ev,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt12_Vector_baseIiSaIiEED2Ev
# --- std::_Vector_base<int, std::allocator<int>>::~_Vector_base(std::_Vector_base<int, std::allocator<int>> *const)
_ZNSt12_Vector_baseIiSaIiEED2Ev:
# parameter 1: %rdi
..B34.1:                        # Preds ..B34.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt12_Vector_baseIiSaIiEED2Ev$$LSDA
..___tag_value__ZNSt12_Vector_baseIiSaIiEED2Ev.842:
..L843:
                                                        #159.7
        movq      (%rdi), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B34.3       # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B34.2:                        # Preds ..B34.1
#       operator delete(void *)
        jmp       _ZdlPv                                        #110.9
                                # LOE
..B34.3:                        # Preds ..B34.1
        ret                                                     #159.7
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt12_Vector_baseIiSaIiEED2Ev,@function
	.size	_ZNSt12_Vector_baseIiSaIiEED2Ev,.-_ZNSt12_Vector_baseIiSaIiEED2Ev
	.section .gcc_except_table, "a"
	.align 4
_ZNSt12_Vector_baseIiSaIiEED2Ev$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt12_Vector_baseIiSaIiEED2Ev.848 - ..___tag_value__ZNSt12_Vector_baseIiSaIiEED2Ev.847
..___tag_value__ZNSt12_Vector_baseIiSaIiEED2Ev.847:
	.byte	1
	.uleb128	..___tag_value__ZNSt12_Vector_baseIiSaIiEED2Ev.846 - ..___tag_value__ZNSt12_Vector_baseIiSaIiEED2Ev.845
..___tag_value__ZNSt12_Vector_baseIiSaIiEED2Ev.845:
..___tag_value__ZNSt12_Vector_baseIiSaIiEED2Ev.846:
	.long	0x00000000,0x00000000
..___tag_value__ZNSt12_Vector_baseIiSaIiEED2Ev.848:
	.data
# -- End  _ZNSt12_Vector_baseIiSaIiEED2Ev
	.section .text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev, "xaG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev,comdat
..TXTST33:
# -- Begin  _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev
	.section .text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev, "xaG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev
# --- std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::~_Vector_base(std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>> *const)
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev:
# parameter 1: %rdi
..B35.1:                        # Preds ..B35.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev$$LSDA
..___tag_value__ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.849:
..L850:
                                                        #159.7
        movq      (%rdi), %rdi                                  #160.23
        testq     %rdi, %rdi                                    #173.6
        je        ..B35.3       # Prob 72%                      #173.6
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B35.2:                        # Preds ..B35.1
#       operator delete(void *)
        jmp       _ZdlPv                                        #110.9
                                # LOE
..B35.3:                        # Preds ..B35.1
        ret                                                     #159.7
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev,@function
	.size	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev,.-_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev
	.section .gcc_except_table, "a"
	.align 4
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.855 - ..___tag_value__ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.854
..___tag_value__ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.854:
	.byte	1
	.uleb128	..___tag_value__ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.853 - ..___tag_value__ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.852
..___tag_value__ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.852:
..___tag_value__ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.853:
	.long	0x00000000,0x00000000
..___tag_value__ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.855:
	.data
# -- End  _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev
	.section .text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev, "xaG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev,comdat
..TXTST34:
# -- Begin  _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev
	.section .text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev, "xaG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev
# --- std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::_Vector_impl::~_Vector_impl(std::_Vector_base<std::vector<int, std::allocator<int>>, std::allocator<std::vector<int, std::allocator<int>>>>::_Vector_impl *)
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev:
# parameter 1: %rdi
..B36.1:                        # Preds ..B36.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev.856:
..L857:
                                                        #79.14
        ret                                                     #79.14
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev,@function
	.size	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev,.-_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev
	.data
# -- End  _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev
	.text
# -- Begin  __sti__$E
	.text
# mark_begin;
       .align    16,0x90
# --- __sti__$E()
__sti__$E:
..B37.1:                        # Preds ..B37.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value___sti__$E.859:
..L860:
                                                        #
        pushq     %rsi                                          #
	.cfi_def_cfa_offset 16
        movl      $_ZSt8__ioinit, %edi                          #74.25
..___tag_value___sti__$E.862:
#       std::ios_base::Init::Init(std::ios_base::Init *)
        call      _ZNSt8ios_base4InitC1Ev                       #74.25
..___tag_value___sti__$E.863:
                                # LOE rbx rbp r12 r13 r14 r15
..B37.2:                        # Preds ..B37.1
        movl      $_ZNSt8ios_base4InitD1Ev, %edi                #74.25
        movl      $_ZSt8__ioinit, %esi                          #74.25
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
_ZSt8__ioinit:
	.type	_ZSt8__ioinit,@object
	.size	_ZSt8__ioinit,1
	.space 1	# pad
	.data
	.align 4
	.align 4
	.globl block_size
block_size:
	.long	16
	.type	block_size,@object
	.size	block_size,4
	.section .rodata, "a"
	.align 16
	.align 16
.L_2il0floatpacket.41:
	.long	0x00000000,0x3ff00000,0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.41,@object
	.size	.L_2il0floatpacket.41,16
	.align 16
.L_2il0floatpacket.42:
	.long	0x00000000,0x00000001,0x00000002,0x00000003
	.type	.L_2il0floatpacket.42,@object
	.size	.L_2il0floatpacket.42,16
	.align 8
.L_2il0floatpacket.43:
	.long	0x00000000,0xbff00000
	.type	.L_2il0floatpacket.43,@object
	.size	.L_2il0floatpacket.43,8
	.align 8
.L_2il0floatpacket.44:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.44,@object
	.size	.L_2il0floatpacket.44,8
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.1:
	.long	1819043144
	.long	1867980911
	.long	6581362
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,12
	.align 4
.L_2__STRING.2:
	.long	1970037078
	.long	1718558821
	.long	895181600
	.long	1025531184
	.word	32
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,18
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
