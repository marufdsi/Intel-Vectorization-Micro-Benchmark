# mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 16.0.0.109 Build 20150815";
# mark_description "";
# mark_description "-S -std=c++11 -fopenmp -O3";
	.file "TestIntrinsic.cpp"
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
..___tag_value_main.4:
..L5:
                                                          #14.12
        pushq     %rbx                                          #14.12
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbx                                    #14.12
	.cfi_def_cfa 3, 16
	.cfi_offset 3, -16
        andq      $-64, %rsp                                    #14.12
        pushq     %rbp                                          #14.12
        pushq     %rbp                                          #14.12
        movq      8(%rbx), %rbp                                 #14.12
        movq      %rbp, 8(%rsp)                                 #14.12
        movq      %rsp, %rbp                                    #14.12
	.cfi_escape 0x10, 0x06, 0x02, 0x76, 0x00
        pushq     %r12                                          #14.12
        pushq     %r13                                          #14.12
        pushq     %r14                                          #14.12
        pushq     %r15                                          #14.12
        subq      $400, %rsp                                    #14.12
        xorl      %esi, %esi                                    #14.12
        movl      $3, %edi                                      #14.12
        call      __intel_new_feature_proc_init                 #14.12
	.cfi_escape 0x10, 0x0c, 0x02, 0x76, 0x78
	.cfi_escape 0x10, 0x0d, 0x02, 0x76, 0x70
	.cfi_escape 0x10, 0x0e, 0x02, 0x76, 0x68
	.cfi_escape 0x10, 0x0f, 0x02, 0x76, 0x60
                                # LOE
..B1.160:                       # Preds ..B1.1
        lea       -432(%rbp), %rax                              #14.12
        stmxcsr   (%rax)                                        #14.12
        movl      $.2.99_2_kmpc_loc_struct_pack.116, %edi       #14.12
        xorl      %esi, %esi                                    #14.12
        orl       $32832, (%rax)                                #14.12
        xorl      %eax, %eax                                    #14.12
        ldmxcsr   -432(%rbp)                                    #14.12
..___tag_value_main.14:
        call      __kmpc_begin                                  #14.12
..___tag_value_main.15:
                                # LOE
..B1.2:                         # Preds ..B1.160
        movl      $160, %eax                                    #19.9
        movq      $192, %rax                                    #19.9
        subq      %rax, %rsp                                    #19.9
        movq      %rsp, %rax                                    #19.9
                                # LOE rax
..B1.161:                       # Preds ..B1.2
        movq      %rax, -288(%rbp)                              #19.9
                                # LOE
..B1.3:                         # Preds ..B1.161
        movl      $160, %eax                                    #20.9
        movq      $192, %rax                                    #20.9
        subq      %rax, %rsp                                    #20.9
        movq      %rsp, %rax                                    #20.9
                                # LOE rax
..B1.162:                       # Preds ..B1.3
        movq      %rax, -280(%rbp)                              #20.9
                                # LOE
..B1.4:                         # Preds ..B1.162
        movl      $4, %eax                                      #24.2
        vmovdqa   .L_2il0floatpacket.8(%rip), %xmm1             #24.2
        vmovdqa   %xmm1, -432(%rbp)                             #24.2
        vmovd     %eax, %xmm0                                   #24.2
        movl      $21, %eax                                     #29.24
        vpshufd   $0, %xmm0, %xmm4                              #24.2
        vpaddd    %xmm4, %xmm1, %xmm2                           #24.2
        vpaddd    %xmm4, %xmm2, %xmm3                           #24.2
        vpaddd    %xmm4, %xmm3, %xmm5                           #24.2
        vmovdqa   %xmm2, -416(%rbp)                             #24.2
        vmovdqa   %xmm3, -400(%rbp)                             #24.2
        vmovdqa   %xmm5, -384(%rbp)                             #24.2
        vmovdqa   %xmm0, -304(%rbp)                             #24.2
        vxorpd    %xmm0, %xmm0, %xmm0                           #30.27
        vmovups   -432(%rbp), %zmm7                             #29.24
        vmovdqa   %xmm4, -368(%rbp)                             #24.2
        kmovw     %eax, %k1                                     #29.24
        popcnt    %eax, %ecx                                    #30.33
        vcvtsi2sd %ecx, %xmm0, %xmm0                            #30.27
        vpxord    %zmm6, %zmm6, %zmm6                           #29.24
        vpcompressd %zmm7, %zmm6{%k1}                           #29.24
        vmovaps   %zmm6, -240(%rbp)                             #29.22
        call      exp2                                          #30.27
                                # LOE xmm0
..B1.163:                       # Preds ..B1.4
        xorl      %r13d, %r13d                                  #33.4
        vsubsd    .L_2il0floatpacket.17(%rip), %xmm0, %xmm1     #30.70
        vcvttsd2si %xmm1, %eax                                  #30.70
        movzwl    %ax, %r12d                                    #30.70
                                # LOE r13 r12d
..B1.5:                         # Preds ..B1.9 ..B1.163
        movl      $_ZSt4cout, %edi                              #34.13
        movl      -240(%rbp,%r13,4), %esi                       #34.13
..___tag_value_main.16:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, int)
        call      _ZNSolsEi                                     #34.13
..___tag_value_main.17:
                                # LOE rax r13 r12d
..B1.7:                         # Preds ..B1.5
        movq      %rax, %rdi                                    #34.23
        movl      $.L_2__STRING.0, %esi                         #34.23
..___tag_value_main.18:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #34.23
..___tag_value_main.19:
                                # LOE r13 r12d
..B1.9:                         # Preds ..B1.7
        incq      %r13                                          #33.4
        cmpq      $16, %r13                                     #33.4
        jb        ..B1.5        # Prob 93%                      #33.4
                                # LOE r13 r12d
..B1.10:                        # Preds ..B1.9                  # Infreq
        movl      $_ZSt4cout, %edi                              #36.8
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #36.8
..___tag_value_main.20:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #36.8
..___tag_value_main.21:
                                # LOE rax r12d
..B1.12:                        # Preds ..B1.10                 # Infreq
        movq      %rax, %rdi                                    #36.14
        movl      $.L_2__STRING.1, %esi                         #36.14
..___tag_value_main.22:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #36.14
..___tag_value_main.23:
                                # LOE rax r12d
..B1.14:                        # Preds ..B1.12                 # Infreq
        popcnt    %r12d, %esi                                   #31.18
        movq      %rax, %rdi                                    #36.29
..___tag_value_main.24:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, int)
        call      _ZNSolsEi                                     #36.29
..___tag_value_main.25:
                                # LOE rax r12d
..B1.16:                        # Preds ..B1.14                 # Infreq
        movq      %rax, %rdi                                    #36.38
        movl      $.L_2__STRING.2, %esi                         #36.38
..___tag_value_main.26:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #36.38
..___tag_value_main.27:
                                # LOE rax r12d
..B1.18:                        # Preds ..B1.16                 # Infreq
        movq      %rax, %rdi                                    #36.56
        movl      %r12d, %esi                                   #36.56
..___tag_value_main.28:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, unsigned short)
        call      _ZNSolsEt                                     #36.56
..___tag_value_main.29:
                                # LOE rax
..B1.20:                        # Preds ..B1.18                 # Infreq
        movq      %rax, %rdi                                    #36.69
        movl      $.L_2__STRING.3, %esi                         #36.69
..___tag_value_main.30:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #36.69
..___tag_value_main.31:
                                # LOE rax
..B1.22:                        # Preds ..B1.20                 # Infreq
        movq      %rax, %rdi                                    #36.83
        movl      $21, %esi                                     #36.83
..___tag_value_main.32:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, unsigned short)
        call      _ZNSolsEt                                     #36.83
..___tag_value_main.33:
                                # LOE rax
..B1.24:                        # Preds ..B1.22                 # Infreq
        movq      %rax, %rdi                                    #36.91
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #36.91
..___tag_value_main.34:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #36.91
..___tag_value_main.35:
                                # LOE
..B1.26:                        # Preds ..B1.24                 # Infreq
        movl      $12000, %edi                                  #43.31
        xorl      %r15d, %r15d                                  #43.31
        movl      $0, -272(%rbp)                                #40.25
        movq      %r15, -424(%rbp)                              #43.20
        movq      %r15, -416(%rbp)                              #43.20
        movq      %r15, -408(%rbp)                              #43.20
..___tag_value_main.36:
#       operator new(std::size_t)
        call      _Znwm                                         #43.31
..___tag_value_main.37:
                                # LOE rax r15
..B1.27:                        # Preds ..B1.26                 # Infreq
        movq      %rax, %rdi                                    #43.31
                                # LOE rdi r15
..B1.28:                        # Preds ..B1.27                 # Infreq
        xorl      %esi, %esi                                    #43.31
        movl      $12000, %edx                                  #43.31
        movq      %rdi, -424(%rbp)                              #43.20
        lea       12000(%rdi), %rax                             #43.31
        movq      %rdi, -416(%rbp)                              #43.20
        movq      %rax, -408(%rbp)                              #43.20
        call      _intel_fast_memset                            #43.31
                                # LOE r15
..B1.29:                        # Preds ..B1.28                 # Infreq
        movq      -408(%rbp), %rax                              #43.20
        movl      $12000, %edi                                  #49.33
        movq      %rax, -416(%rbp)                              #43.20
#       malloc(size_t)
        call      malloc                                        #49.33
                                # LOE r15
..B1.30:                        # Preds ..B1.29                 # Infreq
        movl      $12000, %edi                                  #50.35
#       malloc(size_t)
        call      malloc                                        #50.35
                                # LOE rax r15
..B1.164:                       # Preds ..B1.30                 # Infreq
        movq      %rax, %r14                                    #50.35
                                # LOE r14 r15
..B1.31:                        # Preds ..B1.164                # Infreq
        movl      $12000, %edi                                  #51.40
#       malloc(size_t)
        call      malloc                                        #51.40
                                # LOE r14 r15
..B1.32:                        # Preds ..B1.31                 # Infreq
        movl      $12000, %edi                                  #52.44
#       malloc(size_t)
        call      malloc                                        #52.44
                                # LOE r14 r15
..B1.33:                        # Preds ..B1.32                 # Infreq
        movl      $12000, %edi                                  #53.25
#       malloc(size_t)
        call      malloc                                        #53.25
                                # LOE rax r14 r15
..B1.165:                       # Preds ..B1.33                 # Infreq
        movq      %rax, %r13                                    #53.25
                                # LOE r13 r14 r15
..B1.34:                        # Preds ..B1.165                # Infreq
        movl      $12000, %edi                                  #55.21
#       malloc(size_t)
        call      malloc                                        #55.21
                                # LOE rax r13 r14 r15
..B1.166:                       # Preds ..B1.34                 # Infreq
        movq      %rax, %r12                                    #55.21
                                # LOE r12 r13 r14 r15
..B1.35:                        # Preds ..B1.166                # Infreq
        movq      %r12, %rcx                                    #59.21
        andq      $15, %rcx                                     #59.21
        movq      %rcx, -384(%rbp)                              #59.21
        testl     %ecx, %ecx                                    #59.21
        movl      %ecx, -432(%rbp)                              #59.21
        je        ..B1.40       # Prob 50%                      #59.21
                                # LOE rcx r12 r13 r14 r15 ecx cl ch
..B1.36:                        # Preds ..B1.35                 # Infreq
        testb     $3, -432(%rbp)                                #59.21
        jne       ..B1.154      # Prob 10%                      #59.21
                                # LOE rcx r12 r13 r14 r15 ecx cl ch
..B1.37:                        # Preds ..B1.36                 # Infreq
        xorl      %edi, %edi                                    #59.21
        negl      %ecx                                          #59.21
        movq      %r15, %rsi                                    #59.21
        addl      $16, %ecx                                     #59.21
        shrl      $2, %ecx                                      #59.21
                                # LOE rsi r12 r13 r14 r15 ecx edi
..B1.38:                        # Preds ..B1.38 ..B1.37         # Infreq
        movl      $1717986919, %eax                             #61.29
        movl      %edi, %r8d                                    #61.29
        imull     %edi                                          #61.29
        sarl      $31, %r8d                                     #61.29
        sarl      $2, %edx                                      #61.29
        subl      %r8d, %edx                                    #61.29
        movl      %edi, (%r13,%rsi,4)                           #60.9
        lea       (%rdx,%rdx,4), %r9d                           #61.29
        addl      %r9d, %r9d                                    #61.29
        negl      %r9d                                          #61.29
        addl      %edi, %r9d                                    #61.29
        incl      %edi                                          #59.21
        movl      %r9d, (%r12,%rsi,4)                           #61.9
        incq      %rsi                                          #59.21
        cmpl      %ecx, %edi                                    #59.21
        jb        ..B1.38       # Prob 82%                      #59.21
                                # LOE rsi r12 r13 r14 r15 ecx edi
..B1.40:                        # Preds ..B1.38 ..B1.35         # Infreq
        movl      %ecx, %esi                                    #59.21
        lea       1(%rcx), %edi                                 #58.1
        movd      %ecx, %xmm9                                   #58.1
        lea       2(%rcx), %r8d                                 #58.1
        negl      %esi                                          #59.21
        lea       3(%rcx), %r9d                                 #58.1
        movl      %ecx, %ecx                                    #60.9
        andl      $3, %esi                                      #59.21
        negl      %esi                                          #59.21
        movd      %edi, %xmm2                                   #58.1
        movd      %r8d, %xmm4                                   #58.1
        addl      $3000, %esi                                   #59.21
        movd      %r9d, %xmm3                                   #58.1
        movl      %esi, %eax                                    #59.21
        punpcklqdq %xmm2, %xmm9                                 #58.1
        lea       (%r13,%rcx,4), %r10                           #60.9
        punpcklqdq %xmm3, %xmm4                                 #58.1
        testq     $15, %r10                                     #59.21
        movdqa    .L_2il0floatpacket.9(%rip), %xmm8             #61.29
        shufps    $136, %xmm4, %xmm9                            #58.1
        je        ..B1.44       # Prob 60%                      #59.21
                                # LOE rax r12 r13 r14 r15 ecx esi xmm8 xmm9
..B1.41:                        # Preds ..B1.40                 # Infreq
        movl      %ecx, %ecx                                    #59.21
        movq      %rax, %r15                                    #59.21
        movl      %esi, -400(%rbp)                              #59.21
        movq      %r14, -392(%rbp)                              #59.21
        movq      %rcx, %r14                                    #59.21
        movdqa    -368(%rbp), %xmm10                            #59.21
                                # LOE r12 r13 r14 r15 xmm8 xmm9 xmm10
..B1.42:                        # Preds ..B1.167 ..B1.41        # Infreq
        movdqa    %xmm9, %xmm0                                  #61.29
        movdqa    %xmm8, %xmm1                                  #61.29
        movdqu    %xmm9, (%r13,%r14,4)                          #60.9
        call      __svml_irem4                                  #61.9
                                # LOE r12 r13 r14 r15 xmm0 xmm8 xmm9 xmm10
..B1.167:                       # Preds ..B1.42                 # Infreq
        movdqa    %xmm0, (%r12,%r14,4)                          #61.9
        addq      $4, %r14                                      #59.21
        paddd     %xmm10, %xmm9                                 #58.1
        cmpq      %r15, %r14                                    #59.21
        jb        ..B1.42       # Prob 82%                      #59.21
        jmp       ..B1.46       # Prob 100%                     #59.21
                                # LOE r12 r13 r14 r15 xmm8 xmm9 xmm10
..B1.44:                        # Preds ..B1.40                 # Infreq
        movl      %ecx, %ecx                                    #59.21
        movq      %rax, %r15                                    #59.21
        movl      %esi, -400(%rbp)                              #59.21
        movq      %r14, -392(%rbp)                              #59.21
        movq      %rcx, %r14                                    #59.21
        movdqa    -368(%rbp), %xmm10                            #59.21
                                # LOE r12 r13 r14 r15 xmm8 xmm9 xmm10
..B1.45:                        # Preds ..B1.168 ..B1.44        # Infreq
        movdqa    %xmm9, %xmm0                                  #61.29
        movdqa    %xmm8, %xmm1                                  #61.29
        movdqa    %xmm9, (%r13,%r14,4)                          #60.9
        call      __svml_irem4                                  #61.9
                                # LOE r12 r13 r14 r15 xmm0 xmm8 xmm9 xmm10
..B1.168:                       # Preds ..B1.45                 # Infreq
        movdqa    %xmm0, (%r12,%r14,4)                          #61.9
        addq      $4, %r14                                      #59.21
        paddd     %xmm10, %xmm9                                 #58.1
        cmpq      %r15, %r14                                    #59.21
        jb        ..B1.45       # Prob 82%                      #59.21
                                # LOE r12 r13 r14 r15 xmm8 xmm9 xmm10
..B1.46:                        # Preds ..B1.167 ..B1.168       # Infreq
        movl      -400(%rbp), %esi                              #
        xorl      %r15d, %r15d                                  #
        movq      -392(%rbp), %r14                              #
                                # LOE r12 r13 r14 r15 esi
..B1.47:                        # Preds ..B1.46 ..B1.154        # Infreq
        movl      %esi, %ecx                                    #59.21
        cmpl      $3000, %esi                                   #59.21
        jae       ..B1.51       # Prob 0%                       #59.21
                                # LOE rcx r12 r13 r14 r15 esi
..B1.49:                        # Preds ..B1.47 ..B1.49         # Infreq
        movl      $1717986919, %eax                             #61.29
        movl      %esi, %edi                                    #61.29
        imull     %esi                                          #61.29
        sarl      $31, %edi                                     #61.29
        sarl      $2, %edx                                      #61.29
        subl      %edi, %edx                                    #61.29
        movl      %esi, (%r13,%rcx,4)                           #60.9
        lea       (%rdx,%rdx,4), %r8d                           #61.29
        addl      %r8d, %r8d                                    #61.29
        negl      %r8d                                          #61.29
        addl      %esi, %r8d                                    #61.29
        incl      %esi                                          #59.21
        movl      %r8d, (%r12,%rcx,4)                           #61.9
        incq      %rcx                                          #59.21
        cmpl      $3000, %esi                                   #59.21
        jb        ..B1.49       # Prob 82%                      #59.21
                                # LOE rcx r12 r13 r14 r15 esi
..B1.51:                        # Preds ..B1.49 ..B1.47         # Infreq
        vbroadcastss .L_2il0floatpacket.10(%rip), %zmm0         #69.28
        movl      $1, %edi                                      #72.5
        vmovaps   %zmm0, -240(%rbp)                             #69.28
        lea       -320(%rbp), %rsi                              #72.5
#       clock_gettime(clockid_t, timespec *)
        call      clock_gettime                                 #72.5
                                # LOE r12 r13 r14 r15
..B1.52:                        # Preds ..B1.51                 # Infreq
        movslq    11996(%r13), %rax                             #76.35
        xorl      %r11d, %r11d                                  #73.2
        movslq    11968(%r13), %r10                             #76.35
        movslq    11972(%r13), %r9                              #76.35
        movslq    11976(%r13), %r8                              #76.35
        movslq    11980(%r13), %rdi                             #76.35
        movslq    11984(%r13), %rsi                             #76.35
        movslq    11988(%r13), %rcx                             #76.35
        movslq    11992(%r13), %rdx                             #76.35
        movaps    .L_2il0floatpacket.11(%rip), %xmm3            #76.58
        pshuflw   $238, %xmm3, %xmm4                            #76.17
        punpckhqdq %xmm3, %xmm3                                 #76.17
        movslq    (%r12,%rax,4), %rax                           #76.30
        pshuflw   $238, %xmm3, %xmm0                            #76.17
        movslq    (%r12,%r10,4), %r10                           #76.30
        movslq    (%r12,%r9,4), %r9                             #76.30
        movslq    (%r12,%r8,4), %r8                             #76.30
        movslq    (%r12,%rdi,4), %rdi                           #76.30
        movslq    (%r12,%rsi,4), %rsi                           #76.30
        movslq    (%r12,%rcx,4), %rcx                           #76.30
        movslq    (%r12,%rdx,4), %rdx                           #76.30
        movq      %rax, -400(%rbp)                              #76.30
        movaps    .L_2il0floatpacket.11(%rip), %xmm1            #76.30
        movss     .L_2il0floatpacket.10(%rip), %xmm2            #76.30
                                # LOE rdx rcx rsi rdi r8 r9 r10 r12 r13 r14 r15 r11d xmm0 xmm1 xmm2 xmm3 xmm4
..B1.53:                        # Preds ..B1.55 ..B1.52         # Infreq
        movl      %r11d, -392(%rbp)                             #75.27
        movq      %r15, %rax                                    #75.27
                                # LOE rax rdx rcx rsi rdi r8 r9 r10 r12 r13 r14 xmm0 xmm1 xmm2 xmm3 xmm4
..B1.54:                        # Preds ..B1.54 ..B1.53         # Infreq
        movslq    (%r13,%rax,4), %r11                           #76.30
        movslq    4(%r13,%rax,4), %r15                          #76.30
        movd      (%r12,%r11,4), %xmm8                          #76.30
        movd      (%r12,%r15,4), %xmm5                          #76.30
        movslq    8(%r13,%rax,4), %r11                          #76.30
        movslq    12(%r13,%rax,4), %r15                         #76.30
        punpcklqdq %xmm5, %xmm8                                 #76.30
        movd      (%r12,%r11,4), %xmm7                          #76.30
        movd      (%r12,%r15,4), %xmm6                          #76.30
        punpcklqdq %xmm6, %xmm7                                 #76.30
        shufps    $136, %xmm7, %xmm8                            #76.30
        movd      %xmm8, %r15                                   #76.17
        movaps    %xmm8, %xmm9                                  #76.17
        punpckhqdq %xmm8, %xmm9                                 #76.17
        movslq    %r15d, %r11                                   #76.17
        sarq      $32, %r15                                     #76.17
        movd      %xmm1, (%r14,%r11,4)                          #76.17
        movd      %xmm4, (%r14,%r15,4)                          #76.17
        movd      %xmm9, %r15                                   #76.17
        movslq    %r15d, %r11                                   #76.17
        sarq      $32, %r15                                     #76.17
        movd      %xmm3, (%r14,%r11,4)                          #76.17
        movd      %xmm0, (%r14,%r15,4)                          #76.17
        movslq    16(%r13,%rax,4), %r11                         #76.30
        movslq    20(%r13,%rax,4), %r15                         #76.30
        movd      (%r12,%r11,4), %xmm13                         #76.30
        movd      (%r12,%r15,4), %xmm10                         #76.30
        movslq    24(%r13,%rax,4), %r11                         #76.30
        movslq    28(%r13,%rax,4), %r15                         #76.30
        punpcklqdq %xmm10, %xmm13                               #76.30
        movd      (%r12,%r11,4), %xmm12                         #76.30
        movd      (%r12,%r15,4), %xmm11                         #76.30
        punpcklqdq %xmm11, %xmm12                               #76.30
        shufps    $136, %xmm12, %xmm13                          #76.30
        movd      %xmm13, %r15                                  #76.17
        movaps    %xmm13, %xmm14                                #76.17
        punpckhqdq %xmm13, %xmm14                               #76.17
        movslq    %r15d, %r11                                   #76.17
        sarq      $32, %r15                                     #76.17
        movd      %xmm1, (%r14,%r11,4)                          #76.17
        movd      %xmm4, (%r14,%r15,4)                          #76.17
        movd      %xmm14, %r15                                  #76.17
        movslq    %r15d, %r11                                   #76.17
        sarq      $32, %r15                                     #76.17
        movd      %xmm3, (%r14,%r11,4)                          #76.17
        movd      %xmm0, (%r14,%r15,4)                          #76.17
        movslq    32(%r13,%rax,4), %r11                         #76.30
        movslq    36(%r13,%rax,4), %r15                         #76.30
        movd      (%r12,%r11,4), %xmm6                          #76.30
        movd      (%r12,%r15,4), %xmm15                         #76.30
        movslq    40(%r13,%rax,4), %r11                         #76.30
        movslq    44(%r13,%rax,4), %r15                         #76.30
        punpcklqdq %xmm15, %xmm6                                #76.30
        movd      (%r12,%r11,4), %xmm5                          #76.30
        movd      (%r12,%r15,4), %xmm15                         #76.30
        punpcklqdq %xmm15, %xmm5                                #76.30
        shufps    $136, %xmm5, %xmm6                            #76.30
        movd      %xmm6, %r15                                   #76.17
        movaps    %xmm6, %xmm7                                  #76.17
        punpckhqdq %xmm6, %xmm7                                 #76.17
        movslq    %r15d, %r11                                   #76.17
        sarq      $32, %r15                                     #76.17
        movd      %xmm1, (%r14,%r11,4)                          #76.17
        movd      %xmm4, (%r14,%r15,4)                          #76.17
        movd      %xmm7, %r15                                   #76.17
        movslq    %r15d, %r11                                   #76.17
        sarq      $32, %r15                                     #76.17
        movd      %xmm3, (%r14,%r11,4)                          #76.17
        movd      %xmm0, (%r14,%r15,4)                          #76.17
        movslq    48(%r13,%rax,4), %r11                         #76.30
        movslq    52(%r13,%rax,4), %r15                         #76.30
        movd      (%r12,%r11,4), %xmm11                         #76.30
        movd      (%r12,%r15,4), %xmm8                          #76.30
        movslq    56(%r13,%rax,4), %r11                         #76.30
        .byte     144                                           #76.30
        movslq    60(%r13,%rax,4), %r15                         #76.30
        addq      $16, %rax                                     #75.27
        punpcklqdq %xmm8, %xmm11                                #76.30
        movd      (%r12,%r11,4), %xmm10                         #76.30
        movd      (%r12,%r15,4), %xmm9                          #76.30
        punpcklqdq %xmm9, %xmm10                                #76.30
        shufps    $136, %xmm10, %xmm11                          #76.30
        movd      %xmm11, %r15                                  #76.17
        movaps    %xmm11, %xmm12                                #76.17
        punpckhqdq %xmm11, %xmm12                               #76.17
        movslq    %r15d, %r11                                   #76.17
        sarq      $32, %r15                                     #76.17
        movd      %xmm1, (%r14,%r11,4)                          #76.17
        movd      %xmm4, (%r14,%r15,4)                          #76.17
        movd      %xmm12, %r15                                  #76.17
        movslq    %r15d, %r11                                   #76.17
        sarq      $32, %r15                                     #76.17
        cmpq      $2992, %rax                                   #75.27
        movd      %xmm3, (%r14,%r11,4)                          #76.17
        movd      %xmm0, (%r14,%r15,4)                          #76.17
        jb        ..B1.54       # Prob 82%                      #75.27
                                # LOE rax rdx rcx rsi rdi r8 r9 r10 r12 r13 r14 xmm0 xmm1 xmm2 xmm3 xmm4
..B1.55:                        # Preds ..B1.54                 # Infreq
        movl      -392(%rbp), %r11d                             #
        xorl      %r15d, %r15d                                  #
        movss     %xmm2, (%r14,%r10,4)                          #76.17
        incl      %r11d                                         #73.2
        movss     %xmm2, (%r14,%r9,4)                           #76.17
        cmpl      $1000000, %r11d                               #73.2
        movss     %xmm2, (%r14,%r8,4)                           #76.17
        movss     %xmm2, (%r14,%rdi,4)                          #76.17
        movss     %xmm2, (%r14,%rsi,4)                          #76.17
        movss     %xmm2, (%r14,%rcx,4)                          #76.17
        movss     %xmm2, (%r14,%rdx,4)                          #76.17
        jb        ..B1.53       # Prob 99%                      #73.2
                                # LOE rdx rcx rsi rdi r8 r9 r10 r12 r13 r14 r15 r11d xmm0 xmm1 xmm2 xmm3 xmm4
..B1.56:                        # Preds ..B1.55                 # Infreq
        movq      -400(%rbp), %rax                              #
        movl      $1, %edi                                      #79.5
        movss     .L_2il0floatpacket.10(%rip), %xmm0            #76.17
        lea       -352(%rbp), %rsi                              #79.5
        movss     %xmm0, (%r14,%rax,4)                          #76.17
#       clock_gettime(clockid_t, timespec *)
        call      clock_gettime                                 #79.5
                                # LOE r12 r13 r14 r15
..B1.57:                        # Preds ..B1.56                 # Infreq
        pxor      %xmm1, %xmm1                                  #80.58
        pxor      %xmm3, %xmm3                                  #80.114
        cvtsi2sdq -344(%rbp), %xmm1                             #80.58
        cvtsi2sdq -312(%rbp), %xmm3                             #80.114
        imulq     $1000, -352(%rbp), %rcx                       #80.50
        imulq     $1000, -320(%rbp), %r8                        #80.106
        movsd     .L_2il0floatpacket.12(%rip), %xmm0            #80.76
        pxor      %xmm4, %xmm4                                  #80.50
        divsd     %xmm0, %xmm1                                  #80.76
        divsd     %xmm0, %xmm3                                  #80.134
        cvtsi2sdq %rcx, %xmm4                                   #80.50
        pxor      %xmm2, %xmm2                                  #80.106
        movl      $_ZSt4cout, %edi                              #81.9
        cvtsi2sdq %r8, %xmm2                                    #80.106
        addsd     %xmm1, %xmm4                                  #80.76
        movl      $.L_2__STRING.4, %esi                         #81.9
        subsd     %xmm2, %xmm4                                  #80.134
        subsd     %xmm3, %xmm4                                  #80.134
        movsd     %xmm4, -400(%rbp)                             #80.134
..___tag_value_main.38:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #81.9
..___tag_value_main.39:
                                # LOE rax r12 r13 r14 r15
..B1.59:                        # Preds ..B1.57                 # Infreq
        movsd     -400(%rbp), %xmm0                             #81.33
        movq      %rax, %rdi                                    #81.33
..___tag_value_main.40:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #81.33
..___tag_value_main.41:
                                # LOE rax r12 r13 r14 r15
..B1.61:                        # Preds ..B1.59                 # Infreq
        movq      %rax, %rdi                                    #81.51
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #81.51
..___tag_value_main.42:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #81.51
..___tag_value_main.43:
                                # LOE r12 r13 r14 r15
..B1.63:                        # Preds ..B1.61                 # Infreq
        movl      $1, %edi                                      #84.5
        lea       -336(%rbp), %rsi                              #84.5
#       clock_gettime(clockid_t, timespec *)
        call      clock_gettime                                 #84.5
                                # LOE r12 r13 r14 r15
..B1.64:                        # Preds ..B1.63                 # Infreq
        vmovaps   -240(%rbp), %zmm0                             #85.2
        xorl      %eax, %eax                                    #85.2
        movss     .L_2il0floatpacket.10(%rip), %xmm1            #85.2
                                # LOE r12 r13 r14 r15 eax xmm1 zmm0
..B1.66:                        # Preds ..B1.64 ..B1.68         # Infreq
        xorl      %esi, %esi                                    #87.13
        movq      %r15, %rcx                                    #87.13
                                # LOE rcx r12 r13 r14 r15 eax esi xmm1 zmm0
..B1.67:                        # Preds ..B1.67 ..B1.66         # Infreq
        vmovups   (%r13,%rcx,4), %zmm2                          #90.33
        incl      %esi                                          #87.13
        kxnorw    %k0, %k0, %k1                                 #90.33
        kxnorw    %k0, %k0, %k2                                 #92.17
        addq      $16, %rcx                                     #87.13
        cmpl      $187, %esi                                    #87.13
        vpxord    %zmm3, %zmm3, %zmm3                           #90.33
        vpgatherdd (%r12,%zmm2,4), %zmm3{%k1}                   #90.33
        vscatterdps %zmm0, (%r14,%zmm3,4){%k2}                  #92.17
        jb        ..B1.67       # Prob 82%                      #87.13
                                # LOE rcx r12 r13 r14 r15 eax esi xmm1 zmm0
..B1.68:                        # Preds ..B1.67                 # Infreq
        movslq    11968(%r13), %rcx                             #96.35
        incl      %eax                                          #85.2
        movslq    11972(%r13), %rdi                             #96.35
        cmpl      $1000000, %eax                                #85.2
        movslq    11976(%r13), %r9                              #96.35
        movslq    11980(%r13), %r11                             #96.35
        movslq    (%r12,%rcx,4), %rsi                           #96.30
        movslq    (%r12,%rdi,4), %r8                            #96.30
        movslq    (%r12,%r9,4), %r10                            #96.30
        movslq    (%r12,%r11,4), %rcx                           #96.30
        vmovss    %xmm1, (%r14,%rsi,4)                          #96.17
        vmovss    %xmm1, (%r14,%r8,4)                           #96.17
        vmovss    %xmm1, (%r14,%r10,4)                          #96.17
        vmovss    %xmm1, (%r14,%rcx,4)                          #96.17
        movslq    11984(%r13), %rcx                             #96.35
        movslq    (%r12,%rcx,4), %rcx                           #96.30
        vmovss    %xmm1, (%r14,%rcx,4)                          #96.17
        movslq    11988(%r13), %rcx                             #96.35
        movslq    (%r12,%rcx,4), %rcx                           #96.30
        vmovss    %xmm1, (%r14,%rcx,4)                          #96.17
        movslq    11992(%r13), %rcx                             #96.35
        movslq    (%r12,%rcx,4), %rcx                           #96.30
        vmovss    %xmm1, (%r14,%rcx,4)                          #96.17
        movslq    11996(%r13), %rcx                             #96.35
        movslq    (%r12,%rcx,4), %rcx                           #96.30
        vmovss    %xmm1, (%r14,%rcx,4)                          #96.17
        jb        ..B1.66       # Prob 99%                      #85.2
                                # LOE r12 r13 r14 r15 eax xmm1 zmm0
..B1.69:                        # Preds ..B1.68                 # Infreq
        movl      $1, %edi                                      #99.5
        lea       -400(%rbp), %rsi                              #99.5
#       clock_gettime(clockid_t, timespec *)
        call      clock_gettime                                 #99.5
                                # LOE r12 r13 r14
..B1.70:                        # Preds ..B1.69                 # Infreq
        vxorpd    %xmm0, %xmm0, %xmm0                           #100.60
        vxorpd    %xmm5, %xmm5, %xmm5                           #100.118
        vcvtsi2sdq -392(%rbp), %xmm0, %xmm0                     #100.60
        vcvtsi2sdq -328(%rbp), %xmm5, %xmm5                     #100.118
        imulq     $1000, -400(%rbp), %rcx                       #100.52
        imulq     $1000, -336(%rbp), %r8                        #100.110
        vmovsd    .L_2il0floatpacket.12(%rip), %xmm6            #100.79
        vxorpd    %xmm1, %xmm1, %xmm1                           #100.52
        vdivsd    %xmm6, %xmm0, %xmm2                           #100.79
        vdivsd    %xmm6, %xmm5, %xmm8                           #100.139
        vcvtsi2sdq %rcx, %xmm1, %xmm1                           #100.52
        vxorpd    %xmm4, %xmm4, %xmm4                           #100.110
        movl      $_ZSt4cout, %edi                              #101.9
        vcvtsi2sdq %r8, %xmm4, %xmm4                            #100.110
        vaddsd    %xmm2, %xmm1, %xmm3                           #100.79
        movl      $.L_2__STRING.5, %esi                         #101.9
        vsubsd    %xmm4, %xmm3, %xmm7                           #100.139
        vsubsd    %xmm8, %xmm7, %xmm9                           #100.139
        vmovsd    %xmm9, -376(%rbp)                             #100.139
..___tag_value_main.44:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #101.9
..___tag_value_main.45:
                                # LOE rax r12 r13 r14
..B1.72:                        # Preds ..B1.70                 # Infreq
        vmovsd    -376(%rbp), %xmm0                             #101.35
        movq      %rax, %rdi                                    #101.35
..___tag_value_main.46:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #101.35
..___tag_value_main.47:
                                # LOE rax r12 r13 r14
..B1.74:                        # Preds ..B1.72                 # Infreq
        movq      %rax, %rdi                                    #101.54
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #101.54
..___tag_value_main.48:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #101.54
..___tag_value_main.49:
                                # LOE r12 r13 r14
..B1.76:                        # Preds ..B1.74                 # Infreq
        xorb      %cl, %cl                                      #108.21
        cmpl      $0, -432(%rbp)                                #108.21
        je        ..B1.82       # Prob 50%                      #108.21
                                # LOE r12 r13 r14 cl
..B1.77:                        # Preds ..B1.76                 # Infreq
        testb     $3, -432(%rbp)                                #108.21
        jne       ..B1.146      # Prob 10%                      #108.21
                                # LOE r12 r13 r14 cl
..B1.78:                        # Preds ..B1.77                 # Infreq
        movl      -432(%rbp), %esi                              #108.21
        xorl      %eax, %eax                                    #108.21
        negl      %esi                                          #108.21
        addl      $16, %esi                                     #108.21
        shrl      $2, %esi                                      #108.21
        movl      %esi, -432(%rbp)                              #108.21
        movq      %rsi, -384(%rbp)                              #108.21
                                # LOE rax rsi r12 r13 r14 cl
..B1.79:                        # Preds ..B1.79 ..B1.78         # Infreq
        movl      %eax, (%r13,%rax,4)                           #109.9
        movl      $1, (%r12,%rax,4)                             #111.2
        incq      %rax                                          #108.21
        cmpq      %rsi, %rax                                    #108.21
        jb        ..B1.79       # Prob 81%                      #108.21
                                # LOE rax rsi r12 r13 r14 cl
..B1.80:                        # Preds ..B1.79                 # Infreq
        movq      %rsi, -384(%rbp)                              #
                                # LOE r12 r13 r14 cl
..B1.82:                        # Preds ..B1.76 ..B1.80         # Infreq
        movl      -432(%rbp), %r9d                              #107.1
        movl      %r9d, %edx                                    #108.21
        negl      %edx                                          #108.21
        addl      $8, %edx                                      #108.21
        lea       1(%r9), %esi                                  #107.1
        andl      $15, %edx                                     #108.21
        lea       2(%r9), %edi                                  #107.1
        vmovd     %r9d, %xmm1                                   #107.1
        lea       3(%r9), %r8d                                  #107.1
        negl      %edx                                          #108.21
        lea       (%r13,%r9,4), %r10                            #109.9
        vmovd     %esi, %xmm2                                   #107.1
        addl      $3000, %edx                                   #108.21
        vmovd     %edi, %xmm3                                   #107.1
        movl      %edx, %eax                                    #108.21
        testq     $15, %r10                                     #108.21
        vmovd     %r8d, %xmm4                                   #107.1
        vpunpcklqdq %xmm2, %xmm1, %xmm5                         #107.1
        vpunpcklqdq %xmm4, %xmm3, %xmm6                         #107.1
        vmovdqa   .L_2il0floatpacket.13(%rip), %xmm0            #111.15
        vshufps   $136, %xmm6, %xmm5, %xmm1                     #107.1
        je        ..B1.86       # Prob 60%                      #108.21
                                # LOE rax r12 r13 r14 edx cl xmm0 xmm1
..B1.83:                        # Preds ..B1.82                 # Infreq
        vmovdqa   -368(%rbp), %xmm4                             #
        movq      -384(%rbp), %rsi                              #
        .align    16,0x90
                                # LOE rax rsi r12 r13 r14 edx cl xmm0 xmm1 xmm4
..B1.84:                        # Preds ..B1.84 ..B1.83         # Infreq
        vmovdqu   %xmm1, (%r13,%rsi,4)                          #109.9
        vpaddd    %xmm4, %xmm1, %xmm1                           #107.1
        vpaddd    %xmm4, %xmm1, %xmm2                           #107.1
        vpaddd    %xmm4, %xmm2, %xmm3                           #107.1
        vmovdqa   %xmm0, (%r12,%rsi,4)                          #111.2
        vmovdqu   %xmm1, 16(%r13,%rsi,4)                        #109.9
        vmovdqu   %xmm2, 32(%r13,%rsi,4)                        #109.9
        vmovdqu   %xmm3, 48(%r13,%rsi,4)                        #109.9
        vmovdqa   %xmm0, 16(%r12,%rsi,4)                        #111.2
        vpaddd    %xmm4, %xmm3, %xmm1                           #107.1
        vmovdqa   %xmm0, 32(%r12,%rsi,4)                        #111.2
        vmovdqa   %xmm0, 48(%r12,%rsi,4)                        #111.2
        addq      $16, %rsi                                     #108.21
        cmpq      %rax, %rsi                                    #108.21
        jb        ..B1.84       # Prob 81%                      #108.21
        jmp       ..B1.89       # Prob 100%                     #108.21
                                # LOE rax rsi r12 r13 r14 edx cl xmm0 xmm1 xmm4
..B1.86:                        # Preds ..B1.82                 # Infreq
        vmovdqa   -368(%rbp), %xmm4                             #
        movq      -384(%rbp), %rsi                              #
        .align    16,0x90
                                # LOE rax rsi r12 r13 r14 edx cl xmm0 xmm1 xmm4
..B1.87:                        # Preds ..B1.87 ..B1.86         # Infreq
        vmovdqa   %xmm1, (%r13,%rsi,4)                          #109.9
        vpaddd    %xmm4, %xmm1, %xmm1                           #107.1
        vpaddd    %xmm4, %xmm1, %xmm2                           #107.1
        vpaddd    %xmm4, %xmm2, %xmm3                           #107.1
        vmovdqa   %xmm0, (%r12,%rsi,4)                          #111.2
        vmovdqa   %xmm1, 16(%r13,%rsi,4)                        #109.9
        vpaddd    %xmm4, %xmm3, %xmm1                           #107.1
        vmovdqa   %xmm0, 16(%r12,%rsi,4)                        #111.2
        vmovdqa   %xmm2, 32(%r13,%rsi,4)                        #109.9
        vmovdqa   %xmm0, 32(%r12,%rsi,4)                        #111.2
        vmovdqa   %xmm3, 48(%r13,%rsi,4)                        #109.9
        vmovdqa   %xmm0, 48(%r12,%rsi,4)                        #111.2
        addq      $16, %rsi                                     #108.21
        cmpq      %rax, %rsi                                    #108.21
        jb        ..B1.87       # Prob 81%                      #108.21
                                # LOE rax rsi r12 r13 r14 edx cl xmm0 xmm1 xmm4
..B1.89:                        # Preds ..B1.87 ..B1.84 ..B1.146 # Infreq
        lea       1(%rdx), %esi                                 #108.21
        cmpl      $3000, %esi                                   #108.21
        ja        ..B1.100      # Prob 50%                      #108.21
                                # LOE r12 r13 r14 edx cl
..B1.90:                        # Preds ..B1.89                 # Infreq
        movl      %edx, %eax                                    #108.21
        negl      %eax                                          #108.21
        addl      $3000, %eax                                   #108.21
        cmpb      $1, %cl                                       #108.21
        jne       ..B1.92       # Prob 50%                      #108.21
                                # LOE r12 r13 r14 eax edx
..B1.91:                        # Preds ..B1.92 ..B1.90         # Infreq
        xorl      %esi, %esi                                    #108.21
        jmp       ..B1.96       # Prob 100%                     #108.21
                                # LOE r12 r13 r14 eax edx esi
..B1.92:                        # Preds ..B1.90                 # Infreq
        cmpl      $4, %eax                                      #108.21
        jb        ..B1.91       # Prob 10%                      #108.21
                                # LOE r12 r13 r14 eax edx
..B1.93:                        # Preds ..B1.92                 # Infreq
        vmovd     %edx, %xmm1                                   #107.1
        lea       1(%rdx), %ecx                                 #107.1
        movl      %eax, %esi                                    #108.21
        lea       2(%rdx), %edi                                 #107.1
        vpshufd   $0, -304(%rbp), %xmm2                         #107.1
        lea       3(%rdx), %r8d                                 #107.1
        vmovdqa   .L_2il0floatpacket.14(%rip), %xmm0            #111.15
        andl      $-4, %esi                                     #108.21
        vmovd     %ecx, %xmm3                                   #107.1
        xorl      %ecx, %ecx                                    #108.21
        vmovd     %edi, %xmm4                                   #107.1
        vmovd     %r8d, %xmm5                                   #107.1
        vpunpcklqdq %xmm3, %xmm1, %xmm6                         #107.1
        vpunpcklqdq %xmm5, %xmm4, %xmm7                         #107.1
        vshufps   $136, %xmm7, %xmm6, %xmm1                     #107.1
                                # LOE r12 r13 r14 eax edx ecx esi xmm0 xmm1 xmm2
..B1.94:                        # Preds ..B1.94 ..B1.93         # Infreq
        lea       (%rdx,%rcx), %edi                             #109.9
        addl      $4, %ecx                                      #108.21
        movslq    %edi, %rdi                                    #109.9
        cmpl      %esi, %ecx                                    #108.21
        vmovdqu   %xmm1, (%r13,%rdi,4)                          #109.9
        vmovdqa   %xmm0, (%r12,%rdi,4)                          #111.2
        vpaddd    %xmm2, %xmm1, %xmm1                           #107.1
        jb        ..B1.94       # Prob 81%                      #108.21
                                # LOE r12 r13 r14 eax edx ecx esi xmm0 xmm1 xmm2
..B1.96:                        # Preds ..B1.94 ..B1.91         # Infreq
        addl      %esi, %edx                                    #108.21
        cmpl      %eax, %esi                                    #108.21
        jae       ..B1.100      # Prob 0%                       #108.21
                                # LOE r12 r13 r14 eax edx esi
..B1.98:                        # Preds ..B1.96 ..B1.98         # Infreq
        movslq    %edx, %rdx                                    #109.9
        incl      %esi                                          #108.21
        movl      %edx, (%r13,%rdx,4)                           #109.9
        movl      $1, (%r12,%rdx,4)                             #111.2
        incl      %edx                                          #108.21
        cmpl      %eax, %esi                                    #108.21
        jb        ..B1.98       # Prob 81%                      #108.21
                                # LOE r12 r13 r14 eax edx esi
..B1.100:                       # Preds ..B1.98 ..B1.89 ..B1.96 # Infreq
        movq      -424(%rbp), %r15                              #114.23
        xorl      %eax, %eax                                    #118.21
        vmovaps   .L_2il0floatpacket.11(%rip), %xmm3            #118.21
                                # LOE rax r12 r13 r14 r15 xmm3
..B1.101:                       # Preds ..B1.101 ..B1.100       # Infreq
        movslq    (%r13,%rax,4), %rcx                           #119.22
        movslq    4(%r13,%rax,4), %rsi                          #119.22
        movslq    8(%r13,%rax,4), %rdi                          #119.22
        movslq    12(%r13,%rax,4), %r8                          #119.22
        vmovd     (%r12,%rcx,4), %xmm4                          #119.22
        vmovd     (%r12,%rsi,4), %xmm5                          #119.22
        vmovd     (%r12,%rdi,4), %xmm6                          #119.22
        vmovd     (%r12,%r8,4), %xmm7                           #119.22
        vpunpcklqdq %xmm5, %xmm4, %xmm8                         #119.22
        vpunpcklqdq %xmm7, %xmm6, %xmm9                         #119.22
        vshufps   $136, %xmm9, %xmm8, %xmm10                    #119.22
        vpunpckhqdq %xmm10, %xmm10, %xmm11                      #119.9
        vmovd     %xmm10, %r10                                  #119.9
        vmovd     %xmm11, %rcx                                  #119.9
        vpunpckhqdq %xmm3, %xmm3, %xmm0                         #119.9
        vpshuflw  $238, %xmm3, %xmm2                            #119.9
        movslq    %r10d, %r9                                    #119.9
        sarq      $32, %r10                                     #119.9
        movslq    %ecx, %r11                                    #119.9
        sarq      $32, %rcx                                     #119.9
        vpshuflw  $238, %xmm0, %xmm1                            #119.9
        vmovd     %xmm3, (%r14,%r9,4)                           #119.9
        vmovd     %xmm2, (%r14,%r10,4)                          #119.9
        vmovd     %xmm0, (%r14,%r11,4)                          #119.9
        vmovd     %xmm1, (%r14,%rcx,4)                          #119.9
        movslq    16(%r13,%rax,4), %rcx                         #119.22
        vmovd     (%r12,%rcx,4), %xmm12                         #119.22
        movslq    20(%r13,%rax,4), %rcx                         #119.22
        vmovd     (%r12,%rcx,4), %xmm13                         #119.22
        movslq    24(%r13,%rax,4), %rcx                         #119.22
        vpunpcklqdq %xmm13, %xmm12, %xmm4                       #119.22
        vmovd     (%r12,%rcx,4), %xmm14                         #119.22
        movslq    28(%r13,%rax,4), %rcx                         #119.22
        vmovd     (%r12,%rcx,4), %xmm15                         #119.22
        vpunpcklqdq %xmm15, %xmm14, %xmm5                       #119.22
        vshufps   $136, %xmm5, %xmm4, %xmm6                     #119.22
        vmovd     %xmm6, %rsi                                   #119.9
        vpunpckhqdq %xmm6, %xmm6, %xmm7                         #119.9
        movslq    %esi, %rcx                                    #119.9
        sarq      $32, %rsi                                     #119.9
        vmovd     %xmm3, (%r14,%rcx,4)                          #119.9
        vmovd     %xmm2, (%r14,%rsi,4)                          #119.9
        vmovd     %xmm7, %rsi                                   #119.9
        movslq    %esi, %rcx                                    #119.9
        sarq      $32, %rsi                                     #119.9
        vmovd     %xmm0, (%r14,%rcx,4)                          #119.9
        movslq    32(%r13,%rax,4), %rcx                         #119.22
        vmovd     %xmm1, (%r14,%rsi,4)                          #119.9
        vmovd     (%r12,%rcx,4), %xmm8                          #119.22
        movslq    36(%r13,%rax,4), %rcx                         #119.22
        vmovd     (%r12,%rcx,4), %xmm9                          #119.22
        movslq    40(%r13,%rax,4), %rcx                         #119.22
        vpunpcklqdq %xmm9, %xmm8, %xmm12                        #119.22
        vmovd     (%r12,%rcx,4), %xmm10                         #119.22
        movslq    44(%r13,%rax,4), %rcx                         #119.22
        vmovd     (%r12,%rcx,4), %xmm11                         #119.22
        vpunpcklqdq %xmm11, %xmm10, %xmm13                      #119.22
        vshufps   $136, %xmm13, %xmm12, %xmm14                  #119.22
        vmovd     %xmm14, %rsi                                  #119.9
        vpunpckhqdq %xmm14, %xmm14, %xmm15                      #119.9
        movslq    %esi, %rcx                                    #119.9
        sarq      $32, %rsi                                     #119.9
        vmovd     %xmm3, (%r14,%rcx,4)                          #119.9
        vmovd     %xmm2, (%r14,%rsi,4)                          #119.9
        vmovd     %xmm15, %rsi                                  #119.9
        movslq    %esi, %rcx                                    #119.9
        sarq      $32, %rsi                                     #119.9
        vmovd     %xmm0, (%r14,%rcx,4)                          #119.9
        movslq    48(%r13,%rax,4), %rcx                         #119.22
        vmovd     %xmm1, (%r14,%rsi,4)                          #119.9
        vmovd     (%r12,%rcx,4), %xmm4                          #119.22
        movslq    52(%r13,%rax,4), %rcx                         #119.22
        vmovd     (%r12,%rcx,4), %xmm5                          #119.22
        movslq    56(%r13,%rax,4), %rcx                         #119.22
        vpunpcklqdq %xmm5, %xmm4, %xmm8                         #119.22
        vmovd     (%r12,%rcx,4), %xmm6                          #119.22
        .byte     144                                           #119.22
        movslq    60(%r13,%rax,4), %rcx                         #119.22
        addq      $16, %rax                                     #118.21
        vmovd     (%r12,%rcx,4), %xmm7                          #119.22
        vpunpcklqdq %xmm7, %xmm6, %xmm9                         #119.22
        vshufps   $136, %xmm9, %xmm8, %xmm10                    #119.22
        vmovd     %xmm10, %rsi                                  #119.9
        vpunpckhqdq %xmm10, %xmm10, %xmm11                      #119.9
        movslq    %esi, %rcx                                    #119.9
        sarq      $32, %rsi                                     #119.9
        vmovd     %xmm3, (%r14,%rcx,4)                          #119.9
        vmovd     %xmm2, (%r14,%rsi,4)                          #119.9
        vmovd     %xmm11, %rsi                                  #119.9
        movslq    %esi, %rcx                                    #119.9
        sarq      $32, %rsi                                     #119.9
        cmpq      $2992, %rax                                   #118.21
        vmovd     %xmm0, (%r14,%rcx,4)                          #119.9
        vmovd     %xmm1, (%r14,%rsi,4)                          #119.9
        jb        ..B1.101      # Prob 81%                      #118.21
                                # LOE rax r12 r13 r14 r15 xmm3
..B1.102:                       # Preds ..B1.101                # Infreq
        movslq    11968(%r13), %rcx                             #119.27
        movl      $_ZSt4cout, %edi                              #121.10
        movslq    11972(%r13), %r9                              #119.27
        movl      $.L_2__STRING.6, %esi                         #121.10
        movslq    11976(%r13), %r11                             #119.27
        movslq    (%r12,%rcx,4), %r8                            #119.22
        movslq    (%r12,%r9,4), %r10                            #119.22
        movslq    (%r12,%r11,4), %rcx                           #119.22
        vmovss    .L_2il0floatpacket.10(%rip), %xmm0            #119.9
        vmovss    %xmm0, (%r14,%r8,4)                           #119.9
        vmovss    %xmm0, (%r14,%r10,4)                          #119.9
        vmovss    %xmm0, (%r14,%rcx,4)                          #119.9
        movslq    11980(%r13), %rcx                             #119.27
        movslq    (%r12,%rcx,4), %rcx                           #119.22
        vmovss    %xmm0, (%r14,%rcx,4)                          #119.9
        movslq    11984(%r13), %rcx                             #119.27
        movslq    (%r12,%rcx,4), %rcx                           #119.22
        vmovss    %xmm0, (%r14,%rcx,4)                          #119.9
        movslq    11988(%r13), %rcx                             #119.27
        movslq    (%r12,%rcx,4), %rcx                           #119.22
        vmovss    %xmm0, (%r14,%rcx,4)                          #119.9
        movslq    11992(%r13), %rcx                             #119.27
        movslq    (%r12,%rcx,4), %rcx                           #119.22
        vmovss    %xmm0, (%r14,%rcx,4)                          #119.9
        movslq    11996(%r13), %rcx                             #119.27
        movslq    (%r12,%rcx,4), %rcx                           #119.22
        vmovss    %xmm0, (%r14,%rcx,4)                          #119.9
..___tag_value_main.50:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #121.10
..___tag_value_main.51:
                                # LOE r12 r13 r14 r15
..B1.104:                       # Preds ..B1.102                # Infreq
        movl      $_ZSt4cout, %edi                              #125.10
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #125.10
..___tag_value_main.52:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #125.10
..___tag_value_main.53:
                                # LOE rax r12 r13 r14 r15
..B1.106:                       # Preds ..B1.104                # Infreq
        movq      %rax, %rdi                                    #125.18
        movl      $.L_2__STRING.7, %esi                         #125.18
..___tag_value_main.54:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #125.18
..___tag_value_main.55:
                                # LOE r12 r13 r14 r15
..B1.108:                       # Preds ..B1.106                # Infreq
        movslq    (%r12), %rcx                                  #129.18
        movl      $_ZSt4cout, %edi                              #130.10
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #130.10
        movl      $0, (%r14,%rcx,4)                             #129.5
..___tag_value_main.56:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #130.10
..___tag_value_main.57:
                                # LOE rax r12 r13 r14 r15
..B1.110:                       # Preds ..B1.108                # Infreq
        movq      %rax, %rdi                                    #130.18
        movl      $.L_2__STRING.8, %esi                         #130.18
..___tag_value_main.58:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #130.18
..___tag_value_main.59:
                                # LOE r12 r13 r14 r15
..B1.112:                       # Preds ..B1.110                # Infreq
        movl      $_ZSt4cout, %edi                              #134.10
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #134.10
..___tag_value_main.60:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #134.10
..___tag_value_main.61:
                                # LOE r12 r13 r14 r15
..B1.114:                       # Preds ..B1.112                # Infreq
        movl      $_ZSt4cout, %edi                              #163.9
        movl      $.L_2__STRING.9, %esi                         #163.9
..___tag_value_main.62:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #163.9
..___tag_value_main.63:
                                # LOE rax r12 r13 r14 r15
..B1.116:                       # Preds ..B1.114                # Infreq
        movl      $120, %ecx                                    #161.27
        movq      %rax, %rdi                                    #163.30
        bsf       %ecx, %esi                                    #161.27
..___tag_value_main.64:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, int)
        call      _ZNSolsEi                                     #163.30
..___tag_value_main.65:
                                # LOE rax r12 r13 r14 r15
..B1.118:                       # Preds ..B1.116                # Infreq
        movq      %rax, %rdi                                    #163.49
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #163.49
..___tag_value_main.66:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #163.49
..___tag_value_main.67:
                                # LOE r12 r13 r14 r15
..B1.120:                       # Preds ..B1.118                # Infreq
        movl      $1, %edi                                      #217.2
        lea       -384(%rbp), %rsi                              #217.2
#       clock_gettime(clockid_t, timespec *)
        call      clock_gettime                                 #217.2
                                # LOE r12 r13 r14 r15
..B1.121:                       # Preds ..B1.120                # Infreq
        xorl      %eax, %eax                                    #219.2
        xorl      %edx, %edx                                    #219.2
        movq      %rax, %rcx                                    #219.2
        movq      %r12, %rax                                    #219.2
        movq      %rcx, %r12                                    #219.2
        movl      %edx, %ecx                                    #219.2
        vbroadcastss .L_2il0floatpacket.16(%rip), %zmm5         #219.2
        movq      %r13, %rdx                                    #219.2
        vpternlogd $255, %zmm7, %zmm7, %zmm7                    #219.2
        vmovaps   .L_2il0floatpacket.15(%rip), %zmm6            #219.2
        vmovaps   -240(%rbp), %zmm9                             #219.2
        movl      -272(%rbp), %edi                              #219.2
        movl      %ecx, %r13d                                   #219.2
        vpxord    %zmm8, %zmm8, %zmm8                           #219.2
        vpxord    %zmm10, %zmm10, %zmm10                        #219.2
                                # LOE rax rdx r12 r14 r15 edi r13d zmm5 zmm6 zmm7 zmm8 zmm9 zmm10
..B1.122:                       # Preds ..B1.126 ..B1.121       # Infreq
        vmovups   (%rdx,%r12,4), %zmm0                          #222.65
        vpcmpd    $4, %zmm0, %zmm10, %k4                        #224.50
        vmovaps   %zmm10, %zmm3                                 #226.33
        kmovw     %k4, %k1                                      #226.33
        vpgatherdd (%rax,%zmm0,4), %zmm3{%k1}                   #226.33
        vmovaps   %zmm3, -176(%rbp)                             #226.31
        vmovaps   %zmm8, %zmm4                                  #228.39
        kmovw     %k4, %k2                                      #228.39
        vgatherdps (%r14,%zmm3,4), %zmm4{%k2}                   #228.39
        vmovaps   %zmm6, %zmm1                                  #233.38
        vpconflictd %zmm3, %zmm1{%k4}                           #233.38
        vcmpps    $0, %zmm4, %zmm9, %k3{%k4}                    #231.61
        vptestnmd %zmm7, %zmm1, %k0                             #235.52
        kandw     %k4, %k0, %k6                                 #235.40
        kandw     %k3, %k6, %k5                                 #240.66
        kandnw    %k4, %k6, %k7                                 #258.48
        kmovw     %k5, %ecx                                     #240.66
        vmovaps   %zmm10, %zmm2                                 #240.33
        movslq    %edi, %rdi                                    #245.38
        vpcompressd %zmm3, %zmm2{%k5}                           #240.33
        popcnt    %ecx, %esi                                    #242.34
        vmovaps   %zmm8, %zmm4{%k3}                             #250.32
        vmovups   %zmm2, (%r15,%rdi,4)                          #245.38
        addl      %esi, %edi                                    #247.17
        vaddps    %zmm5, %zmm4, %zmm4{%k6}                      #252.32
        kmovw     %k7, %esi                                     #258.48
        vscatterdps %zmm4, (%r14,%zmm3,4){%k6}                  #254.17
        popcnt    %esi, %ecx                                    #259.35
        testl     %ecx, %ecx                                    #260.34
        jle       ..B1.126      # Prob 2%                       #260.34
                                # LOE rax rdx r12 r14 r15 ecx esi edi r13d zmm5 zmm6 zmm7 zmm8 zmm9 zmm10
..B1.123:                       # Preds ..B1.122                # Infreq
        vmovaps   -176(%rbp), %zmm1                             #262.82
        movq      %rax, -368(%rbp)                              #262.82
        movq      %rdx, -432(%rbp)                              #262.82
        movl      %edi, -272(%rbp)                              #262.82
                                # LOE r12 r14 r15 ecx esi r13d zmm1
..B1.124:                       # Preds ..B1.169 ..B1.123       # Infreq
        vxorpd    %xmm0, %xmm0, %xmm0                           #263.43
        vcvtsi2sd %ecx, %xmm0, %xmm0                            #263.43
        kmovw     %esi, %k1                                     #262.29
        vmovaps   %zmm1, %zmm2                                  #262.29
        vpxord    %zmm1, %zmm1, %zmm1                           #262.29
        vpcompressd %zmm2, %zmm1{%k1}                           #262.29
        vmovaps   %zmm1, -176(%rbp)                             #262.21
        vmovaps   %zmm1, -112(%rbp)                             #263.43
        call      exp2                                          #263.43
                                # LOE r12 r14 r15 r13d xmm0
..B1.169:                       # Preds ..B1.124                # Infreq
        vmovaps   -112(%rbp), %zmm1                             #
        vxorps    %xmm3, %xmm3, %xmm3                           #267.82
        vsubsd    .L_2il0floatpacket.17(%rip), %xmm0, %xmm2     #263.64
        vcvttsd2si %xmm2, %ecx                                  #263.64
        kmovw     %ecx, %k1                                     #266.55
        vpcmpeqd  -176(%rbp){1to16}, %zmm1, %k0{%k1}            #266.55
        kmovw     %k0, %esi                                     #266.55
        kandnw    %k1, %k0, %k2                                 #268.43
        popcnt    %esi, %edi                                    #267.82
        vcvtsi2ss %edi, %xmm3, %xmm3                            #267.82
        kmovw     %k2, %esi                                     #268.43
        movslq    -176(%rbp), %r8                               #267.21
        popcnt    %esi, %ecx                                    #269.34
        testl     %ecx, %ecx                                    #260.34
        vaddss    (%r14,%r8,4), %xmm3, %xmm4                    #267.21
        vmovss    %xmm4, (%r14,%r8,4)                           #267.21
        jg        ..B1.124      # Prob 82%                      #260.34
                                # LOE r12 r14 r15 ecx esi r13d zmm1
..B1.125:                       # Preds ..B1.169                # Infreq
        vbroadcastss .L_2il0floatpacket.16(%rip), %zmm5         #
        vpternlogd $255, %zmm7, %zmm7, %zmm7                    #
        vmovaps   .L_2il0floatpacket.15(%rip), %zmm6            #
        vmovaps   -240(%rbp), %zmm9                             #
        movq      -368(%rbp), %rax                              #
        movq      -432(%rbp), %rdx                              #
        movl      -272(%rbp), %edi                              #
        vpxord    %zmm8, %zmm8, %zmm8                           #
        vpxord    %zmm10, %zmm10, %zmm10                        #
                                # LOE rax rdx r12 r14 r15 edi r13d zmm5 zmm6 zmm7 zmm8 zmm9 zmm10
..B1.126:                       # Preds ..B1.122 ..B1.125       # Infreq
        incl      %r13d                                         #219.2
        addq      $16, %r12                                     #219.2
        cmpl      $187, %r13d                                   #219.2
        jb        ..B1.122      # Prob 81%                      #219.2
                                # LOE rax rdx r12 r14 r15 edi r13d zmm5 zmm6 zmm7 zmm8 zmm9 zmm10
..B1.127:                       # Preds ..B1.126                # Infreq
        movl      $1, %edi                                      #273.2
        lea       -368(%rbp), %rsi                              #273.2
#       clock_gettime(clockid_t, timespec *)
        call      clock_gettime                                 #273.2
                                # LOE
..B1.128:                       # Preds ..B1.127                # Infreq
        vxorpd    %xmm0, %xmm0, %xmm0                           #274.64
        vxorpd    %xmm5, %xmm5, %xmm5                           #274.122
        vcvtsi2sdq -360(%rbp), %xmm0, %xmm0                     #274.64
        vcvtsi2sdq -376(%rbp), %xmm5, %xmm5                     #274.122
        imulq     $1000, -368(%rbp), %rax                       #274.56
        imulq     $1000, -384(%rbp), %rdx                       #274.114
        vmovsd    .L_2il0floatpacket.12(%rip), %xmm6            #274.83
        vxorpd    %xmm1, %xmm1, %xmm1                           #274.56
        vdivsd    %xmm6, %xmm0, %xmm2                           #274.83
        vdivsd    %xmm6, %xmm5, %xmm8                           #274.143
        vcvtsi2sdq %rax, %xmm1, %xmm1                           #274.56
        vxorpd    %xmm4, %xmm4, %xmm4                           #274.114
        movl      $_ZSt4cout, %edi                              #275.13
        vcvtsi2sdq %rdx, %xmm4, %xmm4                           #274.114
        vaddsd    %xmm2, %xmm1, %xmm3                           #274.83
        movl      $.L_2__STRING.10, %esi                        #275.13
        vsubsd    %xmm4, %xmm3, %xmm7                           #274.143
        vsubsd    %xmm8, %xmm7, %xmm9                           #274.143
        vmovsd    %xmm9, -432(%rbp)                             #274.143
..___tag_value_main.68:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #275.13
..___tag_value_main.69:
                                # LOE rax
..B1.130:                       # Preds ..B1.128                # Infreq
        vmovsd    -432(%rbp), %xmm0                             #275.28
        movq      %rax, %rdi                                    #275.28
..___tag_value_main.70:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #275.28
..___tag_value_main.71:
                                # LOE rax
..B1.132:                       # Preds ..B1.130                # Infreq
        movq      %rax, %rdi                                    #275.47
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #275.47
..___tag_value_main.72:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #275.47
..___tag_value_main.73:
                                # LOE
..B1.134:                       # Preds ..B1.132                # Infreq
        movl      $_ZSt4cout, %edi                              #280.6
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #280.6
..___tag_value_main.74:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #280.6
..___tag_value_main.75:
                                # LOE rax
..B1.136:                       # Preds ..B1.134                # Infreq
        movq      %rax, %rdi                                    #280.12
        movl      $.L_2__STRING.7, %esi                         #280.12
..___tag_value_main.76:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #280.12
..___tag_value_main.77:
                                # LOE
..B1.138:                       # Preds ..B1.136                # Infreq
        movl      $_ZSt4cout, %edi                              #284.6
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #284.6
..___tag_value_main.78:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #284.6
..___tag_value_main.79:
                                # LOE
..B1.140:                       # Preds ..B1.138                # Infreq
        movq      -424(%rbp), %rdi                              #285.5
        testq     %rdi, %rdi                                    #285.5
        je        ..B1.142      # Prob 72%                      #285.5
                                # LOE rdi
..B1.141:                       # Preds ..B1.140                # Infreq
#       operator delete(void *)
        call      _ZdlPv                                        #285.5
                                # LOE
..B1.142:                       # Preds ..B1.140 ..B1.141       # Infreq
        movl      $160, %eax                                    #285.5
        movq      -280(%rbp), %rdx                              #285.5
        movq      $192, %rax                                    #285.5
        addq      %rax, %rsp                                    #285.5
                                # LOE
..B1.143:                       # Preds ..B1.142                # Infreq
        movl      $160, %eax                                    #285.5
        movq      -288(%rbp), %rdx                              #285.5
        movq      $192, %rax                                    #285.5
        addq      %rax, %rsp                                    #285.5
                                # LOE
..B1.144:                       # Preds ..B1.143                # Infreq
        movl      $.2.99_2_kmpc_loc_struct_pack.207, %edi       #285.12
        xorl      %eax, %eax                                    #285.12
..___tag_value_main.80:
        call      __kmpc_end                                    #285.12
..___tag_value_main.81:
                                # LOE
..B1.145:                       # Preds ..B1.144                # Infreq
        xorl      %eax, %eax                                    #285.12
        lea       -32(%rbp), %rsp                               #285.12
	.cfi_restore 15
        popq      %r15                                          #285.12
	.cfi_restore 14
        popq      %r14                                          #285.12
	.cfi_restore 13
        popq      %r13                                          #285.12
	.cfi_restore 12
        popq      %r12                                          #285.12
        popq      %rbp                                          #285.12
	.cfi_restore 6
        movq      %rbx, %rsp                                    #285.12
        popq      %rbx                                          #285.12
	.cfi_def_cfa 7, 8
	.cfi_restore 3
        ret                                                     #285.12
	.cfi_def_cfa 3, 16
	.cfi_offset 3, -16
	.cfi_escape 0x10, 0x06, 0x02, 0x76, 0x00
	.cfi_escape 0x10, 0x0c, 0x02, 0x76, 0x78
	.cfi_escape 0x10, 0x0d, 0x02, 0x76, 0x70
	.cfi_escape 0x10, 0x0e, 0x02, 0x76, 0x68
	.cfi_escape 0x10, 0x0f, 0x02, 0x76, 0x60
                                # LOE
..B1.146:                       # Preds ..B1.77                 # Infreq
        movb      $1, %cl                                       #108.21
        xorl      %edx, %edx                                    #108.21
        jmp       ..B1.89       # Prob 100%                     #108.21
                                # LOE r12 r13 r14 edx cl
..___tag_value_main.3:
..B1.148:                       # Preds ..B1.138 ..B1.136 ..B1.134 ..B1.132 ..B1.130
                                #       ..B1.128 ..B1.118 ..B1.116 ..B1.114 ..B1.112
                                #       ..B1.110 ..B1.108 ..B1.106 ..B1.104 ..B1.102
                                #       ..B1.74 ..B1.72 ..B1.70 ..B1.61 ..B1.59
                                #       ..B1.57                 # Infreq
        movq      %rax, -432(%rbp)                              #43.31
                                # LOE
..B1.149:                       # Preds ..B1.148                # Infreq
        lea       -424(%rbp), %rdi                              #43.31
#       std::vector<int32_t, std::allocator<int32_t>>::~vector(std::vector<int32_t, std::allocator<int32_t>> *)
        call      _ZNSt6vectorIiSaIiEED1Ev                      #43.31
                                # LOE
..B1.151:                       # Preds ..B1.155 ..B1.149 ..B1.157 # Infreq
        movl      $160, %eax                                    #20.9
        movq      -280(%rbp), %rdx                              #20.9
        movq      $192, %rax                                    #20.9
        addq      %rax, %rsp                                    #20.9
                                # LOE
..B1.152:                       # Preds ..B1.151                # Infreq
        movl      $160, %eax                                    #19.9
        movq      -288(%rbp), %rdx                              #19.9
        movq      $192, %rax                                    #19.9
        addq      %rax, %rsp                                    #19.9
                                # LOE
..B1.153:                       # Preds ..B1.152                # Infreq
        movq      -432(%rbp), %rdi                              #19.9
..___tag_value_main.96:
        call      _Unwind_Resume                                #19.9
..___tag_value_main.97:
                                # LOE
..B1.154:                       # Preds ..B1.36                 # Infreq
        xorl      %esi, %esi                                    #59.21
        jmp       ..B1.47       # Prob 100%                     #59.21
                                # LOE r12 r13 r14 r15 esi
..___tag_value_main.2:
..B1.155:                       # Preds ..B1.26                 # Infreq
        movq      %rax, -432(%rbp)                              #43.31
        jmp       ..B1.151      # Prob 100%                     #43.31
                                # LOE
..___tag_value_main.1:
..B1.157:                       # Preds ..B1.24 ..B1.22 ..B1.20 ..B1.18 ..B1.16
                                #       ..B1.14 ..B1.12 ..B1.10 ..B1.7 ..B1.5
                                #                               # Infreq
        movq      %rax, -432(%rbp)                              #20.9
        jmp       ..B1.151      # Prob 100%                     #20.9
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	main,@function
	.size	main,.-main
	.section .gcc_except_table, "a"
	.align 4
main$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value_main.102 - ..___tag_value_main.101
..___tag_value_main.101:
	.byte	1
	.uleb128	..___tag_value_main.100 - ..___tag_value_main.99
..___tag_value_main.99:
	.uleb128	..___tag_value_main.14 - ..___tag_value_main.4
	.uleb128	..___tag_value_main.15 - ..___tag_value_main.14
	.byte	0
	.byte	0
	.uleb128	..___tag_value_main.16 - ..___tag_value_main.4
	.uleb128	..___tag_value_main.35 - ..___tag_value_main.16
	.uleb128	..___tag_value_main.1 - ..___tag_value_main.4
	.byte	0
	.uleb128	..___tag_value_main.36 - ..___tag_value_main.4
	.uleb128	..___tag_value_main.37 - ..___tag_value_main.36
	.uleb128	..___tag_value_main.2 - ..___tag_value_main.4
	.byte	0
	.uleb128	..___tag_value_main.38 - ..___tag_value_main.4
	.uleb128	..___tag_value_main.79 - ..___tag_value_main.38
	.uleb128	..___tag_value_main.3 - ..___tag_value_main.4
	.byte	0
	.uleb128	..___tag_value_main.80 - ..___tag_value_main.4
	.uleb128	..___tag_value_main.97 - ..___tag_value_main.80
	.byte	0
	.byte	0
..___tag_value_main.100:
	.byte	127
	.byte	0
	.byte	0
	.byte	125
	.long	0x00000000,0x00000000
..___tag_value_main.102:
	.byte	0
	.data
	.align 4
	.align 4
.2.99_2_kmpc_loc_struct_pack.116:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.99_2__kmpc_loc_pack.115
	.align 4
.2.99_2__kmpc_loc_pack.115:
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
	.byte	52
	.byte	59
	.byte	49
	.byte	52
	.byte	59
	.byte	59
	.space 3, 0x00 	# pad
	.align 4
.2.99_2_kmpc_loc_struct_pack.207:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.99_2__kmpc_loc_pack.206
	.align 4
.2.99_2__kmpc_loc_pack.206:
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
	.byte	50
	.byte	56
	.byte	53
	.byte	59
	.byte	50
	.byte	56
	.byte	53
	.byte	59
	.byte	59
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
..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.103:
..L104:
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
        jne       ..L106        # Prob 60%                      #259.16
        movq      %rdx, %rax                                    #259.16
        addq      %rcx, %rdx                                    #259.16
        call      __intel_sse2_strlen                           #259.16
..L106:                                                         #
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
	.section .text._ZNSt6vectorIiSaIiEED1Ev, "xaG",@progbits,_ZNSt6vectorIiSaIiEED1Ev,comdat
..TXTST2:
# -- Begin  _ZNSt6vectorIiSaIiEED1Ev
	.section .text._ZNSt6vectorIiSaIiEED1Ev, "xaG",@progbits,_ZNSt6vectorIiSaIiEED1Ev,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt6vectorIiSaIiEED1Ev
# --- std::vector<int32_t, std::allocator<int32_t>>::~vector(std::vector<int32_t, std::allocator<int32_t>> *)
_ZNSt6vectorIiSaIiEED1Ev:
# parameter 1: %rdi
..B3.1:                         # Preds ..B3.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _ZNSt6vectorIiSaIiEED1Ev$$LSDA
..___tag_value__ZNSt6vectorIiSaIiEED1Ev.109:
..L110:
                                                        #415.7
        movq      (%rdi), %rdi                                  #416.33
        testq     %rdi, %rdi                                    #416.33
        je        ..B3.3        # Prob 72%                      #416.33
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B3.2:                         # Preds ..B3.1
#       operator delete(void *)
        jmp       _ZdlPv                                        #416.33
                                # LOE
..B3.3:                         # Preds ..B3.1
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
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEED1Ev.115 - ..___tag_value__ZNSt6vectorIiSaIiEED1Ev.114
..___tag_value__ZNSt6vectorIiSaIiEED1Ev.114:
	.byte	1
	.uleb128	..___tag_value__ZNSt6vectorIiSaIiEED1Ev.113 - ..___tag_value__ZNSt6vectorIiSaIiEED1Ev.112
..___tag_value__ZNSt6vectorIiSaIiEED1Ev.112:
..___tag_value__ZNSt6vectorIiSaIiEED1Ev.113:
	.byte	127
	.byte	0
	.byte	0
	.byte	125
	.long	0x00000000,0x00000000
..___tag_value__ZNSt6vectorIiSaIiEED1Ev.115:
	.byte	0
	.data
# -- End  _ZNSt6vectorIiSaIiEED1Ev
	.section .text._ZNSt12_Vector_baseIiSaIiEED2Ev, "xaG",@progbits,_ZNSt12_Vector_baseIiSaIiEED2Ev,comdat
..TXTST3:
# -- Begin  _ZNSt12_Vector_baseIiSaIiEED2Ev
	.section .text._ZNSt12_Vector_baseIiSaIiEED2Ev, "xaG",@progbits,_ZNSt12_Vector_baseIiSaIiEED2Ev,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt12_Vector_baseIiSaIiEED2Ev
# --- std::_Vector_base<int32_t, std::allocator<int32_t>>::~_Vector_base(std::_Vector_base<int32_t, std::allocator<int32_t>> *const)
_ZNSt12_Vector_baseIiSaIiEED2Ev:
# parameter 1: %rdi
..B4.1:                         # Preds ..B4.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt12_Vector_baseIiSaIiEED2Ev.116:
..L117:
                                                        #159.7
        movq      (%rdi), %rdi                                  #159.7
        testq     %rdi, %rdi                                    #159.7
        je        ..B4.3        # Prob 72%                      #159.7
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B4.2:                         # Preds ..B4.1
#       operator delete(void *)
        jmp       _ZdlPv                                        #159.7
                                # LOE
..B4.3:                         # Preds ..B4.1
        ret                                                     #159.7
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt12_Vector_baseIiSaIiEED2Ev,@function
	.size	_ZNSt12_Vector_baseIiSaIiEED2Ev,.-_ZNSt12_Vector_baseIiSaIiEED2Ev
	.data
# -- End  _ZNSt12_Vector_baseIiSaIiEED2Ev
	.text
# -- Begin  __sti__$E
	.text
# mark_begin;
       .align    16,0x90
# --- __sti__$E()
__sti__$E:
..B5.1:                         # Preds ..B5.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value___sti__$E.119:
..L120:
                                                        #
        pushq     %rsi                                          #
	.cfi_def_cfa_offset 16
        movl      $_ZN39_INTERNAL_17_TestIntrinsic_cpp_f18c833eSt8__ioinitE, %edi #74.25
..___tag_value___sti__$E.122:
#       std::ios_base::Init::Init(std::ios_base::Init *)
        call      _ZNSt8ios_base4InitC1Ev                       #74.25
..___tag_value___sti__$E.123:
                                # LOE rbx rbp r12 r13 r14 r15
..B5.2:                         # Preds ..B5.1
        movl      $_ZNSt8ios_base4InitD1Ev, %edi                #74.25
        movl      $_ZN39_INTERNAL_17_TestIntrinsic_cpp_f18c833eSt8__ioinitE, %esi #74.25
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
_ZN39_INTERNAL_17_TestIntrinsic_cpp_f18c833eSt8__ioinitE:
	.type	_ZN39_INTERNAL_17_TestIntrinsic_cpp_f18c833eSt8__ioinitE,@object
	.size	_ZN39_INTERNAL_17_TestIntrinsic_cpp_f18c833eSt8__ioinitE,1
	.space 1	# pad
	.section .rodata, "a"
	.align 64
	.align 64
.L_2il0floatpacket.15:
	.long	0x00000001,0x00000001,0x00000001,0x00000001,0x00000001,0x00000001,0x00000001,0x00000001,0x00000001,0x00000001,0x00000001,0x00000001,0x00000001,0x00000001,0x00000001,0x00000001
	.type	.L_2il0floatpacket.15,@object
	.size	.L_2il0floatpacket.15,64
	.align 16
.L_2il0floatpacket.8:
	.long	0x00000000,0x00000001,0x00000002,0x00000003
	.type	.L_2il0floatpacket.8,@object
	.size	.L_2il0floatpacket.8,16
	.align 16
.L_2il0floatpacket.9:
	.long	0x0000000a,0x0000000a,0x0000000a,0x0000000a
	.type	.L_2il0floatpacket.9,@object
	.size	.L_2il0floatpacket.9,16
	.align 16
.L_2il0floatpacket.11:
	.long	0xbf800000,0xbf800000,0xbf800000,0xbf800000
	.type	.L_2il0floatpacket.11,@object
	.size	.L_2il0floatpacket.11,16
	.align 16
.L_2il0floatpacket.13:
	.long	0x00000001,0x00000001,0x00000001,0x00000001
	.type	.L_2il0floatpacket.13,@object
	.size	.L_2il0floatpacket.13,16
	.align 16
.L_2il0floatpacket.14:
	.long	0x00000001,0x00000001,0x00000001,0x00000001
	.type	.L_2il0floatpacket.14,@object
	.size	.L_2il0floatpacket.14,16
	.align 8
.L_2il0floatpacket.12:
	.long	0x00000000,0x412e8480
	.type	.L_2il0floatpacket.12,@object
	.size	.L_2il0floatpacket.12,8
	.align 8
.L_2il0floatpacket.17:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.17,@object
	.size	.L_2il0floatpacket.17,8
	.align 4
.L_2il0floatpacket.10:
	.long	0xbf800000
	.type	.L_2il0floatpacket.10,@object
	.size	.L_2il0floatpacket.10,4
	.align 4
.L_2il0floatpacket.16:
	.long	0x3f800000
	.type	.L_2il0floatpacket.16,@object
	.size	.L_2il0floatpacket.16,4
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.0:
	.word	32
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,2
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	544239472
	.long	1853189987
	.long	2112116
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,12
	.align 4
.L_2__STRING.2:
	.long	1868767264
	.long	1834970477
	.long	980120417
	.word	32
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,14
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.long	1935764768
	.long	979591019
	.word	32
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,10
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.4:
	.long	1936291909
	.long	1735289204
	.long	1768835360
	.long	1767121012
	.long	540697965
	.byte	0
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,21
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.5:
	.long	1952671062
	.long	2053730927
	.long	1226859621
	.long	544500078
	.long	1701669204
	.word	8250
	.byte	0
	.type	.L_2__STRING.5,@object
	.size	.L_2__STRING.5,23
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.6:
	.long	1701274693
	.long	2112115
	.type	.L_2__STRING.6,@object
	.size	.L_2__STRING.6,8
	.align 4
.L_2__STRING.7:
	.long	1835888451
	.long	1953066613
	.long	2112121
	.type	.L_2__STRING.7,@object
	.size	.L_2__STRING.7,12
	.align 4
.L_2__STRING.8:
	.long	1768318561
	.long	2037672302
	.word	8250
	.byte	0
	.type	.L_2__STRING.8,@object
	.size	.L_2__STRING.8,11
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.9:
	.long	1601724781
	.long	1953260900
	.long	1852399457
	.long	980968804
	.word	32
	.type	.L_2__STRING.9,@object
	.size	.L_2__STRING.9,18
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.10:
	.long	1296846934
	.long	1835619360
	.long	2112101
	.type	.L_2__STRING.10,@object
	.size	.L_2__STRING.10,12
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
