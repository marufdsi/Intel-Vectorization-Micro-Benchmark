	.section .text
.LNDBG_TX:
# mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 16.0.0.109 Build 20150815";
# mark_description "";
# mark_description "-S -std=c++11 -qopt-report5 -xCORE-AVX512";
	.file "TestVector.cpp"
	.text
..TXTST0:
.L_2__routine_start_main_0:
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
..___tag_value_main.1:
..L2:
                                                          #18.11
..LN0:
	.file   1 "TestVector.cpp"
	.loc    1  18  is_stmt 1
        pushq     %rbx                                          #18.11
	.cfi_def_cfa_offset 16
..LN1:
        movq      %rsp, %rbx                                    #18.11
	.cfi_def_cfa 3, 16
	.cfi_offset 3, -16
..LN2:
        andq      $-64, %rsp                                    #18.11
..LN3:
        pushq     %rbp                                          #18.11
..LN4:
        pushq     %rbp                                          #18.11
..LN5:
        movq      8(%rbx), %rbp                                 #18.11
..LN6:
        movq      %rbp, 8(%rsp)                                 #18.11
..LN7:
        movq      %rsp, %rbp                                    #18.11
	.cfi_escape 0x10, 0x06, 0x02, 0x76, 0x00
..LN8:
        subq      $48, %rsp                                     #18.11
..LN9:
        movq      $0x64399d9ffe, %rsi                           #18.11
..LN10:
        movl      $3, %edi                                      #18.11
..LN11:
        call      __intel_new_feature_proc_init                 #18.11
..LN12:
                                # LOE r12 r13 r14 r15
..B1.19:                        # Preds ..B1.1
..LN13:
        vstmxcsr  -48(%rbp)                                     #18.11
..LN14:
	.loc    1  4  is_stmt 1
        movl      $88000, %eax                                  #4.12
..LN15:
	.loc    1  18  is_stmt 1
        orl       $32832, -48(%rbp)                             #18.11
..LN16:
        vldmxcsr  -48(%rbp)                                     #18.11
..LN17:
	.loc    1  4  is_stmt 1
        subq      %rax, %rsp                                    #4.12
..LN18:
        movq      %rsp, %rax                                    #4.12
..LN19:
                                # LOE rax r12 r13 r14 r15
..B1.18:                        # Preds ..B1.19
..LN20:
        movq      %rax, %rcx                                    #4.12
..LN21:
                                # LOE rcx r12 r13 r14 r15
..B1.2:                         # Preds ..B1.18
..LN22:
        movl      $88000, %eax                                  #4.18
..LN23:
        subq      %rax, %rsp                                    #4.18
..LN24:
        movq      %rsp, %rax                                    #4.18
..LN25:
                                # LOE rax rcx r12 r13 r14 r15
..B1.3:                         # Preds ..B1.2
..LN26:
	.loc    1  6  is_stmt 1
        vmovups   .L_2il0floatpacket.0(%rip), %zmm0             #6.16
..LN27:
	.loc    1  5  is_stmt 1
        xorl      %esi, %esi                                    #5.5
        .align    16,0x90
..LN28:
                                # LOE rax rcx rsi r12 r13 r14 r15 zmm0
..B1.4:                         # Preds ..B1.4 ..B1.3
..LN29:
	.loc    1  6  is_stmt 1
        vmovupd   %zmm0, 64(%rcx,%rsi,8)                        #6.9
..LN30:
        lea       (%rcx,%rsi,8), %rdi                           #6.9
..LN31:
	.loc    1  7  is_stmt 1
        vmovupd   %zmm0, 64(%rax,%rsi,8)                        #7.9
..LN32:
	.loc    1  6  is_stmt 1
        vmovupd   %zmm0, 128(%rdi)                              #6.9
..LN33:
	.loc    1  7  is_stmt 1
        vmovupd   %zmm0, 128(%rax,%rsi,8)                       #7.9
..LN34:
	.loc    1  6  is_stmt 1
        vmovupd   %zmm0, 192(%rdi)                              #6.9
..LN35:
	.loc    1  7  is_stmt 1
        vmovupd   %zmm0, 192(%rax,%rsi,8)                       #7.9
..LN36:
	.loc    1  6  is_stmt 1
        vmovupd   %zmm0, (%rdi)                                 #6.9
..LN37:
	.loc    1  7  is_stmt 1
        lea       (%rax,%rsi,8), %r8                            #7.9
..LN38:
	.loc    1  5  is_stmt 1
        addq      $32, %rsi                                     #5.5
..LN39:
	.loc    1  7  is_stmt 1
        vmovupd   %zmm0, (%r8)                                  #7.9
..LN40:
	.loc    1  5  is_stmt 1
        cmpq      $10976, %rsi                                  #5.5
..LN41:
        jb        ..B1.4        # Prob 82%                      #5.5
..LN42:
                                # LOE rax rcx rsi r12 r13 r14 r15 zmm0
..B1.5:                         # Preds ..B1.4
..LN43:
        movl      $8, %esi                                      #5.5
..LN44:
        xorb      %r8b, %r8b                                    #5.5
..LN45:
        vpbroadcastd %esi, %ymm3                                #5.5
..LN46:
        xorb      %sil, %sil                                    #5.5
..LN47:
	.loc    1  6  is_stmt 1
        vbroadcastsd .L_2il0floatpacket.2(%rip), %zmm0          #6.16
..LN48:
	.loc    1  5  is_stmt 1
        vmovdqu   .L_2il0floatpacket.5(%rip), %ymm2             #5.5
..LN49:
        vmovdqu   .L_2il0floatpacket.1(%rip), %ymm1             #5.5
..LN50:
        xorl      %edi, %edi                                    #5.5
..LN51:
                                # LOE rax rcx rdi r12 r13 r14 r15 sil r8b ymm1 ymm2 ymm3 zmm0
..B1.6:                         # Preds ..B1.6 ..B1.5
..LN52:
        vpcmpud   $2, %ymm1, %ymm2, %k1                         #5.5
..LN53:
        addb      $8, %r8b                                      #5.5
..LN54:
        vpaddd    %ymm3, %ymm2, %ymm2                           #5.5
..LN55:
	.loc    1  6  is_stmt 1
        vmovapd   %zmm0, 87808(%rdi,%rcx){%k1}                  #6.9
..LN56:
	.loc    1  7  is_stmt 1
        vmovapd   %zmm0, 87808(%rdi,%rax){%k1}                  #7.9
..LN57:
	.loc    1  5  is_stmt 1
        addq      $64, %rdi                                     #5.5
..LN58:
        cmpb      $24, %r8b                                     #5.5
..LN59:
        jb        ..B1.6        # Prob 82%                      #5.5
..LN60:
                                # LOE rax rcx rdi r12 r13 r14 r15 sil r8b ymm1 ymm2 ymm3 zmm0
..B1.7:                         # Preds ..B1.6
..LN61:
	.loc    1  10  is_stmt 1
        vmovups   .L_2il0floatpacket.3(%rip), %zmm1             #10.30
..LN62:
        xorl      %edi, %edi                                    #10.5
..LN63:
        vmovdqu32 .L_2il0floatpacket.6(%rip), %zmm4             #10.30
..LN64:
        vmovdqu32 .L_2il0floatpacket.7(%rip), %zmm2             #10.30
..LN65:
	.loc    1  11  is_stmt 1
        vmovupd   .L_2il0floatpacket.8(%rip), %zmm0             #11.18
..LN66:
        vpxord    %zmm3, %zmm3, %zmm3                           #11.18
..LN67:
                                # LOE rax rcx rdi r12 r13 r14 r15 sil zmm0 zmm1 zmm2 zmm3 zmm4
..B1.8:                         # Preds ..B1.8 ..B1.7
..LN68:
        vpmuldq   %zmm0, %zmm4, %zmm6                           #11.18
..LN69:
        vpmuldq   %zmm0, %zmm2, %zmm16                          #11.18
..LN70:
        vpshufd   $49, %zmm4, %zmm5                             #11.18
..LN71:
        vpshufd   $49, %zmm2, %zmm15                            #11.18
..LN72:
        vpsrlq    $32, %zmm6, %zmm8                             #11.18
..LN73:
        vpsrlq    $32, %zmm16, %zmm18                           #11.18
..LN74:
        vpsrad    $31, %zmm4, %zmm11                            #11.18
..LN75:
        vpsrad    $31, %zmm2, %zmm21                            #11.18
..LN76:
        vpmuldq   %zmm0, %zmm5, %zmm7                           #11.18
..LN77:
        vpmuldq   %zmm0, %zmm15, %zmm17                         #11.18
..LN78:
        vpternlogd $248, .L_2il0floatpacket.9(%rip), %zmm7, %zmm8 #11.18
..LN79:
        vpternlogd $248, .L_2il0floatpacket.9(%rip), %zmm17, %zmm18 #11.18
..LN80:
        vpaddd    %zmm4, %zmm8, %zmm9                           #11.18
..LN81:
        vpaddd    %zmm2, %zmm18, %zmm19                         #11.18
..LN82:
        vpsrad    $1, %zmm9, %zmm10                             #11.18
..LN83:
        vpsrad    $1, %zmm19, %zmm20                            #11.18
..LN84:
        vpsubd    %zmm11, %zmm10, %zmm12                        #11.18
..LN85:
        vpsubd    %zmm21, %zmm20, %zmm22                        #11.18
..LN86:
        vpmulld   .L_2il0floatpacket.10(%rip), %zmm12, %zmm13   #11.18
..LN87:
        vpmulld   .L_2il0floatpacket.10(%rip), %zmm22, %zmm23   #11.18
..LN88:
        vpsubd    %zmm13, %zmm4, %zmm14                         #11.18
..LN89:
        vpsubd    %zmm23, %zmm2, %zmm24                         #11.18
..LN90:
	.loc    1  10  is_stmt 1
        vpaddd    %zmm1, %zmm4, %zmm4                           #10.30
..LN91:
        vpaddd    %zmm1, %zmm2, %zmm2                           #10.30
..LN92:
	.loc    1  11  is_stmt 1
        vpcmpeqd  %zmm14, %zmm3, %k1                            #11.18
..LN93:
        vpcmpeqd  %zmm24, %zmm3, %k3                            #11.18
..LN94:
        kshiftrw  $8, %k1, %k2                                  #11.18
..LN95:
        kshiftrw  $8, %k3, %k4                                  #11.18
..LN96:
	.loc    1  12  is_stmt 1
        vmovupd   (%rcx,%rdi,8), %zmm25{%k1}{z}                 #12.13
..LN97:
        vmovupd   64(%rcx,%rdi,8), %zmm27{%k2}{z}               #12.13
..LN98:
        vmovupd   128(%rcx,%rdi,8), %zmm29{%k3}{z}              #12.13
..LN99:
        vmovupd   192(%rcx,%rdi,8), %zmm31{%k4}{z}              #12.13
..LN100:
        vmovupd   (%rax,%rdi,8), %zmm26{%k1}{z}                 #12.21
..LN101:
        vmovupd   64(%rax,%rdi,8), %zmm28{%k2}{z}               #12.21
..LN102:
        vmovupd   128(%rax,%rdi,8), %zmm30{%k3}{z}              #12.21
..LN103:
        vmovupd   192(%rax,%rdi,8), %zmm5{%k4}{z}               #12.21
..LN104:
        vaddpd    %zmm26, %zmm25, %zmm6                         #12.13
..LN105:
        vaddpd    %zmm28, %zmm27, %zmm7                         #12.13
..LN106:
        vaddpd    %zmm30, %zmm29, %zmm8                         #12.13
..LN107:
        vaddpd    %zmm5, %zmm31, %zmm9                          #12.13
..LN108:
        vmovapd   %zmm6, (%rcx,%rdi,8){%k1}                     #12.13
..LN109:
        vmovapd   %zmm7, 64(%rcx,%rdi,8){%k2}                   #12.13
..LN110:
        vmovapd   %zmm8, 128(%rcx,%rdi,8){%k3}                  #12.13
..LN111:
        vmovapd   %zmm9, 192(%rcx,%rdi,8){%k4}                  #12.13
..LN112:
	.loc    1  10  is_stmt 1
        addq      $32, %rdi                                     #10.5
..LN113:
        cmpq      $10976, %rdi                                  #10.5
..LN114:
        jb        ..B1.8        # Prob 82%                      #10.5
..LN115:
                                # LOE rax rcx rdi r12 r13 r14 r15 sil zmm0 zmm1 zmm2 zmm3 zmm4
..B1.10:                        # Preds ..B1.8 ..B1.12
..LN116:
	.loc    1  11  is_stmt 1
        movb      %sil, %dil                                    #11.8
..LN117:
        addb      $-32, %dil                                    #11.8
..LN118:
        testb     $3, %dil                                      #11.13
..LN119:
        jne       ..B1.12       # Prob 50%                      #11.18
..LN120:
                                # LOE rax rcx r12 r13 r14 r15 sil
..B1.11:                        # Preds ..B1.10
..LN121:
	.loc    1  12  is_stmt 1
        movzbl    %sil, %edi                                    #12.13
..LN122:
        vmovsd    87808(%rcx,%rdi,8), %xmm0                     #12.13
..LN123:
        vaddsd    87808(%rax,%rdi,8), %xmm0, %xmm1              #12.13
..LN124:
        vmovsd    %xmm1, 87808(%rcx,%rdi,8)                     #12.13
..LN125:
                                # LOE rax rcx r12 r13 r14 r15 sil
..B1.12:                        # Preds ..B1.10 ..B1.11
..LN126:
	.loc    1  10  is_stmt 1
        incb      %sil                                          #10.5
..LN127:
        cmpb      $24, %sil                                     #10.5
..LN128:
        jb        ..B1.10       # Prob 82%                      #10.5
..LN129:
                                # LOE rax rcx r12 r13 r14 r15 sil
..B1.13:                        # Preds ..B1.12
..LN130:
	.loc    1  15  is_stmt 1
        movq      %rax, %rdx                                    #15.12
..LN131:
        movl      $88000, %eax                                  #15.12
..LN132:
        vzeroupper                                              #15.12
..LN133:
        addq      %rax, %rsp                                    #15.12
..LN134:
                                # LOE rcx r12 r13 r14 r15
..B1.14:                        # Preds ..B1.13
..LN135:
        movq      %rcx, %rdx                                    #15.12
..LN136:
        movl      $88000, %eax                                  #15.12
..LN137:
        addq      %rax, %rsp                                    #15.12
..LN138:
                                # LOE r12 r13 r14 r15
..B1.15:                        # Preds ..B1.14
..LN139:
	.loc    1  20  is_stmt 1
        xorl      %eax, %eax                                    #20.9
..LN140:
        movq      %rbp, %rsp                                    #20.9
..LN141:
        popq      %rbp                                          #20.9
	.cfi_restore 6
..LN142:
        movq      %rbx, %rsp                                    #20.9
..LN143:
        popq      %rbx                                          #20.9
	.cfi_def_cfa 7, 8
	.cfi_restore 3
..LN144:
        ret                                                     #20.9
        .align    16,0x90
	.cfi_endproc
..LN145:
                                # LOE
..LN146:
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.147:
.LNmain:
	.section .gcc_except_table, "a"
	.align 4
main$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value_main.14 - ..___tag_value_main.13
..___tag_value_main.13:
	.byte	1
	.uleb128	..___tag_value_main.12 - ..___tag_value_main.11
..___tag_value_main.11:
..___tag_value_main.12:
	.long	0x00000000,0x00000000
..___tag_value_main.14:
	.data
# -- End  main
	.text
.L_2__routine_start__Z11checkVectori_1:
# -- Begin  _Z11checkVectori
	.text
# mark_begin;
       .align    16,0x90
	.globl _Z11checkVectori
# --- checkVector(int)
_Z11checkVectori:
# parameter 1(n): %edi
..B2.1:                         # Preds ..B2.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _Z11checkVectori$$LSDA
..___tag_value__Z11checkVectori.15:
..L16:
                                                         #3.26
..LN148:
	.loc    1  3  is_stmt 1
        pushq     %rbx                                          #3.26
	.cfi_def_cfa_offset 16
..LN149:
        movq      %rsp, %rbx                                    #3.26
	.cfi_def_cfa 3, 16
	.cfi_offset 3, -16
..LN150:
        andq      $-64, %rsp                                    #3.26
..LN151:
        pushq     %rbp                                          #3.26
..LN152:
        pushq     %rbp                                          #3.26
..LN153:
        movq      8(%rbx), %rbp                                 #3.26
..LN154:
        movq      %rbp, 8(%rsp)                                 #3.26
..LN155:
        movq      %rsp, %rbp                                    #3.26
	.cfi_escape 0x10, 0x06, 0x02, 0x76, 0x00
..LN156:
        pushq     %r15                                          #3.26
..LN157:
        subq      $40, %rsp                                     #3.26
..LN158:
        movl      %edi, %r9d                                    #3.26
..LN159:
	.loc    1  4  is_stmt 1
        movslq    %r9d, %rsi                                    #4.15
..LN160:
        lea       (,%rsi,8), %r8                                #4.12
..LN161:
        movq      %r8, %rax                                     #4.12
..LN162:
        addq      $63, %rax                                     #4.12
..LN163:
        andq      $-64, %rax                                    #4.12
..LN164:
        subq      %rax, %rsp                                    #4.12
..LN165:
        movq      %rsp, %rax                                    #4.12
	.cfi_escape 0x10, 0x0f, 0x02, 0x76, 0x78
..LN166:
                                # LOE rax rsi r8 r12 r13 r14 r9d
..B2.27:                        # Preds ..B2.1
..LN167:
        movq      %rax, %rcx                                    #4.12
..LN168:
                                # LOE rcx rsi r8 r12 r13 r14 r9d
..B2.2:                         # Preds ..B2.27
..LN169:
        movq      %r8, %rax                                     #4.18
..LN170:
        addq      $63, %rax                                     #4.18
..LN171:
        andq      $-64, %rax                                    #4.18
..LN172:
        subq      %rax, %rsp                                    #4.18
..LN173:
        movq      %rsp, %rax                                    #4.18
..LN174:
                                # LOE rax rcx rsi r8 r12 r13 r14 r9d
..B2.3:                         # Preds ..B2.2
..LN175:
	.loc    1  5  is_stmt 1
        testl     %r9d, %r9d                                    #5.25
..LN176:
        jle       ..B2.20       # Prob 50%                      #5.25
..LN177:
                                # LOE rax rcx rsi r8 r12 r13 r14 r9d
..B2.4:                         # Preds ..B2.3
..LN178:
        cmpl      $32, %r9d                                     #5.5
..LN179:
        jl        ..B2.24       # Prob 10%                      #5.5
..LN180:
                                # LOE rax rcx rsi r8 r12 r13 r14 r9d
..B2.5:                         # Preds ..B2.4
..LN181:
        movl      %r9d, %edx                                    #5.5
..LN182:
        xorl      %r10d, %r10d                                  #5.5
..LN183:
        andl      $-32, %edx                                    #5.5
..LN184:
	.loc    1  6  is_stmt 1
        vmovups   .L_2il0floatpacket.0(%rip), %zmm0             #6.16
..LN185:
	.loc    1  5  is_stmt 1
        movslq    %edx, %rdi                                    #5.5
        .align    16,0x90
..LN186:
                                # LOE rax rcx rsi rdi r8 r10 r12 r13 r14 edx r9d zmm0
..B2.6:                         # Preds ..B2.6 ..B2.5
..LN187:
	.loc    1  6  is_stmt 1
        vmovupd   %zmm0, 64(%rcx,%r10,8)                        #6.9
..LN188:
        lea       (%rcx,%r10,8), %r11                           #6.9
..LN189:
	.loc    1  7  is_stmt 1
        vmovupd   %zmm0, 64(%rax,%r10,8)                        #7.9
..LN190:
	.loc    1  6  is_stmt 1
        vmovupd   %zmm0, 128(%r11)                              #6.9
..LN191:
	.loc    1  7  is_stmt 1
        vmovupd   %zmm0, 128(%rax,%r10,8)                       #7.9
..LN192:
	.loc    1  6  is_stmt 1
        vmovupd   %zmm0, 192(%r11)                              #6.9
..LN193:
	.loc    1  7  is_stmt 1
        vmovupd   %zmm0, 192(%rax,%r10,8)                       #7.9
..LN194:
	.loc    1  6  is_stmt 1
        vmovupd   %zmm0, (%r11)                                 #6.9
..LN195:
	.loc    1  7  is_stmt 1
        lea       (%rax,%r10,8), %r15                           #7.9
..LN196:
	.loc    1  5  is_stmt 1
        addq      $32, %r10                                     #5.5
..LN197:
	.loc    1  7  is_stmt 1
        vmovupd   %zmm0, (%r15)                                 #7.9
..LN198:
	.loc    1  5  is_stmt 1
        cmpq      %rdi, %r10                                    #5.5
..LN199:
        jb        ..B2.6        # Prob 82%                      #5.5
..LN200:
                                # LOE rax rcx rsi rdi r8 r10 r12 r13 r14 edx r9d zmm0
..B2.8:                         # Preds ..B2.6 ..B2.24
..LN201:
        lea       1(%rdx), %edi                                 #5.5
..LN202:
        cmpl      %edi, %r9d                                    #5.5
..LN203:
        jb        ..B2.12       # Prob 50%                      #5.5
..LN204:
                                # LOE rax rcx rsi r8 r12 r13 r14 edx r9d
..B2.9:                         # Preds ..B2.8
..LN205:
        movl      $8, %edi                                      #5.5
..LN206:
        xorl      %r15d, %r15d                                  #5.5
..LN207:
        vpbroadcastd %edi, %ymm3                                #5.5
..LN208:
	.loc    1  6  is_stmt 1
        vbroadcastsd .L_2il0floatpacket.2(%rip), %zmm0          #6.16
..LN209:
	.loc    1  5  is_stmt 1
        vmovdqu   .L_2il0floatpacket.5(%rip), %ymm2             #5.5
..LN210:
	.loc    1  6  is_stmt 1
        movslq    %edx, %rdi                                    #6.9
..LN211:
	.loc    1  5  is_stmt 1
        negl      %edx                                          #5.5
..LN212:
        addl      %r9d, %edx                                    #5.5
..LN213:
        vpbroadcastd %edx, %ymm1                                #5.5
..LN214:
        xorl      %edx, %edx                                    #5.5
..LN215:
	.loc    1  7  is_stmt 1
        lea       (%rax,%rdi,8), %r11                           #7.9
..LN216:
	.loc    1  6  is_stmt 1
        lea       (%rcx,%rdi,8), %r10                           #6.9
..LN217:
	.loc    1  5  is_stmt 1
        negq      %rdi                                          #5.5
..LN218:
        addq      %rsi, %rdi                                    #5.5
..LN219:
                                # LOE rax rdx rcx rsi rdi r8 r10 r11 r12 r13 r14 r15 r9d ymm1 ymm2 ymm3 zmm0
..B2.10:                        # Preds ..B2.10 ..B2.9
..LN220:
        vpcmpd    $2, %ymm1, %ymm2, %k1                         #5.5
..LN221:
        addq      $8, %r15                                      #5.5
..LN222:
        vpaddd    %ymm3, %ymm2, %ymm2                           #5.5
..LN223:
	.loc    1  6  is_stmt 1
        vmovapd   %zmm0, (%rdx,%r10){%k1}                       #6.9
..LN224:
	.loc    1  7  is_stmt 1
        vmovapd   %zmm0, (%rdx,%r11){%k1}                       #7.9
..LN225:
	.loc    1  5  is_stmt 1
        addq      $64, %rdx                                     #5.5
..LN226:
        cmpq      %rdi, %r15                                    #5.5
..LN227:
        jb        ..B2.10       # Prob 82%                      #5.5
..LN228:
                                # LOE rax rdx rcx rsi rdi r8 r10 r11 r12 r13 r14 r15 r9d ymm1 ymm2 ymm3 zmm0
..B2.12:                        # Preds ..B2.10 ..B2.8
..LN229:
	.loc    1  10  is_stmt 1
        cmpl      $16, %r9d                                     #10.5
..LN230:
        jl        ..B2.23       # Prob 10%                      #10.5
..LN231:
                                # LOE rax rcx rsi r8 r12 r13 r14 r9d
..B2.13:                        # Preds ..B2.12
..LN232:
        movl      %r9d, %r10d                                   #10.5
..LN233:
        xorl      %r11d, %r11d                                  #10.5
..LN234:
        andl      $-16, %r10d                                   #10.5
..LN235:
        vmovups   .L_2il0floatpacket.11(%rip), %zmm3            #10.30
..LN236:
        vmovdqu32 .L_2il0floatpacket.6(%rip), %zmm2             #10.30
..LN237:
	.loc    1  11  is_stmt 1
        vmovupd   .L_2il0floatpacket.8(%rip), %zmm0             #11.18
..LN238:
	.loc    1  10  is_stmt 1
        movslq    %r10d, %rdi                                   #10.5
..LN239:
	.loc    1  11  is_stmt 1
        vpxord    %zmm1, %zmm1, %zmm1                           #11.18
..LN240:
                                # LOE rax rcx rsi rdi r8 r11 r12 r13 r14 r9d r10d zmm0 zmm1 zmm2 zmm3
..B2.14:                        # Preds ..B2.14 ..B2.13
..LN241:
        vpmuldq   %zmm0, %zmm2, %zmm5                           #11.18
..LN242:
        vpshufd   $49, %zmm2, %zmm4                             #11.18
..LN243:
        vpsrad    $31, %zmm2, %zmm10                            #11.18
..LN244:
        vpsrlq    $32, %zmm5, %zmm7                             #11.18
..LN245:
        vpmuldq   %zmm0, %zmm4, %zmm6                           #11.18
..LN246:
        vpternlogd $248, .L_2il0floatpacket.9(%rip), %zmm6, %zmm7 #11.18
..LN247:
        vpaddd    %zmm2, %zmm7, %zmm8                           #11.18
..LN248:
        vpsrad    $1, %zmm8, %zmm9                              #11.18
..LN249:
        vpsubd    %zmm10, %zmm9, %zmm11                         #11.18
..LN250:
        vpmulld   .L_2il0floatpacket.10(%rip), %zmm11, %zmm12   #11.18
..LN251:
        vpsubd    %zmm12, %zmm2, %zmm13                         #11.18
..LN252:
	.loc    1  10  is_stmt 1
        vpaddd    %zmm3, %zmm2, %zmm2                           #10.30
..LN253:
	.loc    1  11  is_stmt 1
        vpcmpeqd  %zmm13, %zmm1, %k1                            #11.18
..LN254:
        kshiftrw  $8, %k1, %k2                                  #11.18
..LN255:
	.loc    1  12  is_stmt 1
        vmovupd   (%rcx,%r11,8), %zmm14{%k1}{z}                 #12.13
..LN256:
        vmovupd   64(%rcx,%r11,8), %zmm16{%k2}{z}               #12.13
..LN257:
        vmovupd   (%rax,%r11,8), %zmm15{%k1}{z}                 #12.21
..LN258:
        vmovupd   64(%rax,%r11,8), %zmm17{%k2}{z}               #12.21
..LN259:
        vaddpd    %zmm15, %zmm14, %zmm18                        #12.13
..LN260:
        vaddpd    %zmm17, %zmm16, %zmm19                        #12.13
..LN261:
        vmovapd   %zmm18, (%rcx,%r11,8){%k1}                    #12.13
..LN262:
        vmovapd   %zmm19, 64(%rcx,%r11,8){%k2}                  #12.13
..LN263:
	.loc    1  10  is_stmt 1
        addq      $16, %r11                                     #10.5
..LN264:
        cmpq      %rdi, %r11                                    #10.5
..LN265:
        jb        ..B2.14       # Prob 82%                      #10.5
..LN266:
                                # LOE rax rcx rsi rdi r8 r11 r12 r13 r14 r9d r10d zmm0 zmm1 zmm2 zmm3
..B2.16:                        # Preds ..B2.14 ..B2.23
..LN267:
        lea       1(%r10), %edi                                 #10.5
..LN268:
        cmpl      %edi, %r9d                                    #10.5
..LN269:
        jb        ..B2.20       # Prob 50%                      #10.5
..LN270:
                                # LOE rax rcx rsi r8 r12 r13 r14 r9d r10d
..B2.17:                        # Preds ..B2.16
..LN271:
        vpbroadcastd %r10d, %zmm0                               #10.30
..LN272:
        xorl      %edx, %edx                                    #10.5
..LN273:
        vmovups   .L_2il0floatpacket.11(%rip), %zmm21           #10.5
..LN274:
        vmovdqu32 .L_2il0floatpacket.12(%rip), %zmm20           #10.5
..LN275:
	.loc    1  11  is_stmt 1
        vmovups   .L_2il0floatpacket.4(%rip), %zmm17            #11.13
..LN276:
	.loc    1  10  is_stmt 1
        vpaddd    .L_2il0floatpacket.6(%rip), %zmm0, %zmm19     #10.30
..LN277:
	.loc    1  12  is_stmt 1
        movslq    %r10d, %r10                                   #12.13
..LN278:
	.loc    1  10  is_stmt 1
        subl      %r10d, %r9d                                   #10.5
..LN279:
        subq      %r10, %rsi                                    #10.5
..LN280:
        vpbroadcastd %r9d, %zmm16                               #10.5
..LN281:
        movq      %r8, -48(%rbp)                                #10.5
..LN282:
	.loc    1  12  is_stmt 1
        lea       (%rax,%r10,8), %rdi                           #12.21
..LN283:
	.loc    1  10  is_stmt 1
        movq      %r12, -40(%rbp)                               #10.5
	.cfi_escape 0x10, 0x0c, 0x02, 0x76, 0x58
..LN284:
	.loc    1  12  is_stmt 1
        lea       (%rcx,%r10,8), %r15                           #12.13
..LN285:
	.loc    1  10  is_stmt 1
        movq      %r13, -32(%rbp)                               #10.5
	.cfi_escape 0x10, 0x0d, 0x02, 0x76, 0x60
..LN286:
        movq      %rax, %r12                                    #10.5
..LN287:
        movq      %r14, -24(%rbp)                               #10.5
	.cfi_escape 0x10, 0x0e, 0x02, 0x76, 0x68
..LN288:
        movq      %rdx, %r14                                    #10.5
..LN289:
        movq      %rcx, %r13                                    #10.5
..LN290:
	.loc    1  11  is_stmt 1
        vpxord    %zmm18, %zmm18, %zmm18                        #11.18
..LN291:
                                # LOE rsi rdi r12 r13 r14 r15 zmm16 zmm17 zmm18 zmm19 zmm20 zmm21
..B2.18:                        # Preds ..B2.29 ..B2.17
..LN292:
	.loc    1  10  is_stmt 1
        vpcmpd    $2, %zmm16, %zmm20, %k4                       #10.5
..LN293:
	.loc    1  11  is_stmt 1
        vmovaps   %zmm18, %zmm0                                 #11.13
..LN294:
        kmovw     %k4, %k1                                      #11.13
..LN295:
        vmovaps   %zmm19, %zmm1                                 #11.13
..LN296:
        vmovaps   %zmm17, %zmm2                                 #11.13
..LN297:
        call      __svml_irem16_mask                            #11.13
..LN298:
                                # LOE rsi rdi r12 r13 r14 r15 zmm0 zmm16 zmm17 zmm18 zmm19 zmm20 zmm21 k4
..B2.29:                        # Preds ..B2.18
..LN299:
	.loc    1  10  is_stmt 1
        vpaddd    %zmm21, %zmm20, %zmm20                        #10.5
..LN300:
        vpaddd    %zmm21, %zmm19, %zmm19                        #10.30
..LN301:
	.loc    1  11  is_stmt 1
        vpcmpeqd  %zmm0, %zmm18, %k0                            #11.18
..LN302:
        kandw     %k0, %k4, %k2                                 #11.18
..LN303:
        kshiftrw  $8, %k4, %k4                                  #11.18
..LN304:
        kshiftrw  $8, %k0, %k1                                  #11.18
..LN305:
	.loc    1  12  is_stmt 1
        vmovupd   (%r15,%r14,8), %zmm3{%k2}{z}                  #12.13
..LN306:
        vmovupd   (%rdi,%r14,8), %zmm4{%k2}{z}                  #12.21
..LN307:
	.loc    1  11  is_stmt 1
        kandw     %k1, %k4, %k3                                 #11.18
..LN308:
	.loc    1  12  is_stmt 1
        vaddpd    %zmm4, %zmm3, %zmm7                           #12.13
..LN309:
        vmovupd   64(%rdi,%r14,8), %zmm6{%k3}{z}                #12.21
..LN310:
        vmovupd   64(%r15,%r14,8), %zmm5{%k3}{z}                #12.13
..LN311:
        vmovapd   %zmm7, (%r15,%r14,8){%k2}                     #12.13
..LN312:
        vaddpd    %zmm6, %zmm5, %zmm8                           #12.13
..LN313:
        vmovapd   %zmm8, 64(%r15,%r14,8){%k3}                   #12.13
..LN314:
	.loc    1  10  is_stmt 1
        addq      $16, %r14                                     #10.5
..LN315:
        cmpq      %rsi, %r14                                    #10.5
..LN316:
        jb        ..B2.18       # Prob 82%                      #10.5
..LN317:
                                # LOE rsi rdi r12 r13 r14 r15 zmm16 zmm17 zmm18 zmm19 zmm20 zmm21
..B2.19:                        # Preds ..B2.29
..LN318:
        movq      -48(%rbp), %r8                                #
..LN319:
        movq      %r12, %rax                                    #
..LN320:
        movq      -40(%rbp), %r12                               #
	.cfi_restore 12
..LN321:
        movq      %r13, %rcx                                    #
..LN322:
        movq      -32(%rbp), %r13                               #
	.cfi_restore 13
..LN323:
        movq      -24(%rbp), %r14                               #
	.cfi_restore 14
..LN324:
                                # LOE rax rcx r8 r12 r13 r14
..B2.20:                        # Preds ..B2.3 ..B2.16 ..B2.19
..LN325:
	.loc    1  15  is_stmt 1
        movq      %rax, %rdx                                    #15.12
..LN326:
        movq      %r8, %rax                                     #15.12
..LN327:
        vmovsd    (%rcx), %xmm0                                 #15.12
..LN328:
        vzeroupper                                              #15.12
..LN329:
        addq      $63, %rax                                     #15.12
..LN330:
        andq      $-64, %rax                                    #15.12
..LN331:
        addq      %rax, %rsp                                    #15.12
..LN332:
                                # LOE rcx r8 r12 r13 r14 xmm0
..B2.21:                        # Preds ..B2.20
..LN333:
        movq      %rcx, %rdx                                    #15.12
..LN334:
        movq      %r8, %rax                                     #15.12
..LN335:
        addq      $63, %rax                                     #15.12
..LN336:
        andq      $-64, %rax                                    #15.12
..LN337:
        addq      %rax, %rsp                                    #15.12
..LN338:
                                # LOE r12 r13 r14 xmm0
..B2.22:                        # Preds ..B2.21
..LN339:
        lea       -8(%rbp), %rsp                                #15.5
	.cfi_restore 15
..LN340:
        popq      %r15                                          #15.5
..LN341:
        popq      %rbp                                          #15.5
	.cfi_restore 6
..LN342:
        movq      %rbx, %rsp                                    #15.5
..LN343:
        popq      %rbx                                          #15.5
	.cfi_def_cfa 7, 8
	.cfi_restore 3
..LN344:
        ret                                                     #15.5
	.cfi_def_cfa 3, 16
	.cfi_offset 3, -16
	.cfi_escape 0x10, 0x06, 0x02, 0x76, 0x00
	.cfi_escape 0x10, 0x0f, 0x02, 0x76, 0x78
..LN345:
                                # LOE
..B2.23:                        # Preds ..B2.12                 # Infreq
..LN346:
	.loc    1  10  is_stmt 1
        xorl      %r10d, %r10d                                  #10.5
..LN347:
        jmp       ..B2.16       # Prob 100%                     #10.5
..LN348:
                                # LOE rax rcx rsi r8 r12 r13 r14 r9d r10d
..B2.24:                        # Preds ..B2.4                  # Infreq
..LN349:
	.loc    1  5  is_stmt 1
        xorl      %edx, %edx                                    #5.5
..LN350:
        jmp       ..B2.8        # Prob 100%                     #5.5
        .align    16,0x90
	.cfi_endproc
..LN351:
                                # LOE rax rcx rsi r8 r12 r13 r14 edx r9d
..LN352:
# mark_end;
	.type	_Z11checkVectori,@function
	.size	_Z11checkVectori,.-_Z11checkVectori
..LN_Z11checkVectori.353:
.LN_Z11checkVectori:
	.section .gcc_except_table, "a"
	.align 4
_Z11checkVectori$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__Z11checkVectori.40 - ..___tag_value__Z11checkVectori.39
..___tag_value__Z11checkVectori.39:
	.byte	1
	.uleb128	..___tag_value__Z11checkVectori.38 - ..___tag_value__Z11checkVectori.37
..___tag_value__Z11checkVectori.37:
..___tag_value__Z11checkVectori.38:
	.long	0x00000000,0x00000000
..___tag_value__Z11checkVectori.40:
	.data
# -- End  _Z11checkVectori
	.text
.L_2__routine_start___sti__$E_2:
# -- Begin  __sti__$E
	.text
# mark_begin;
       .align    16,0x90
# --- __sti__$E()
__sti__$E:
..B3.1:                         # Preds ..B3.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value___sti__$E.41:
..L42:
                                                         #
..LN354:
        pushq     %rsi                                          #
	.cfi_def_cfa_offset 16
..LN355:
	.file   2 "/usr/include/c++/4.8.5/iostream"
	.loc    2  74  is_stmt 1
        movl      $_ZN36_INTERNAL_14_TestVector_cpp_c9bfb929St8__ioinitE, %edi #74.25
..___tag_value___sti__$E.44:
..LN356:
#       std::ios_base::Init::Init(std::ios_base::Init *)
        call      _ZNSt8ios_base4InitC1Ev                       #74.25
..___tag_value___sti__$E.45:
..LN357:
                                # LOE rbx rbp r12 r13 r14 r15
..B3.2:                         # Preds ..B3.1
..LN358:
        movl      $_ZNSt8ios_base4InitD1Ev, %edi                #74.25
..LN359:
        movl      $_ZN36_INTERNAL_14_TestVector_cpp_c9bfb929St8__ioinitE, %esi #74.25
..LN360:
        movl      $__dso_handle, %edx                           #74.25
..LN361:
        addq      $8, %rsp                                      #74.25
	.cfi_def_cfa_offset 8
..LN362:
#       __cxa_atexit()
        jmp       __cxa_atexit                                  #74.25
        .align    16,0x90
	.cfi_endproc
..LN363:
                                # LOE
..LN364:
# mark_end;
	.type	__sti__$E,@function
	.size	__sti__$E,.-__sti__$E
..LN__sti__$E.365:
.LN__sti__$E:
	.data
# -- End  __sti__$E
	.bss
	.align 4
	.align 1
_ZN36_INTERNAL_14_TestVector_cpp_c9bfb929St8__ioinitE:
	.type	_ZN36_INTERNAL_14_TestVector_cpp_c9bfb929St8__ioinitE,@object
	.size	_ZN36_INTERNAL_14_TestVector_cpp_c9bfb929St8__ioinitE,1
	.space 1	# pad
	.section .rodata, "a"
	.align 64
	.align 64
.L_2il0floatpacket.0:
	.long	0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,64
	.align 64
.L_2il0floatpacket.3:
	.long	0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,64
	.align 64
.L_2il0floatpacket.4:
	.long	0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,64
	.align 64
.L_2il0floatpacket.6:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008,0x00000009,0x0000000a,0x0000000b,0x0000000c,0x0000000d,0x0000000e,0x0000000f
	.type	.L_2il0floatpacket.6,@object
	.size	.L_2il0floatpacket.6,64
	.align 64
.L_2il0floatpacket.7:
	.long	0x00000010,0x00000011,0x00000012,0x00000013,0x00000014,0x00000015,0x00000016,0x00000017,0x00000018,0x00000019,0x0000001a,0x0000001b,0x0000001c,0x0000001d,0x0000001e,0x0000001f
	.type	.L_2il0floatpacket.7,@object
	.size	.L_2il0floatpacket.7,64
	.align 64
.L_2il0floatpacket.8:
	.long	0x80000001,0x80000001,0x80000001,0x80000001,0x80000001,0x80000001,0x80000001,0x80000001,0x80000001,0x80000001,0x80000001,0x80000001,0x80000001,0x80000001,0x80000001,0x80000001
	.type	.L_2il0floatpacket.8,@object
	.size	.L_2il0floatpacket.8,64
	.align 64
.L_2il0floatpacket.9:
	.long	0x00000000,0xffffffff,0x00000000,0xffffffff,0x00000000,0xffffffff,0x00000000,0xffffffff,0x00000000,0xffffffff,0x00000000,0xffffffff,0x00000000,0xffffffff,0x00000000,0xffffffff
	.type	.L_2il0floatpacket.9,@object
	.size	.L_2il0floatpacket.9,64
	.align 64
.L_2il0floatpacket.10:
	.long	0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004,0x00000004
	.type	.L_2il0floatpacket.10,@object
	.size	.L_2il0floatpacket.10,64
	.align 64
.L_2il0floatpacket.11:
	.long	0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010
	.type	.L_2il0floatpacket.11,@object
	.size	.L_2il0floatpacket.11,64
	.align 64
.L_2il0floatpacket.12:
	.long	0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008,0x00000009,0x0000000a,0x0000000b,0x0000000c,0x0000000d,0x0000000e,0x0000000f,0x00000010
	.type	.L_2il0floatpacket.12,@object
	.size	.L_2il0floatpacket.12,64
	.align 32
.L_2il0floatpacket.1:
	.long	0x00000018,0x00000018,0x00000018,0x00000018,0x00000018,0x00000018,0x00000018,0x00000018
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,32
	.align 32
.L_2il0floatpacket.5:
	.long	0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008
	.type	.L_2il0floatpacket.5,@object
	.size	.L_2il0floatpacket.5,32
	.align 8
.L_2il0floatpacket.2:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,8
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
# End
