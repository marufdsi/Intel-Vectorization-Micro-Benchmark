	.section .text
.LNDBG_TX:
# mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 16.0.0.109 Build 20150815";
# mark_description "";
# mark_description "-S -qopt-report=5 -std=c++11 -axMIC-AVX512";
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
..LN0:
	.file   1 "TestVector.cpp"
	.loc    1  28  is_stmt 1
        pushq     %rsi                                          #28.11
..LN1:
        movq      $0x7389d97ff, %rdx                            #28.11
..LN2:
                                # LOE rdx rbx rbp r12 r13 r14 r15
..B1.3:                         # Preds ..B1.1 ..B1.8
..LN3:
        movq      __intel_cpu_feature_indicator(%rip), %rax     #28.11
..LN4:
        andq      %rdx, %rax                                    #28.11
..LN5:
        cmpq      %rdx, %rax                                    #28.11
..LN6:
        jne       ..B1.6        # Prob 10%                      #28.11
..LN7:
                                # LOE rdx rbx rbp r12 r13 r14 r15
..B1.4:                         # Preds ..B1.3
..LN8:
        addq      $8, %rsp                                      #28.11
..LN9:
        jmp       main.Z                                        #28.11
..LN10:
                                # LOE
..B1.6:                         # Preds ..B1.3
..LN11:
        testb     $1, __intel_cpu_feature_indicator(%rip)       #28.11
..LN12:
        je        ..B1.8        # Prob 10%                      #28.11
..LN13:
                                # LOE rdx rbx rbp r12 r13 r14 r15
..B1.7:                         # Preds ..B1.6
..LN14:
        addq      $8, %rsp                                      #28.11
..LN15:
        jmp       main.A                                        #28.11
..LN16:
                                # LOE
..B1.8:                         # Preds ..B1.6
..LN17:
        call      __intel_cpu_features_init                     #28.11
..LN18:
        jmp       ..B1.3        # Prob 100%                     #28.11
        .align    16,0x90
..LN19:
                                # LOE rdx rbx rbp r12 r13 r14 r15
..LN20:
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.21:
.LNmain:
	.section .gcc_except_table, "a"
	.align 4
main$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value_main.4 - ..___tag_value_main.3
..___tag_value_main.3:
	.byte	1
	.uleb128	..___tag_value_main.2 - ..___tag_value_main.1
..___tag_value_main.1:
..___tag_value_main.2:
	.long	0x00000000,0x00000000
..___tag_value_main.4:
# -- End  main
	.text
.L_2__routine_start_main.Z_1:
# -- Begin  main.Z
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
# --- main.()
main.Z:
..B2.1:                         # Preds ..B2.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, main.Z$$LSDA
..___tag_value_main.Z.5:
..L6:
                                                          #28.11
..LN22:
	.loc    1  28  is_stmt 1
        pushq     %rbx                                          #28.11
	.cfi_def_cfa_offset 16
..LN23:
        movq      %rsp, %rbx                                    #28.11
	.cfi_def_cfa 3, 16
	.cfi_offset 3, -16
..LN24:
        andq      $-64, %rsp                                    #28.11
..LN25:
        pushq     %rbp                                          #28.11
..LN26:
        pushq     %rbp                                          #28.11
..LN27:
        movq      8(%rbx), %rbp                                 #28.11
..LN28:
        movq      %rbp, 8(%rsp)                                 #28.11
..LN29:
        movq      %rsp, %rbp                                    #28.11
	.cfi_escape 0x10, 0x06, 0x02, 0x76, 0x00
..LN30:
        subq      $176, %rsp                                    #28.11 c1
..LN31:
        movq      %r15, -168(%rbp)                              #28.11 c1
..LN32:
        xorl      %esi, %esi                                    #28.11 c1
..LN33:
        movq      %r14, -176(%rbp)                              #28.11 c1
..LN34:
        movl      $3, %edi                                      #28.11 c3
..LN35:
        call      __intel_new_feature_proc_init                 #28.11 c5
	.cfi_escape 0x10, 0x0e, 0x03, 0x76, 0xd0, 0x7e
	.cfi_escape 0x10, 0x0f, 0x03, 0x76, 0xd8, 0x7e
..LN36:
                                # LOE r12 r13
..B2.20:                        # Preds ..B2.1
..LN37:
        vstmxcsr  -160(%rbp)                                    #28.11 c1
..LN38:
        orl       $32832, -160(%rbp)                            #28.11 c3
..LN39:
        vldmxcsr  -160(%rbp)                                    #28.11 c5
..LN40:
	.file   2 "/usr/include/c++/4.8.5/chrono"
	.loc    2  552  is_stmt 1
        movq      $0, -112(%rbp)                                #552.31 c5
..LN41:
                                # LOE r12 r13
..B2.2:                         # Preds ..B2.20
..LN42:
        movq      $0, -48(%rbp)                                 #552.31 c1
..LN43:
                                # LOE r12 r13
..B2.3:                         # Preds ..B2.2
..___tag_value_main.Z.13:
..LN44:
	.loc    1  30  is_stmt 1
#       std::chrono::_V2::system_clock::now()
        call      _ZNSt6chrono3_V212system_clock3nowEv          #30.11
..___tag_value_main.Z.14:
..LN45:
                                # LOE rax r12 r13
..B2.21:                        # Preds ..B2.3
..LN46:
        movq      %rax, -112(%rbp)                              #30.11 c1
..LN47:
                                # LOE r12 r13
..B2.4:                         # Preds ..B2.21
..LN48:
	.loc    1  17  is_stmt 1
        movl      $40000000, %eax                               #17.12 c1
..LN49:
        subq      %rax, %rsp                                    #17.12 c3
..LN50:
        movq      %rsp, %rax                                    #17.12
..LN51:
                                # LOE rax r12 r13
..B2.22:                        # Preds ..B2.4
..LN52:
        movq      %rax, %rsi                                    #17.12 c1
..LN53:
                                # LOE rsi r12 r13
..B2.5:                         # Preds ..B2.22
..LN54:
        movl      $40000000, %eax                               #17.18 c1
..LN55:
        subq      %rax, %rsp                                    #17.18 c3
..LN56:
        movq      %rsp, %rax                                    #17.18
..LN57:
                                # LOE rax rsi r12 r13
..B2.23:                        # Preds ..B2.5
..LN58:
        movq      %rax, %rdx                                    #17.18 c1
..LN59:
                                # LOE rdx rsi r12 r13
..B2.6:                         # Preds ..B2.23
..LN60:
	.loc    1  18  is_stmt 1
        xorl      %ecx, %ecx                                    #18.5 c1
..LN61:
        xorl      %eax, %eax                                    #18.5 c1
..LN62:
	.loc    1  19  is_stmt 1
        vmovups   .L_2il0floatpacket.2(%rip), %zmm0             #19.16 c1
..LN63:
                                # LOE rax rdx rcx rsi r12 r13 zmm0
..B2.7:                         # Preds ..B2.7 ..B2.6
..LN64:
        vmovntpd  %zmm0, (%rsi,%rcx,8)                          #19.9 c1
..LN65:
	.loc    1  20  is_stmt 1
        vmovntpd  %zmm0, (%rdx,%rcx,8)                          #20.9 c1
..LN66:
	.loc    1  18  is_stmt 1
        addq      $8, %rcx                                      #18.5 c1
..LN67:
        cmpq      $5000000, %rcx                                #18.5 c3
..LN68:
        jb        ..B2.7        # Prob 82%                      #18.5 c5
..LN69:
                                # LOE rax rdx rcx rsi r12 r13 zmm0
..B2.8:                         # Preds ..B2.7
..LN70:
        mfence                                                  #18.5 c1
..LN71:
                                # LOE rax rdx rsi r12 r13
..B2.10:                        # Preds ..B2.8 ..B2.10
..LN72:
	.loc    1  24  is_stmt 1
        vmovups   (%rsi,%rax,8), %zmm0                          #24.9 c1
..LN73:
        vaddpd    (%rdx,%rax,8), %zmm0, %zmm1                   #24.9 c7 stall 2
..LN74:
        vmovupd   %zmm1, (%rsi,%rax,8)                          #24.9 c13 stall 2
..LN75:
	.loc    1  23  is_stmt 1
        addq      $8, %rax                                      #23.5 c13
..LN76:
        cmpq      $5000000, %rax                                #23.5 c15
..LN77:
        jb        ..B2.10       # Prob 82%                      #23.5 c17
..LN78:
                                # LOE rax rdx rsi r12 r13
..B2.11:                        # Preds ..B2.10
..LN79:
	.loc    1  26  is_stmt 1
        movl      $40000000, %eax                               #26.12 c1
..LN80:
        addq      %rax, %rsp                                    #26.12 c3
..LN81:
                                # LOE rsi r12 r13
..B2.12:                        # Preds ..B2.11
..LN82:
        movq      %rsi, %rdx                                    #26.12 c1
..LN83:
        movl      $40000000, %eax                               #26.12 c1
..LN84:
        addq      %rax, %rsp                                    #26.12 c3
..LN85:
                                # LOE r12 r13
..B2.13:                        # Preds ..B2.12
..___tag_value_main.Z.15:
..LN86:
	.loc    1  32  is_stmt 1
#       std::chrono::_V2::system_clock::now()
        call      _ZNSt6chrono3_V212system_clock3nowEv          #32.9
..___tag_value_main.Z.16:
..LN87:
                                # LOE rax r12 r13
..B2.24:                        # Preds ..B2.13
..LN88:
        movq      %rax, %r15                                    #32.9 c1
..LN89:
        movq      %r15, -48(%rbp)                               #32.9 c3
..LN90:
                                # LOE r12 r13 r15
..B2.14:                        # Preds ..B2.24
..LN91:
	.loc    1  36  is_stmt 1
        movl      $_ZSt4cout, %edi                              #36.7 c1
..LN92:
        movl      $.L_2__STRING.0, %esi                         #36.7 c1
..LN93:
	.loc    1  34  is_stmt 1
        movq      -112(%rbp), %r14                              #34.31 c1
..___tag_value_main.Z.17:
..LN94:
	.loc    1  36  is_stmt 1
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #36.7
..___tag_value_main.Z.18:
..LN95:
                                # LOE rax r12 r13 r14 r15
..B2.25:                        # Preds ..B2.14
..LN96:
        movq      %rax, %rdi                                    #36.7 c1
..LN97:
                                # LOE rdi r12 r13 r14 r15
..B2.15:                        # Preds ..B2.25
..LN98:
	.loc    2  398  is_stmt 1
        subq      %r14, %r15                                    #398.14 c1
..LN99:
	.loc    1  36  is_stmt 1
        movq      $0x431bde82d7b634db, %rax                     #36.26 c1
..LN100:
        vgetmantsd $0, .L_2il0floatpacket.3(%rip), %xmm20, %xmm20 #36.26 c1
..LN101:
        vmovsd    .L_2il0floatpacket.4(%rip), %xmm19            #36.26 c1
..LN102:
        imulq     %r15                                          #36.26 c3
..LN103:
        sarq      $63, %r15                                     #36.26 c3
..LN104:
        sarq      $18, %rdx                                     #36.26 c7 stall 1
..LN105:
        vrcp28sd  %xmm20, %xmm20, %xmm22                        #36.26 c7
..LN106:
        vgetexpsd .L_2il0floatpacket.3(%rip), %xmm18, %xmm18    #36.26 c7
..LN107:
        subq      %r15, %rdx                                    #36.26 c9
..LN108:
        vcvtsi2sdq %rdx, %xmm16, %xmm16                         #36.26 c11
..LN109:
        vgetmantsd $0, %xmm16, %xmm16, %xmm21                   #36.26 c13
..LN110:
        vfnmadd231sd {rn-sae}, %xmm20, %xmm22, %xmm19           #36.26 c15
..LN111:
        vmulsd    {rn-sae}, %xmm21, %xmm22, %xmm23              #36.26 c19 stall 1
..LN112:
        vgetexpsd %xmm16, %xmm16, %xmm17                        #36.26 c21
..LN113:
        vfmadd231sd {rn-sae}, %xmm22, %xmm19, %xmm22            #36.26 c25 stall 1
..LN114:
        vfnmadd231sd {rn-sae}, %xmm20, %xmm23, %xmm21           #36.26 c27
..LN115:
        vsubsd    %xmm18, %xmm17, %xmm24                        #36.26 c31 stall 1
..LN116:
        vfmadd231sd {rn-sae}, %xmm22, %xmm21, %xmm23            #36.26 c33
..LN117:
        vscalefsd %xmm24, %xmm23, %xmm0                         #36.26 c39 stall 2
..___tag_value_main.Z.19:
..LN118:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #36.26
..___tag_value_main.Z.20:
..LN119:
                                # LOE rax r12 r13
..B2.16:                        # Preds ..B2.15
..LN120:
        movq      %rax, %rdi                                    #36.39 c1
..LN121:
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #36.39 c1
..___tag_value_main.Z.21:
..LN122:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #36.39
..___tag_value_main.Z.22:
..LN123:
                                # LOE r12 r13
..B2.17:                        # Preds ..B2.16
..LN124:
	.loc    1  37  is_stmt 1
        movq      -176(%rbp), %r14                              #37.10 c1
	.cfi_restore 14
..LN125:
        movq      -168(%rbp), %r15                              #37.10 c1
	.cfi_restore 15
..LN126:
        xorl      %eax, %eax                                    #37.10 c1
..LN127:
        movq      %rbp, %rsp                                    #37.10 c3
..LN128:
        popq      %rbp                                          #37.10
	.cfi_restore 6
..LN129:
        movq      %rbx, %rsp                                    #37.10
..LN130:
        popq      %rbx                                          #37.10
	.cfi_def_cfa 7, 8
	.cfi_restore 3
..LN131:
        ret                                                     #37.10
        .align    16,0x90
	.cfi_endproc
..LN132:
                                # LOE
..LN133:
# mark_end;
	.type	main.Z,@function
	.size	main.Z,.-main.Z
..LNmain.Z.134:
.LNmain.Z:
	.section .gcc_except_table, "a"
	.align 4
main.Z$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value_main.Z.32 - ..___tag_value_main.Z.31
..___tag_value_main.Z.31:
	.byte	1
	.uleb128	..___tag_value_main.Z.30 - ..___tag_value_main.Z.29
..___tag_value_main.Z.29:
	.uleb128	..___tag_value_main.Z.13 - ..___tag_value_main.Z.5
	.uleb128	..___tag_value_main.Z.22 - ..___tag_value_main.Z.13
	.byte	0
	.byte	0
..___tag_value_main.Z.30:
	.long	0x00000000,0x00000000
..___tag_value_main.Z.32:
	.data
# -- End  main.Z
	.text
.L_2__routine_start_main.A_2:
# -- Begin  main.A
	.text
# mark_begin;
       .align    16,0x90
# --- main.()
main.A:
..B3.1:                         # Preds ..B3.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, main.A$$LSDA
..___tag_value_main.A.33:
..L34:
                                                         #28.11
..LN135:
	.loc    1  28  is_stmt 1
        pushq     %rbx                                          #28.11
	.cfi_def_cfa_offset 16
..LN136:
        movq      %rsp, %rbx                                    #28.11
	.cfi_def_cfa 3, 16
	.cfi_offset 3, -16
..LN137:
        andq      $-64, %rsp                                    #28.11
..LN138:
        pushq     %rbp                                          #28.11
..LN139:
        pushq     %rbp                                          #28.11
..LN140:
        movq      8(%rbx), %rbp                                 #28.11
..LN141:
        movq      %rbp, 8(%rsp)                                 #28.11
..LN142:
        movq      %rsp, %rbp                                    #28.11
	.cfi_escape 0x10, 0x06, 0x02, 0x76, 0x00
..LN143:
        pushq     %r12                                          #28.11
..LN144:
        pushq     %r15                                          #28.11
..LN145:
        subq      $32, %rsp                                     #28.11
..LN146:
        xorl      %esi, %esi                                    #28.11
..LN147:
        movl      $3, %edi                                      #28.11
..LN148:
        call      __intel_new_feature_proc_init                 #28.11
	.cfi_escape 0x10, 0x0c, 0x02, 0x76, 0x78
	.cfi_escape 0x10, 0x0f, 0x02, 0x76, 0x70
..LN149:
                                # LOE r13 r14
..B3.20:                        # Preds ..B3.1
..LN150:
        stmxcsr   -40(%rbp)                                     #28.11
..LN151:
        orl       $32832, -40(%rbp)                             #28.11
..LN152:
        ldmxcsr   -40(%rbp)                                     #28.11
..LN153:
	.loc    2  552  is_stmt 1
        movq      $0, -48(%rbp)                                 #552.31
..LN154:
                                # LOE r13 r14
..B3.2:                         # Preds ..B3.20
..LN155:
        movq      $0, -32(%rbp)                                 #552.31
..LN156:
                                # LOE r13 r14
..B3.3:                         # Preds ..B3.2
..___tag_value_main.A.41:
..LN157:
	.loc    1  30  is_stmt 1
#       std::chrono::_V2::system_clock::now()
        call      _ZNSt6chrono3_V212system_clock3nowEv          #30.11
..___tag_value_main.A.42:
..LN158:
                                # LOE rax r13 r14
..B3.21:                        # Preds ..B3.3
..LN159:
        movq      %rax, -48(%rbp)                               #30.11
..LN160:
                                # LOE r13 r14
..B3.4:                         # Preds ..B3.21
..LN161:
	.loc    1  17  is_stmt 1
        movl      $40000000, %eax                               #17.12
..LN162:
        subq      %rax, %rsp                                    #17.12
..LN163:
        movq      %rsp, %rax                                    #17.12
..LN164:
                                # LOE rax r13 r14
..B3.22:                        # Preds ..B3.4
..LN165:
        movq      %rax, %rsi                                    #17.12
..LN166:
                                # LOE rsi r13 r14
..B3.5:                         # Preds ..B3.22
..LN167:
        movl      $40000000, %eax                               #17.18
..LN168:
        subq      %rax, %rsp                                    #17.18
..LN169:
        movq      %rsp, %rax                                    #17.18
..LN170:
                                # LOE rax rsi r13 r14
..B3.23:                        # Preds ..B3.5
..LN171:
        movq      %rax, %rdx                                    #17.18
..LN172:
                                # LOE rdx rsi r13 r14
..B3.6:                         # Preds ..B3.23
..LN173:
	.loc    1  19  is_stmt 1
        movaps    .L_2il0floatpacket.5(%rip), %xmm0             #19.16
..LN174:
	.loc    1  18  is_stmt 1
        xorl      %ecx, %ecx                                    #18.5
..LN175:
        xorl      %eax, %eax                                    #18.5
..LN176:
                                # LOE rax rdx rcx rsi r13 r14 xmm0
..B3.7:                         # Preds ..B3.7 ..B3.6
..LN177:
	.loc    1  19  is_stmt 1
        movntpd   %xmm0, (%rsi,%rcx,8)                          #19.9
..LN178:
	.loc    1  20  is_stmt 1
        movntpd   %xmm0, (%rdx,%rcx,8)                          #20.9
..LN179:
	.loc    1  18  is_stmt 1
        addq      $2, %rcx                                      #18.5
..LN180:
        cmpq      $5000000, %rcx                                #18.5
..LN181:
        jb        ..B3.7        # Prob 82%                      #18.5
..LN182:
                                # LOE rax rdx rcx rsi r13 r14 xmm0
..B3.8:                         # Preds ..B3.7
..LN183:
        mfence                                                  #18.5
..LN184:
                                # LOE rax rdx rsi r13 r14
..B3.10:                        # Preds ..B3.8 ..B3.10
..LN185:
	.loc    1  24  is_stmt 1
        movaps    (%rsi,%rax,8), %xmm0                          #24.9
..LN186:
        addpd     (%rdx,%rax,8), %xmm0                          #24.9
..LN187:
        movaps    %xmm0, (%rsi,%rax,8)                          #24.9
..LN188:
	.loc    1  23  is_stmt 1
        addq      $2, %rax                                      #23.5
..LN189:
        cmpq      $5000000, %rax                                #23.5
..LN190:
        jb        ..B3.10       # Prob 82%                      #23.5
..LN191:
                                # LOE rax rdx rsi r13 r14
..B3.11:                        # Preds ..B3.10
..LN192:
	.loc    1  26  is_stmt 1
        movl      $40000000, %eax                               #26.12
..LN193:
        addq      %rax, %rsp                                    #26.12
..LN194:
                                # LOE rsi r13 r14
..B3.12:                        # Preds ..B3.11
..LN195:
        movq      %rsi, %rdx                                    #26.12
..LN196:
        movl      $40000000, %eax                               #26.12
..LN197:
        addq      %rax, %rsp                                    #26.12
..LN198:
                                # LOE r13 r14
..B3.13:                        # Preds ..B3.12
..___tag_value_main.A.43:
..LN199:
	.loc    1  32  is_stmt 1
#       std::chrono::_V2::system_clock::now()
        call      _ZNSt6chrono3_V212system_clock3nowEv          #32.9
..___tag_value_main.A.44:
..LN200:
                                # LOE rax r13 r14
..B3.24:                        # Preds ..B3.13
..LN201:
        movq      %rax, %r15                                    #32.9
..LN202:
        movq      %r15, -32(%rbp)                               #32.9
..LN203:
                                # LOE r13 r14 r15
..B3.14:                        # Preds ..B3.24
..LN204:
	.loc    1  36  is_stmt 1
        movl      $_ZSt4cout, %edi                              #36.7
..LN205:
        movl      $.L_2__STRING.0, %esi                         #36.7
..LN206:
	.loc    1  34  is_stmt 1
        movq      -48(%rbp), %r12                               #34.31
..___tag_value_main.A.45:
..LN207:
	.loc    1  36  is_stmt 1
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #36.7
..___tag_value_main.A.46:
..LN208:
                                # LOE rax r12 r13 r14 r15
..B3.25:                        # Preds ..B3.14
..LN209:
        movq      %rax, %rdi                                    #36.7
..LN210:
                                # LOE rdi r12 r13 r14 r15
..B3.15:                        # Preds ..B3.25
..LN211:
	.loc    2  398  is_stmt 1
        subq      %r12, %r15                                    #398.14
..LN212:
	.loc    1  36  is_stmt 1
        movq      $0x431bde82d7b634db, %rax                     #36.26
..LN213:
        imulq     %r15                                          #36.26
..LN214:
        sarq      $18, %rdx                                     #36.26
..LN215:
        pxor      %xmm0, %xmm0                                  #36.26
..LN216:
        sarq      $63, %r15                                     #36.26
..LN217:
        subq      %r15, %rdx                                    #36.26
..LN218:
        cvtsi2sdq %rdx, %xmm0                                   #36.26
..LN219:
        divsd     .L_2il0floatpacket.3(%rip), %xmm0             #36.26
..___tag_value_main.A.47:
..LN220:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #36.26
..___tag_value_main.A.48:
..LN221:
                                # LOE rax r13 r14
..B3.16:                        # Preds ..B3.15
..LN222:
        movq      %rax, %rdi                                    #36.39
..LN223:
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #36.39
..___tag_value_main.A.49:
..LN224:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #36.39
..___tag_value_main.A.50:
..LN225:
                                # LOE r13 r14
..B3.17:                        # Preds ..B3.16
..LN226:
	.loc    1  37  is_stmt 1
        xorl      %eax, %eax                                    #37.10
..LN227:
        lea       -16(%rbp), %rsp                               #37.10
	.cfi_restore 15
..LN228:
        popq      %r15                                          #37.10
	.cfi_restore 12
..LN229:
        popq      %r12                                          #37.10
..LN230:
        popq      %rbp                                          #37.10
	.cfi_restore 6
..LN231:
        movq      %rbx, %rsp                                    #37.10
..LN232:
        popq      %rbx                                          #37.10
	.cfi_def_cfa 7, 8
	.cfi_restore 3
..LN233:
        ret                                                     #37.10
        .align    16,0x90
	.cfi_endproc
..LN234:
                                # LOE
..LN235:
# mark_end;
	.type	main.A,@function
	.size	main.A,.-main.A
..LNmain.A.236:
.LNmain.A:
	.section .gcc_except_table, "a"
	.align 4
main.A$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value_main.A.60 - ..___tag_value_main.A.59
..___tag_value_main.A.59:
	.byte	1
	.uleb128	..___tag_value_main.A.58 - ..___tag_value_main.A.57
..___tag_value_main.A.57:
	.uleb128	..___tag_value_main.A.41 - ..___tag_value_main.A.33
	.uleb128	..___tag_value_main.A.50 - ..___tag_value_main.A.41
	.byte	0
	.byte	0
..___tag_value_main.A.58:
	.long	0x00000000,0x00000000
..___tag_value_main.A.60:
	.data
# -- End  main.A
	.section .text._ZNSt11char_traitsIcE6lengthEPKc, "xaG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
..TXTST1:
.L_2__routine_start__ZNSt11char_traitsIcE6lengthEPKc_3:
# -- Begin  _ZNSt11char_traitsIcE6lengthEPKc
	.section .text._ZNSt11char_traitsIcE6lengthEPKc, "xaG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt11char_traitsIcE6lengthEPKc
# --- std::char_traits<char>::length(const std::char_traits<char>::char_type *)
_ZNSt11char_traitsIcE6lengthEPKc:
# parameter 1(__s): %rdi
..B4.1:                         # Preds ..B4.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.61:
..L62:
                                                         #259.7
..LN237:
	.file   3 "/usr/include/c++/4.8.5/bits/char_traits.h"
	.loc    3  259  is_stmt 1
        pushq     %rsi                                          #259.7
	.cfi_def_cfa_offset 16
..LN238:
        movq      %rdi, %rdx                                    #259.16
..LN239:
        movq      %rdx, %rcx                                    #259.16
..LN240:
        andq      $-16, %rdx                                    #259.16
..LN241:
        pxor      %xmm0, %xmm0                                  #259.16
..LN242:
        pcmpeqb   (%rdx), %xmm0                                 #259.16
..LN243:
        pmovmskb  %xmm0, %eax                                   #259.16
..LN244:
        andl      $15, %ecx                                     #259.16
..LN245:
        shrl      %cl, %eax                                     #259.16
..LN246:
        bsf       %eax, %eax                                    #259.16
..LN247:
        jne       ..L64         # Prob 60%                      #259.16
..LN248:
        movq      %rdx, %rax                                    #259.16
..LN249:
        addq      %rcx, %rdx                                    #259.16
..LN250:
        call      __intel_sse2_strlen                           #259.16
..L64:                                                          #
..LN251:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B4.4:                         # Preds ..B4.1
..LN252:
        popq      %rcx                                          #259.16
	.cfi_def_cfa_offset 8
..LN253:
        ret                                                     #259.16
        .align    16,0x90
	.cfi_endproc
..LN254:
                                # LOE
..LN255:
# mark_end;
	.type	_ZNSt11char_traitsIcE6lengthEPKc,@function
	.size	_ZNSt11char_traitsIcE6lengthEPKc,.-_ZNSt11char_traitsIcE6lengthEPKc
..LN_ZNSt11char_traitsIcE6lengthEPKc.256:
.LN_ZNSt11char_traitsIcE6lengthEPKc:
	.data
# -- End  _ZNSt11char_traitsIcE6lengthEPKc
	.text
.L_2__routine_start__Z11checkVectori_4:
# -- Begin  _Z11checkVectori
	.text
# mark_begin;
       .align    16,0x90
	.globl _Z11checkVectori
# --- checkVector(int)
_Z11checkVectori:
# parameter 1(n): %edi
..B5.1:                         # Preds ..B5.0
..LN257:
	.loc    1  16  is_stmt 1
        pushq     %rsi                                          #16.26
..LN258:
        movq      $0x7389d97ff, %rdx                            #16.26
..LN259:
                                # LOE rdx rbx rbp r12 r13 r14 r15 edi
..B5.3:                         # Preds ..B5.1 ..B5.8
..LN260:
        movq      __intel_cpu_feature_indicator(%rip), %rax     #16.26
..LN261:
        andq      %rdx, %rax                                    #16.26
..LN262:
        cmpq      %rdx, %rax                                    #16.26
..LN263:
        jne       ..B5.6        # Prob 10%                      #16.26
..LN264:
                                # LOE rdx rbx rbp r12 r13 r14 r15 edi
..B5.4:                         # Preds ..B5.3
..LN265:
        addq      $8, %rsp                                      #16.26
..LN266:
        jmp       _Z11checkVectori.Z                            #16.26
..LN267:
                                # LOE
..B5.6:                         # Preds ..B5.3
..LN268:
        testb     $1, __intel_cpu_feature_indicator(%rip)       #16.26
..LN269:
        je        ..B5.8        # Prob 10%                      #16.26
..LN270:
                                # LOE rdx rbx rbp r12 r13 r14 r15 edi
..B5.7:                         # Preds ..B5.6
..LN271:
        addq      $8, %rsp                                      #16.26
..LN272:
        jmp       _Z11checkVectori.A                            #16.26
..LN273:
                                # LOE
..B5.8:                         # Preds ..B5.6
..LN274:
        call      __intel_cpu_features_init                     #16.26
..LN275:
        jmp       ..B5.3        # Prob 100%                     #16.26
        .align    16,0x90
..LN276:
                                # LOE rdx rbx rbp r12 r13 r14 r15 edi
..LN277:
# mark_end;
	.type	_Z11checkVectori,@function
	.size	_Z11checkVectori,.-_Z11checkVectori
..LN_Z11checkVectori.278:
.LN_Z11checkVectori:
	.section .gcc_except_table, "a"
	.align 4
_Z11checkVectori$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__Z11checkVectori.70 - ..___tag_value__Z11checkVectori.69
..___tag_value__Z11checkVectori.69:
	.byte	1
	.uleb128	..___tag_value__Z11checkVectori.68 - ..___tag_value__Z11checkVectori.67
..___tag_value__Z11checkVectori.67:
..___tag_value__Z11checkVectori.68:
	.long	0x00000000,0x00000000
..___tag_value__Z11checkVectori.70:
# -- End  _Z11checkVectori
	.text
.L_2__routine_start__Z11checkVectori.Z_5:
# -- Begin  _Z11checkVectori.Z
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
# --- checkVector.(int)
_Z11checkVectori.Z:
# parameter 1(n): %edi
..B6.1:                         # Preds ..B6.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _Z11checkVectori.Z$$LSDA
..___tag_value__Z11checkVectori.Z.71:
..L72:
                                                         #16.26
..LN279:
	.loc    1  16  is_stmt 1
        pushq     %rbx                                          #16.26
	.cfi_def_cfa_offset 16
..LN280:
        movq      %rsp, %rbx                                    #16.26
	.cfi_def_cfa 3, 16
	.cfi_offset 3, -16
..LN281:
        andq      $-64, %rsp                                    #16.26
..LN282:
        pushq     %rbp                                          #16.26
..LN283:
        pushq     %rbp                                          #16.26
..LN284:
        movq      8(%rbx), %rbp                                 #16.26
..LN285:
        movq      %rbp, 8(%rsp)                                 #16.26
..LN286:
        movq      %rsp, %rbp                                    #16.26
	.cfi_escape 0x10, 0x06, 0x02, 0x76, 0x00
..LN287:
        subq      $48, %rsp                                     #16.26 c1
..LN288:
        movq      %r13, -48(%rbp)                               #16.26 c1
..LN289:
	.loc    1  17  is_stmt 1
        movslq    %edi, %rcx                                    #17.15 c1
..LN290:
        lea       (,%rcx,8), %r8                                #17.12 c3
..LN291:
        movq      %r8, %rax                                     #17.12 c5
..LN292:
        addq      $63, %rax                                     #17.12 c7
..LN293:
        andq      $-64, %rax                                    #17.12
..LN294:
        subq      %rax, %rsp                                    #17.12
..LN295:
        movq      %rsp, %rax                                    #17.12
	.cfi_escape 0x10, 0x0d, 0x02, 0x76, 0x50
..LN296:
                                # LOE rax rcx r8 r12 r14 r15 edi
..B6.27:                        # Preds ..B6.1
..LN297:
        movq      %rax, %rsi                                    #17.12 c1
..LN298:
                                # LOE rcx rsi r8 r12 r14 r15 edi
..B6.2:                         # Preds ..B6.27
..LN299:
        movq      %r8, %rax                                     #17.18 c1
..LN300:
        addq      $63, %rax                                     #17.18 c3
..LN301:
        andq      $-64, %rax                                    #17.18
..LN302:
        subq      %rax, %rsp                                    #17.18
..LN303:
        movq      %rsp, %rax                                    #17.18
..LN304:
                                # LOE rax rcx rsi r8 r12 r14 r15 edi
..B6.3:                         # Preds ..B6.2
..LN305:
	.loc    1  18  is_stmt 1
        testl     %edi, %edi                                    #18.25 c1
..LN306:
        jle       ..B6.20       # Prob 50%                      #18.25 c3
..LN307:
                                # LOE rax rcx rsi r8 r12 r14 r15 edi
..B6.4:                         # Preds ..B6.3
..LN308:
        cmpl      $16, %edi                                     #18.5 c1
..LN309:
        jl        ..B6.24       # Prob 10%                      #18.5 c3
..LN310:
                                # LOE rax rcx rsi r8 r12 r14 r15 edi
..B6.5:                         # Preds ..B6.4
..LN311:
        movl      %edi, %edx                                    #18.5 c1
..LN312:
        xorl      %r10d, %r10d                                  #18.5 c1
..LN313:
	.loc    1  19  is_stmt 1
        vmovups   .L_2il0floatpacket.2(%rip), %zmm0             #19.16 c1
..LN314:
	.loc    1  18  is_stmt 1
        andl      $-16, %edx                                    #18.5 c3
..LN315:
        movslq    %edx, %r9                                     #18.5 c5
..LN316:
                                # LOE rax rcx rsi r8 r9 r10 r12 r14 r15 edx edi zmm0
..B6.6:                         # Preds ..B6.6 ..B6.5
..LN317:
	.loc    1  19  is_stmt 1
        vmovupd   %zmm0, (%rsi,%r10,8)                          #19.9 c1
..LN318:
	.loc    1  20  is_stmt 1
        vmovupd   %zmm0, (%rax,%r10,8)                          #20.9 c1
..LN319:
	.loc    1  19  is_stmt 1
        vmovupd   %zmm0, 64(%rsi,%r10,8)                        #19.9 c7 stall 2
..LN320:
	.loc    1  20  is_stmt 1
        vmovupd   %zmm0, 64(%rax,%r10,8)                        #20.9 c7
..LN321:
	.loc    1  18  is_stmt 1
        addq      $16, %r10                                     #18.5 c7
..LN322:
        cmpq      %r9, %r10                                     #18.5 c9
..LN323:
        jb        ..B6.6        # Prob 82%                      #18.5 c11
..LN324:
                                # LOE rax rcx rsi r8 r9 r10 r12 r14 r15 edx edi zmm0
..B6.8:                         # Preds ..B6.6 ..B6.24
..LN325:
        lea       1(%rdx), %r9d                                 #18.5 c1
..LN326:
        cmpl      %r9d, %edi                                    #18.5 c3
..LN327:
        jb        ..B6.12       # Prob 50%                      #18.5 c5
..LN328:
                                # LOE rax rcx rsi r8 r12 r14 r15 edx edi
..B6.9:                         # Preds ..B6.8
..LN329:
        movl      $8, %r9d                                      #18.5 c1
..LN330:
        vmovdqu   .L_2il0floatpacket.6(%rip), %ymm2             #18.5 c1
..LN331:
        xorl      %r13d, %r13d                                  #18.5 c1
..LN332:
        kmovw     .L_2il0floatpacket.7(%rip), %k1               #18.5 c1
..LN333:
        vmovd     %r9d, %xmm1                                   #18.5 c3
..LN334:
	.loc    1  19  is_stmt 1
        movslq    %edx, %r9                                     #19.9 c3
..LN335:
	.loc    1  18  is_stmt 1
        negl      %edx                                          #18.5 c3
..LN336:
        addl      %edi, %edx                                    #18.5 c5
..LN337:
        vpbroadcastd %xmm1, %ymm3                               #18.5 c5
..LN338:
        vmovd     %edx, %xmm0                                   #18.5 c7
..LN339:
	.loc    1  20  is_stmt 1
        lea       (%rax,%r9,8), %r11                            #20.9 c7
..LN340:
	.loc    1  19  is_stmt 1
        lea       (%rsi,%r9,8), %r10                            #19.9 c7
..LN341:
	.loc    1  18  is_stmt 1
        negq      %r9                                           #18.5 c7
..LN342:
        xorl      %edx, %edx                                    #18.5 c7
..LN343:
        vpbroadcastd %xmm0, %ymm0                               #18.5 c9
..LN344:
        addq      %rcx, %r9                                     #18.5 c9
..LN345:
	.loc    1  19  is_stmt 1
        vbroadcastsd .L_2il0floatpacket.4(%rip), %zmm1          #19.16 c9
..LN346:
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 r15 edi ymm2 ymm3 zmm0 zmm1 k1
..B6.10:                        # Preds ..B6.10 ..B6.9
..LN347:
	.loc    1  18  is_stmt 1
        addq      $8, %r13                                      #18.5 c1
..LN348:
        vpcmpgtd  %zmm0, %zmm2, %k0{%k1}                        #18.5 c3
..LN349:
        vpaddd    %ymm3, %ymm2, %ymm2                           #18.5 c3
..LN350:
        knotw     %k0, %k2                                      #18.5 c5
..LN351:
	.loc    1  19  is_stmt 1
        vmovapd   %zmm1, (%rdx,%r10){%k2}                       #19.9 c7
..LN352:
	.loc    1  20  is_stmt 1
        vmovapd   %zmm1, (%rdx,%r11){%k2}                       #20.9 c7
..LN353:
	.loc    1  18  is_stmt 1
        addq      $64, %rdx                                     #18.5 c7
..LN354:
        cmpq      %r9, %r13                                     #18.5 c7
..LN355:
        jb        ..B6.10       # Prob 82%                      #18.5 c9
..LN356:
                                # LOE rax rdx rcx rsi r8 r9 r10 r11 r12 r13 r14 r15 edi ymm2 ymm3 zmm0 zmm1 k1
..B6.12:                        # Preds ..B6.10 ..B6.8
..LN357:
	.loc    1  23  is_stmt 1
        cmpl      $16, %edi                                     #23.5 c1
..LN358:
        jl        ..B6.23       # Prob 10%                      #23.5 c3
..LN359:
                                # LOE rax rcx rsi r8 r12 r14 r15 edi
..B6.13:                        # Preds ..B6.12
..LN360:
        movl      %edi, %r13d                                   #23.5 c1
..LN361:
        xorl      %r10d, %r10d                                  #23.5 c1
..LN362:
        andl      $-16, %r13d                                   #23.5 c3
..LN363:
        movslq    %r13d, %r9                                    #23.5 c5
..LN364:
                                # LOE rax rcx rsi r8 r9 r10 r12 r14 r15 edi r13d
..B6.14:                        # Preds ..B6.14 ..B6.13
..LN365:
	.loc    1  24  is_stmt 1
        vmovups   (%rsi,%r10,8), %zmm0                          #24.9 c1
..LN366:
        vmovups   64(%rsi,%r10,8), %zmm2                        #24.9 c1
..LN367:
        vaddpd    (%rax,%r10,8), %zmm0, %zmm1                   #24.9 c7 stall 2
..LN368:
        vmovupd   %zmm1, (%rsi,%r10,8)                          #24.9 c13 stall 2
..LN369:
        vaddpd    64(%rax,%r10,8), %zmm2, %zmm3                 #24.9 c13
..LN370:
        vmovupd   %zmm3, 64(%rsi,%r10,8)                        #24.9 c19 stall 2
..LN371:
	.loc    1  23  is_stmt 1
        addq      $16, %r10                                     #23.5 c19
..LN372:
        cmpq      %r9, %r10                                     #23.5 c21
..LN373:
        jb        ..B6.14       # Prob 82%                      #23.5 c23
..LN374:
                                # LOE rax rcx rsi r8 r9 r10 r12 r14 r15 edi r13d
..B6.16:                        # Preds ..B6.14 ..B6.23
..LN375:
        lea       1(%r13), %r9d                                 #23.5 c1
..LN376:
        cmpl      %r9d, %edi                                    #23.5 c3
..LN377:
        jb        ..B6.20       # Prob 50%                      #23.5 c5
..LN378:
                                # LOE rax rcx rsi r8 r12 r14 r15 edi r13d
..B6.17:                        # Preds ..B6.16
..LN379:
	.loc    1  24  is_stmt 1
        movslq    %r13d, %r13                                   #24.9 c1
..LN380:
	.loc    1  23  is_stmt 1
        movl      $8, %r9d                                      #23.5 c1
..LN381:
        subl      %r13d, %edi                                   #23.5 c3
..LN382:
        vmovd     %r9d, %xmm1                                   #23.5 c3
..LN383:
        movl      $255, %edx                                    #23.5 c3
..LN384:
	.loc    1  24  is_stmt 1
        lea       (%rax,%r13,8), %r11                           #24.17 c3
..LN385:
        lea       (%rsi,%r13,8), %r9                            #24.9 c3
..LN386:
	.loc    1  23  is_stmt 1
        vmovd     %edi, %xmm0                                   #23.5 c5
..LN387:
        vpbroadcastd %xmm1, %ymm2                               #23.5 c5
..LN388:
        vmovdqu   .L_2il0floatpacket.6(%rip), %ymm1             #23.5 c5
..LN389:
        xorl      %r10d, %r10d                                  #23.5 c5
..LN390:
        vpbroadcastd %xmm0, %ymm0                               #23.5 c7
..LN391:
        subq      %r13, %rcx                                    #23.5 c7
..LN392:
        xorl      %edi, %edi                                    #23.5 c9
..LN393:
        kmovw     %edx, %k1                                     #23.5 c9
..LN394:
                                # LOE rax rcx rsi rdi r8 r9 r10 r11 r12 r14 r15 ymm1 ymm2 zmm0 k1
..B6.18:                        # Preds ..B6.18 ..B6.17
..LN395:
        addq      $8, %r10                                      #23.5 c1
..LN396:
        vpcmpgtd  %zmm0, %zmm1, %k0{%k1}                        #23.5 c3
..LN397:
        vpaddd    %ymm2, %ymm1, %ymm1                           #23.5 c3
..LN398:
        knotw     %k0, %k2                                      #23.5 c5
..LN399:
	.loc    1  24  is_stmt 1
        vmovupd   (%rdi,%r9), %zmm3{%k2}{z}                     #24.9 c7
..LN400:
        vmovupd   (%rdi,%r11), %zmm4{%k2}{z}                    #24.17 c7
..LN401:
        vaddpd    %zmm4, %zmm3, %zmm5                           #24.9 c13 stall 2
..LN402:
        vmovapd   %zmm5, (%rdi,%r9){%k2}                        #24.9 c19 stall 2
..LN403:
	.loc    1  23  is_stmt 1
        addq      $64, %rdi                                     #23.5 c19
..LN404:
        cmpq      %rcx, %r10                                    #23.5 c19
..LN405:
        jb        ..B6.18       # Prob 82%                      #23.5 c21
..LN406:
                                # LOE rax rcx rsi rdi r8 r9 r10 r11 r12 r14 r15 ymm1 ymm2 zmm0 k1
..B6.20:                        # Preds ..B6.18 ..B6.3 ..B6.16
..LN407:
	.loc    1  26  is_stmt 1
        movq      %rax, %rdx                                    #26.12 c1
..LN408:
        movq      %r8, %rax                                     #26.12 c1
..LN409:
        vmovsd    (%rsi), %xmm0                                 #26.12 c1
..LN410:
        addq      $63, %rax                                     #26.12 c3
..LN411:
        andq      $-64, %rax                                    #26.12
..LN412:
        addq      %rax, %rsp                                    #26.12
..LN413:
                                # LOE rsi r8 r12 r14 r15 xmm0
..B6.21:                        # Preds ..B6.20
..LN414:
        movq      %rsi, %rdx                                    #26.12 c1
..LN415:
        movq      %r8, %rax                                     #26.12 c1
..LN416:
        addq      $63, %rax                                     #26.12 c3
..LN417:
        andq      $-64, %rax                                    #26.12
..LN418:
        addq      %rax, %rsp                                    #26.12
..LN419:
                                # LOE r12 r14 r15 xmm0
..B6.22:                        # Preds ..B6.21
..LN420:
        movq      -48(%rbp), %r13                               #26.5 c1
	.cfi_restore 13
..LN421:
        movq      %rbp, %rsp                                    #26.5 c3
..LN422:
        popq      %rbp                                          #26.5
	.cfi_restore 6
..LN423:
        movq      %rbx, %rsp                                    #26.5
..LN424:
        popq      %rbx                                          #26.5
	.cfi_def_cfa 7, 8
	.cfi_restore 3
..LN425:
        ret                                                     #26.5
	.cfi_def_cfa 3, 16
	.cfi_offset 3, -16
	.cfi_escape 0x10, 0x06, 0x02, 0x76, 0x00
	.cfi_escape 0x10, 0x0d, 0x02, 0x76, 0x50
..LN426:
                                # LOE
..B6.23:                        # Preds ..B6.12                 # Infreq
..LN427:
	.loc    1  23  is_stmt 1
        xorl      %r13d, %r13d                                  #23.5 c1
..LN428:
        jmp       ..B6.16       # Prob 100%                     #23.5 c1
..LN429:
                                # LOE rax rcx rsi r8 r12 r14 r15 edi r13d
..B6.24:                        # Preds ..B6.4                  # Infreq
..LN430:
	.loc    1  18  is_stmt 1
        xorl      %edx, %edx                                    #18.5 c1
..LN431:
        jmp       ..B6.8        # Prob 100%                     #18.5 c1
        .align    16,0x90
	.cfi_endproc
..LN432:
                                # LOE rax rcx rsi r8 r12 r14 r15 edx edi
..LN433:
# mark_end;
	.type	_Z11checkVectori.Z,@function
	.size	_Z11checkVectori.Z,.-_Z11checkVectori.Z
..LN_Z11checkVectori.Z.434:
.LN_Z11checkVectori.Z:
	.section .gcc_except_table, "a"
	.align 4
_Z11checkVectori.Z$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__Z11checkVectori.Z.90 - ..___tag_value__Z11checkVectori.Z.89
..___tag_value__Z11checkVectori.Z.89:
	.byte	1
	.uleb128	..___tag_value__Z11checkVectori.Z.88 - ..___tag_value__Z11checkVectori.Z.87
..___tag_value__Z11checkVectori.Z.87:
..___tag_value__Z11checkVectori.Z.88:
	.long	0x00000000,0x00000000
..___tag_value__Z11checkVectori.Z.90:
	.data
# -- End  _Z11checkVectori.Z
	.text
.L_2__routine_start__Z11checkVectori.A_6:
# -- Begin  _Z11checkVectori.A
	.text
# mark_begin;
       .align    16,0x90
# --- checkVector.(int)
_Z11checkVectori.A:
# parameter 1(n): %edi
..B7.1:                         # Preds ..B7.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _Z11checkVectori.A$$LSDA
..___tag_value__Z11checkVectori.A.91:
..L92:
                                                         #16.26
..LN435:
	.loc    1  16  is_stmt 1
        pushq     %rbx                                          #16.26
	.cfi_def_cfa_offset 16
..LN436:
        movq      %rsp, %rbx                                    #16.26
	.cfi_def_cfa 3, 16
	.cfi_offset 3, -16
..LN437:
        andq      $-64, %rsp                                    #16.26
..LN438:
        pushq     %rbp                                          #16.26
..LN439:
        pushq     %rbp                                          #16.26
..LN440:
        movq      8(%rbx), %rbp                                 #16.26
..LN441:
        movq      %rbp, 8(%rsp)                                 #16.26
..LN442:
        movq      %rsp, %rbp                                    #16.26
	.cfi_escape 0x10, 0x06, 0x02, 0x76, 0x00
..LN443:
        subq      $48, %rsp                                     #16.26
..LN444:
        movl      %edi, %r9d                                    #16.26
..LN445:
        movslq    %r9d, %r8                                     #16.26
..LN446:
	.loc    1  17  is_stmt 1
        lea       (,%r8,8), %rsi                                #17.12
..LN447:
        movq      %rsi, %rax                                    #17.12
..LN448:
        addq      $63, %rax                                     #17.12
..LN449:
        andq      $-64, %rax                                    #17.12
..LN450:
        subq      %rax, %rsp                                    #17.12
..LN451:
        movq      %rsp, %rax                                    #17.12
..LN452:
                                # LOE rax rsi r8 r12 r13 r14 r15 r9d
..B7.27:                        # Preds ..B7.1
..LN453:
        movq      %rax, %rcx                                    #17.12
..LN454:
                                # LOE rcx rsi r8 r12 r13 r14 r15 r9d
..B7.2:                         # Preds ..B7.27
..LN455:
        movq      %rsi, %rax                                    #17.18
..LN456:
        addq      $63, %rax                                     #17.18
..LN457:
        andq      $-64, %rax                                    #17.18
..LN458:
        subq      %rax, %rsp                                    #17.18
..LN459:
        movq      %rsp, %rax                                    #17.18
..LN460:
                                # LOE rax rcx rsi r8 r12 r13 r14 r15 r9d
..B7.3:                         # Preds ..B7.2
..LN461:
	.loc    1  18  is_stmt 1
        testq     %r8, %r8                                      #18.25
..LN462:
        jle       ..B7.20       # Prob 50%                      #18.25
..LN463:
                                # LOE rax rcx rsi r8 r12 r13 r14 r15 r9d
..B7.4:                         # Preds ..B7.3
..LN464:
        cmpq      $8, %r8                                       #18.5
..LN465:
        jl        ..B7.24       # Prob 10%                      #18.5
..LN466:
                                # LOE rax rcx rsi r8 r12 r13 r14 r15 r9d
..B7.5:                         # Preds ..B7.4
..LN467:
        movl      %r9d, %r10d                                   #18.5
..LN468:
        xorl      %r11d, %r11d                                  #18.5
..LN469:
        andl      $-8, %r10d                                    #18.5
..LN470:
	.loc    1  19  is_stmt 1
        movaps    .L_2il0floatpacket.5(%rip), %xmm0             #19.16
..LN471:
	.loc    1  18  is_stmt 1
        movslq    %r10d, %rdi                                   #18.5
..LN472:
                                # LOE rax rcx rsi rdi r8 r11 r12 r13 r14 r15 r9d r10d xmm0
..B7.6:                         # Preds ..B7.6 ..B7.5
..LN473:
	.loc    1  19  is_stmt 1
        movaps    %xmm0, (%rcx,%r11,8)                          #19.9
..LN474:
	.loc    1  20  is_stmt 1
        movaps    %xmm0, (%rax,%r11,8)                          #20.9
..LN475:
	.loc    1  19  is_stmt 1
        movaps    %xmm0, 16(%rcx,%r11,8)                        #19.9
..LN476:
	.loc    1  20  is_stmt 1
        movaps    %xmm0, 16(%rax,%r11,8)                        #20.9
..LN477:
	.loc    1  19  is_stmt 1
        movaps    %xmm0, 32(%rcx,%r11,8)                        #19.9
..LN478:
	.loc    1  20  is_stmt 1
        movaps    %xmm0, 32(%rax,%r11,8)                        #20.9
..LN479:
	.loc    1  19  is_stmt 1
        movaps    %xmm0, 48(%rcx,%r11,8)                        #19.9
..LN480:
	.loc    1  20  is_stmt 1
        movaps    %xmm0, 48(%rax,%r11,8)                        #20.9
..LN481:
	.loc    1  18  is_stmt 1
        addq      $8, %r11                                      #18.5
..LN482:
        cmpq      %rdi, %r11                                    #18.5
..LN483:
        jb        ..B7.6        # Prob 82%                      #18.5
..LN484:
                                # LOE rax rcx rsi rdi r8 r11 r12 r13 r14 r15 r9d r10d xmm0
..B7.8:                         # Preds ..B7.6 ..B7.24
..LN485:
        xorl      %edi, %edi                                    #18.5
..LN486:
        lea       1(%r10), %r11d                                #18.5
..LN487:
        movslq    %r11d, %r11                                   #18.5
..LN488:
        cmpq      %r11, %r8                                     #18.5
..LN489:
        jb        ..B7.12       # Prob 9%                       #18.5
..LN490:
                                # LOE rax rcx rsi rdi r8 r12 r13 r14 r15 r9d r10d
..B7.9:                         # Preds ..B7.8
..LN491:
	.loc    1  19  is_stmt 1
        movslq    %r10d, %r10                                   #19.9
..LN492:
	.loc    1  18  is_stmt 1
        movq      %r12, -48(%rbp)                               #18.5
	.cfi_escape 0x10, 0x0c, 0x02, 0x76, 0x50
..LN493:
        movq      $0x3ff0000000000000, %r12                     #18.5
..LN494:
	.loc    1  20  is_stmt 1
        lea       (%rax,%r10,8), %rdx                           #20.9
..LN495:
	.loc    1  19  is_stmt 1
        lea       (%rcx,%r10,8), %r11                           #19.9
..LN496:
	.loc    1  18  is_stmt 1
        negq      %r10                                          #18.5
..LN497:
        addq      %r8, %r10                                     #18.5
..LN498:
                                # LOE rax rdx rcx rsi rdi r8 r10 r11 r12 r13 r14 r15 r9d
..B7.10:                        # Preds ..B7.10 ..B7.9
..LN499:
	.loc    1  19  is_stmt 1
        movq      %r12, (%r11,%rdi,8)                           #19.9
..LN500:
	.loc    1  20  is_stmt 1
        movq      %r12, (%rdx,%rdi,8)                           #20.9
..LN501:
	.loc    1  18  is_stmt 1
        incq      %rdi                                          #18.5
..LN502:
        cmpq      %r10, %rdi                                    #18.5
..LN503:
        jb        ..B7.10       # Prob 82%                      #18.5
..LN504:
                                # LOE rax rdx rcx rsi rdi r8 r10 r11 r12 r13 r14 r15 r9d
..B7.11:                        # Preds ..B7.10
..LN505:
        movq      -48(%rbp), %r12                               #
	.cfi_restore 12
..LN506:
                                # LOE rax rcx rsi r8 r12 r13 r14 r15 r9d
..B7.12:                        # Preds ..B7.8 ..B7.11
..LN507:
	.loc    1  23  is_stmt 1
        cmpq      $8, %r8                                       #23.5
..LN508:
        jl        ..B7.23       # Prob 10%                      #23.5
..LN509:
                                # LOE rax rcx rsi r8 r12 r13 r14 r15 r9d
..B7.13:                        # Preds ..B7.12
..LN510:
        andl      $-8, %r9d                                     #23.5
..LN511:
        xorl      %r10d, %r10d                                  #23.5
..LN512:
        movslq    %r9d, %rdi                                    #23.5
        .align    16,0x90
..LN513:
                                # LOE rax rcx rsi rdi r8 r10 r12 r13 r14 r15 r9d
..B7.14:                        # Preds ..B7.14 ..B7.13
..LN514:
	.loc    1  24  is_stmt 1
        movaps    (%rcx,%r10,8), %xmm0                          #24.9
..LN515:
        movaps    16(%rcx,%r10,8), %xmm1                        #24.9
..LN516:
        movaps    32(%rcx,%r10,8), %xmm2                        #24.9
..LN517:
        movaps    48(%rcx,%r10,8), %xmm3                        #24.9
..LN518:
        addpd     (%rax,%r10,8), %xmm0                          #24.9
..LN519:
        addpd     16(%rax,%r10,8), %xmm1                        #24.9
..LN520:
        addpd     32(%rax,%r10,8), %xmm2                        #24.9
..LN521:
        addpd     48(%rax,%r10,8), %xmm3                        #24.9
..LN522:
        movaps    %xmm0, (%rcx,%r10,8)                          #24.9
..LN523:
        movaps    %xmm1, 16(%rcx,%r10,8)                        #24.9
..LN524:
        movaps    %xmm2, 32(%rcx,%r10,8)                        #24.9
..LN525:
        movaps    %xmm3, 48(%rcx,%r10,8)                        #24.9
..LN526:
	.loc    1  23  is_stmt 1
        addq      $8, %r10                                      #23.5
..LN527:
        cmpq      %rdi, %r10                                    #23.5
..LN528:
        jb        ..B7.14       # Prob 82%                      #23.5
..LN529:
                                # LOE rax rcx rsi rdi r8 r10 r12 r13 r14 r15 r9d
..B7.16:                        # Preds ..B7.14 ..B7.23
..LN530:
        xorl      %edi, %edi                                    #23.5
..LN531:
        lea       1(%r9), %r10d                                 #23.5
..LN532:
        movslq    %r10d, %r10                                   #23.5
..LN533:
        cmpq      %r10, %r8                                     #23.5
..LN534:
        jb        ..B7.20       # Prob 9%                       #23.5
..LN535:
                                # LOE rax rcx rsi rdi r8 r12 r13 r14 r15 r9d
..B7.17:                        # Preds ..B7.16
..LN536:
	.loc    1  24  is_stmt 1
        movslq    %r9d, %r9                                     #24.9
..LN537:
	.loc    1  23  is_stmt 1
        subq      %r9, %r8                                      #23.5
..LN538:
	.loc    1  24  is_stmt 1
        lea       (%rax,%r9,8), %r11                            #24.17
..LN539:
        lea       (%rcx,%r9,8), %r10                            #24.9
..LN540:
                                # LOE rax rcx rsi rdi r8 r10 r11 r12 r13 r14 r15
..B7.18:                        # Preds ..B7.18 ..B7.17
..LN541:
        movsd     (%r10,%rdi,8), %xmm0                          #24.9
..LN542:
        addsd     (%r11,%rdi,8), %xmm0                          #24.9
..LN543:
        movsd     %xmm0, (%r10,%rdi,8)                          #24.9
..LN544:
	.loc    1  23  is_stmt 1
        incq      %rdi                                          #23.5
..LN545:
        cmpq      %r8, %rdi                                     #23.5
..LN546:
        jb        ..B7.18       # Prob 82%                      #23.5
..LN547:
                                # LOE rax rcx rsi rdi r8 r10 r11 r12 r13 r14 r15
..B7.20:                        # Preds ..B7.18 ..B7.3 ..B7.16
..LN548:
	.loc    1  26  is_stmt 1
        movq      %rax, %rdx                                    #26.12
..LN549:
        movq      %rsi, %rax                                    #26.12
..LN550:
        movsd     (%rcx), %xmm0                                 #26.12
..LN551:
        addq      $63, %rax                                     #26.12
..LN552:
        andq      $-64, %rax                                    #26.12
..LN553:
        addq      %rax, %rsp                                    #26.12
..LN554:
                                # LOE rcx rsi r12 r13 r14 r15 xmm0
..B7.21:                        # Preds ..B7.20
..LN555:
        movq      %rcx, %rdx                                    #26.12
..LN556:
        movq      %rsi, %rax                                    #26.12
..LN557:
        addq      $63, %rax                                     #26.12
..LN558:
        andq      $-64, %rax                                    #26.12
..LN559:
        addq      %rax, %rsp                                    #26.12
..LN560:
                                # LOE r12 r13 r14 r15 xmm0
..B7.22:                        # Preds ..B7.21
..LN561:
        movq      %rbp, %rsp                                    #26.5
..LN562:
        popq      %rbp                                          #26.5
	.cfi_restore 6
..LN563:
        movq      %rbx, %rsp                                    #26.5
..LN564:
        popq      %rbx                                          #26.5
	.cfi_def_cfa 7, 8
	.cfi_restore 3
..LN565:
        ret                                                     #26.5
	.cfi_def_cfa 3, 16
	.cfi_offset 3, -16
	.cfi_escape 0x10, 0x06, 0x02, 0x76, 0x00
..LN566:
                                # LOE
..B7.23:                        # Preds ..B7.12                 # Infreq
..LN567:
	.loc    1  23  is_stmt 1
        xorl      %r9d, %r9d                                    #23.5
..LN568:
        jmp       ..B7.16       # Prob 100%                     #23.5
..LN569:
                                # LOE rax rcx rsi r8 r12 r13 r14 r15 r9d
..B7.24:                        # Preds ..B7.4                  # Infreq
..LN570:
	.loc    1  18  is_stmt 1
        xorl      %r10d, %r10d                                  #18.5
..LN571:
        jmp       ..B7.8        # Prob 100%                     #18.5
        .align    16,0x90
	.cfi_endproc
..LN572:
                                # LOE rax rcx rsi r8 r12 r13 r14 r15 r9d r10d
..LN573:
# mark_end;
	.type	_Z11checkVectori.A,@function
	.size	_Z11checkVectori.A,.-_Z11checkVectori.A
..LN_Z11checkVectori.A.574:
.LN_Z11checkVectori.A:
	.section .gcc_except_table, "a"
	.align 4
_Z11checkVectori.A$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__Z11checkVectori.A.109 - ..___tag_value__Z11checkVectori.A.108
..___tag_value__Z11checkVectori.A.108:
	.byte	1
	.uleb128	..___tag_value__Z11checkVectori.A.107 - ..___tag_value__Z11checkVectori.A.106
..___tag_value__Z11checkVectori.A.106:
..___tag_value__Z11checkVectori.A.107:
	.long	0x00000000,0x00000000
..___tag_value__Z11checkVectori.A.109:
	.data
# -- End  _Z11checkVectori.A
	.text
.L_2__routine_start___sti__$E_7:
# -- Begin  __sti__$E
	.text
# mark_begin;
       .align    16,0x90
# --- __sti__$E()
__sti__$E:
..B8.1:                         # Preds ..B8.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value___sti__$E.110:
..L111:
                                                        #
..LN575:
        pushq     %rsi                                          #
	.cfi_def_cfa_offset 16
..LN576:
	.file   4 "/usr/include/c++/4.8.5/iostream"
	.loc    4  74  is_stmt 1
        movl      $_ZN36_INTERNAL_14_TestVector_cpp_53f309b3St8__ioinitE, %edi #74.25
..___tag_value___sti__$E.113:
..LN577:
#       std::ios_base::Init::Init(std::ios_base::Init *)
        call      _ZNSt8ios_base4InitC1Ev                       #74.25
..___tag_value___sti__$E.114:
..LN578:
                                # LOE rbx rbp r12 r13 r14 r15
..B8.2:                         # Preds ..B8.1
..LN579:
        movl      $_ZNSt8ios_base4InitD1Ev, %edi                #74.25
..LN580:
        movl      $_ZN36_INTERNAL_14_TestVector_cpp_53f309b3St8__ioinitE, %esi #74.25
..LN581:
        movl      $__dso_handle, %edx                           #74.25
..LN582:
        addq      $8, %rsp                                      #74.25
	.cfi_def_cfa_offset 8
..LN583:
#       __cxa_atexit()
        jmp       __cxa_atexit                                  #74.25
        .align    16,0x90
	.cfi_endproc
..LN584:
                                # LOE
..LN585:
# mark_end;
	.type	__sti__$E,@function
	.size	__sti__$E,.-__sti__$E
..LN__sti__$E.586:
.LN__sti__$E:
	.data
# -- End  __sti__$E
	.bss
	.align 4
	.align 1
_ZN36_INTERNAL_14_TestVector_cpp_53f309b3St8__ioinitE:
	.type	_ZN36_INTERNAL_14_TestVector_cpp_53f309b3St8__ioinitE,@object
	.size	_ZN36_INTERNAL_14_TestVector_cpp_53f309b3St8__ioinitE,1
	.space 1	# pad
	.section .rodata, "a"
	.align 64
	.align 64
.L_2il0floatpacket.2:
	.long	0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,64
	.align 32
.L_2il0floatpacket.6:
	.long	0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008
	.type	.L_2il0floatpacket.6,@object
	.size	.L_2il0floatpacket.6,32
	.align 16
.L_2il0floatpacket.5:
	.long	0x00000000,0x3ff00000,0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.5,@object
	.size	.L_2il0floatpacket.5,16
	.align 8
.L_2il0floatpacket.3:
	.long	0x00000000,0x408f4000
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,8
	.align 8
.L_2il0floatpacket.4:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,8
	.align 4
.L_2il0floatpacket.7:
	.long	0x000000ff
	.type	.L_2il0floatpacket.7,@object
	.size	.L_2il0floatpacket.7,4
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.0:
	.long	1701669204
	.long	1902465568
	.long	1701996917
	.long	2112100
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,16
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
