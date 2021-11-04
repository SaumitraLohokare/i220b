
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000000ea8 <_init>:
 ea8:	48 83 ec 08          	sub    $0x8,%rsp
 eac:	48 8b 05 35 31 20 00 	mov    0x203135(%rip),%rax        # 203fe8 <__gmon_start__>
 eb3:	48 85 c0             	test   %rax,%rax
 eb6:	74 02                	je     eba <_init+0x12>
 eb8:	ff d0                	callq  *%rax
 eba:	48 83 c4 08          	add    $0x8,%rsp
 ebe:	c3                   	retq   

Disassembly of section .plt:

0000000000000ec0 <.plt>:
     ec0:	ff 35 2a 30 20 00    	pushq  0x20302a(%rip)        # 203ef0 <_GLOBAL_OFFSET_TABLE_+0x8>
     ec6:	ff 25 2c 30 20 00    	jmpq   *0x20302c(%rip)        # 203ef8 <_GLOBAL_OFFSET_TABLE_+0x10>
     ecc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000ed0 <getenv@plt>:
     ed0:	ff 25 2a 30 20 00    	jmpq   *0x20302a(%rip)        # 203f00 <getenv@GLIBC_2.2.5>
     ed6:	68 00 00 00 00       	pushq  $0x0
     edb:	e9 e0 ff ff ff       	jmpq   ec0 <.plt>

0000000000000ee0 <strcasecmp@plt>:
     ee0:	ff 25 22 30 20 00    	jmpq   *0x203022(%rip)        # 203f08 <strcasecmp@GLIBC_2.2.5>
     ee6:	68 01 00 00 00       	pushq  $0x1
     eeb:	e9 d0 ff ff ff       	jmpq   ec0 <.plt>

0000000000000ef0 <__errno_location@plt>:
     ef0:	ff 25 1a 30 20 00    	jmpq   *0x20301a(%rip)        # 203f10 <__errno_location@GLIBC_2.2.5>
     ef6:	68 02 00 00 00       	pushq  $0x2
     efb:	e9 c0 ff ff ff       	jmpq   ec0 <.plt>

0000000000000f00 <strcpy@plt>:
     f00:	ff 25 12 30 20 00    	jmpq   *0x203012(%rip)        # 203f18 <strcpy@GLIBC_2.2.5>
     f06:	68 03 00 00 00       	pushq  $0x3
     f0b:	e9 b0 ff ff ff       	jmpq   ec0 <.plt>

0000000000000f10 <puts@plt>:
     f10:	ff 25 0a 30 20 00    	jmpq   *0x20300a(%rip)        # 203f20 <puts@GLIBC_2.2.5>
     f16:	68 04 00 00 00       	pushq  $0x4
     f1b:	e9 a0 ff ff ff       	jmpq   ec0 <.plt>

0000000000000f20 <write@plt>:
     f20:	ff 25 02 30 20 00    	jmpq   *0x203002(%rip)        # 203f28 <write@GLIBC_2.2.5>
     f26:	68 05 00 00 00       	pushq  $0x5
     f2b:	e9 90 ff ff ff       	jmpq   ec0 <.plt>

0000000000000f30 <__stack_chk_fail@plt>:
     f30:	ff 25 fa 2f 20 00    	jmpq   *0x202ffa(%rip)        # 203f30 <__stack_chk_fail@GLIBC_2.4>
     f36:	68 06 00 00 00       	pushq  $0x6
     f3b:	e9 80 ff ff ff       	jmpq   ec0 <.plt>

0000000000000f40 <alarm@plt>:
     f40:	ff 25 f2 2f 20 00    	jmpq   *0x202ff2(%rip)        # 203f38 <alarm@GLIBC_2.2.5>
     f46:	68 07 00 00 00       	pushq  $0x7
     f4b:	e9 70 ff ff ff       	jmpq   ec0 <.plt>

0000000000000f50 <close@plt>:
     f50:	ff 25 ea 2f 20 00    	jmpq   *0x202fea(%rip)        # 203f40 <close@GLIBC_2.2.5>
     f56:	68 08 00 00 00       	pushq  $0x8
     f5b:	e9 60 ff ff ff       	jmpq   ec0 <.plt>

0000000000000f60 <read@plt>:
     f60:	ff 25 e2 2f 20 00    	jmpq   *0x202fe2(%rip)        # 203f48 <read@GLIBC_2.2.5>
     f66:	68 09 00 00 00       	pushq  $0x9
     f6b:	e9 50 ff ff ff       	jmpq   ec0 <.plt>

0000000000000f70 <fgets@plt>:
     f70:	ff 25 da 2f 20 00    	jmpq   *0x202fda(%rip)        # 203f50 <fgets@GLIBC_2.2.5>
     f76:	68 0a 00 00 00       	pushq  $0xa
     f7b:	e9 40 ff ff ff       	jmpq   ec0 <.plt>

0000000000000f80 <signal@plt>:
     f80:	ff 25 d2 2f 20 00    	jmpq   *0x202fd2(%rip)        # 203f58 <signal@GLIBC_2.2.5>
     f86:	68 0b 00 00 00       	pushq  $0xb
     f8b:	e9 30 ff ff ff       	jmpq   ec0 <.plt>

0000000000000f90 <gethostbyname@plt>:
     f90:	ff 25 ca 2f 20 00    	jmpq   *0x202fca(%rip)        # 203f60 <gethostbyname@GLIBC_2.2.5>
     f96:	68 0c 00 00 00       	pushq  $0xc
     f9b:	e9 20 ff ff ff       	jmpq   ec0 <.plt>

0000000000000fa0 <__memmove_chk@plt>:
     fa0:	ff 25 c2 2f 20 00    	jmpq   *0x202fc2(%rip)        # 203f68 <__memmove_chk@GLIBC_2.3.4>
     fa6:	68 0d 00 00 00       	pushq  $0xd
     fab:	e9 10 ff ff ff       	jmpq   ec0 <.plt>

0000000000000fb0 <strtol@plt>:
     fb0:	ff 25 ba 2f 20 00    	jmpq   *0x202fba(%rip)        # 203f70 <strtol@GLIBC_2.2.5>
     fb6:	68 0e 00 00 00       	pushq  $0xe
     fbb:	e9 00 ff ff ff       	jmpq   ec0 <.plt>

0000000000000fc0 <fflush@plt>:
     fc0:	ff 25 b2 2f 20 00    	jmpq   *0x202fb2(%rip)        # 203f78 <fflush@GLIBC_2.2.5>
     fc6:	68 0f 00 00 00       	pushq  $0xf
     fcb:	e9 f0 fe ff ff       	jmpq   ec0 <.plt>

0000000000000fd0 <__isoc99_sscanf@plt>:
     fd0:	ff 25 aa 2f 20 00    	jmpq   *0x202faa(%rip)        # 203f80 <__isoc99_sscanf@GLIBC_2.7>
     fd6:	68 10 00 00 00       	pushq  $0x10
     fdb:	e9 e0 fe ff ff       	jmpq   ec0 <.plt>

0000000000000fe0 <__printf_chk@plt>:
     fe0:	ff 25 a2 2f 20 00    	jmpq   *0x202fa2(%rip)        # 203f88 <__printf_chk@GLIBC_2.3.4>
     fe6:	68 11 00 00 00       	pushq  $0x11
     feb:	e9 d0 fe ff ff       	jmpq   ec0 <.plt>

0000000000000ff0 <fopen@plt>:
     ff0:	ff 25 9a 2f 20 00    	jmpq   *0x202f9a(%rip)        # 203f90 <fopen@GLIBC_2.2.5>
     ff6:	68 12 00 00 00       	pushq  $0x12
     ffb:	e9 c0 fe ff ff       	jmpq   ec0 <.plt>

0000000000001000 <gethostname@plt>:
    1000:	ff 25 92 2f 20 00    	jmpq   *0x202f92(%rip)        # 203f98 <gethostname@GLIBC_2.2.5>
    1006:	68 13 00 00 00       	pushq  $0x13
    100b:	e9 b0 fe ff ff       	jmpq   ec0 <.plt>

0000000000001010 <exit@plt>:
    1010:	ff 25 8a 2f 20 00    	jmpq   *0x202f8a(%rip)        # 203fa0 <exit@GLIBC_2.2.5>
    1016:	68 14 00 00 00       	pushq  $0x14
    101b:	e9 a0 fe ff ff       	jmpq   ec0 <.plt>

0000000000001020 <connect@plt>:
    1020:	ff 25 82 2f 20 00    	jmpq   *0x202f82(%rip)        # 203fa8 <connect@GLIBC_2.2.5>
    1026:	68 15 00 00 00       	pushq  $0x15
    102b:	e9 90 fe ff ff       	jmpq   ec0 <.plt>

0000000000001030 <__fprintf_chk@plt>:
    1030:	ff 25 7a 2f 20 00    	jmpq   *0x202f7a(%rip)        # 203fb0 <__fprintf_chk@GLIBC_2.3.4>
    1036:	68 16 00 00 00       	pushq  $0x16
    103b:	e9 80 fe ff ff       	jmpq   ec0 <.plt>

0000000000001040 <sleep@plt>:
    1040:	ff 25 72 2f 20 00    	jmpq   *0x202f72(%rip)        # 203fb8 <sleep@GLIBC_2.2.5>
    1046:	68 17 00 00 00       	pushq  $0x17
    104b:	e9 70 fe ff ff       	jmpq   ec0 <.plt>

0000000000001050 <__ctype_b_loc@plt>:
    1050:	ff 25 6a 2f 20 00    	jmpq   *0x202f6a(%rip)        # 203fc0 <__ctype_b_loc@GLIBC_2.3>
    1056:	68 18 00 00 00       	pushq  $0x18
    105b:	e9 60 fe ff ff       	jmpq   ec0 <.plt>

0000000000001060 <__sprintf_chk@plt>:
    1060:	ff 25 62 2f 20 00    	jmpq   *0x202f62(%rip)        # 203fc8 <__sprintf_chk@GLIBC_2.3.4>
    1066:	68 19 00 00 00       	pushq  $0x19
    106b:	e9 50 fe ff ff       	jmpq   ec0 <.plt>

0000000000001070 <socket@plt>:
    1070:	ff 25 5a 2f 20 00    	jmpq   *0x202f5a(%rip)        # 203fd0 <socket@GLIBC_2.2.5>
    1076:	68 1a 00 00 00       	pushq  $0x1a
    107b:	e9 40 fe ff ff       	jmpq   ec0 <.plt>

Disassembly of section .plt.got:

0000000000001080 <__cxa_finalize@plt>:
    1080:	ff 25 72 2f 20 00    	jmpq   *0x202f72(%rip)        # 203ff8 <__cxa_finalize@GLIBC_2.2.5>
    1086:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001090 <_start>:
    1090:	31 ed                	xor    %ebp,%ebp
    1092:	49 89 d1             	mov    %rdx,%r9
    1095:	5e                   	pop    %rsi
    1096:	48 89 e2             	mov    %rsp,%rdx
    1099:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    109d:	50                   	push   %rax
    109e:	54                   	push   %rsp
    109f:	4c 8d 05 5a 18 00 00 	lea    0x185a(%rip),%r8        # 2900 <__libc_csu_fini>
    10a6:	48 8d 0d e3 17 00 00 	lea    0x17e3(%rip),%rcx        # 2890 <__libc_csu_init>
    10ad:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1175 <main>
    10b4:	ff 15 26 2f 20 00    	callq  *0x202f26(%rip)        # 203fe0 <__libc_start_main@GLIBC_2.2.5>
    10ba:	f4                   	hlt    
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <deregister_tm_clones>:
    10c0:	48 8d 3d b9 35 20 00 	lea    0x2035b9(%rip),%rdi        # 204680 <stdout@@GLIBC_2.2.5>
    10c7:	48 8d 05 b2 35 20 00 	lea    0x2035b2(%rip),%rax        # 204680 <stdout@@GLIBC_2.2.5>
    10ce:	48 39 f8             	cmp    %rdi,%rax
    10d1:	74 15                	je     10e8 <deregister_tm_clones+0x28>
    10d3:	48 8b 05 fe 2e 20 00 	mov    0x202efe(%rip),%rax        # 203fd8 <_ITM_deregisterTMCloneTable>
    10da:	48 85 c0             	test   %rax,%rax
    10dd:	74 09                	je     10e8 <deregister_tm_clones+0x28>
    10df:	ff e0                	jmpq   *%rax
    10e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10e8:	c3                   	retq   
    10e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010f0 <register_tm_clones>:
    10f0:	48 8d 3d 89 35 20 00 	lea    0x203589(%rip),%rdi        # 204680 <stdout@@GLIBC_2.2.5>
    10f7:	48 8d 35 82 35 20 00 	lea    0x203582(%rip),%rsi        # 204680 <stdout@@GLIBC_2.2.5>
    10fe:	48 29 fe             	sub    %rdi,%rsi
    1101:	48 c1 fe 03          	sar    $0x3,%rsi
    1105:	48 89 f0             	mov    %rsi,%rax
    1108:	48 c1 e8 3f          	shr    $0x3f,%rax
    110c:	48 01 c6             	add    %rax,%rsi
    110f:	48 d1 fe             	sar    %rsi
    1112:	74 14                	je     1128 <register_tm_clones+0x38>
    1114:	48 8b 05 d5 2e 20 00 	mov    0x202ed5(%rip),%rax        # 203ff0 <_ITM_registerTMCloneTable>
    111b:	48 85 c0             	test   %rax,%rax
    111e:	74 08                	je     1128 <register_tm_clones+0x38>
    1120:	ff e0                	jmpq   *%rax
    1122:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1128:	c3                   	retq   
    1129:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001130 <__do_global_dtors_aux>:
    1130:	80 3d 71 35 20 00 00 	cmpb   $0x0,0x203571(%rip)        # 2046a8 <completed.7997>
    1137:	75 2f                	jne    1168 <__do_global_dtors_aux+0x38>
    1139:	55                   	push   %rbp
    113a:	48 83 3d b6 2e 20 00 	cmpq   $0x0,0x202eb6(%rip)        # 203ff8 <__cxa_finalize@GLIBC_2.2.5>
    1141:	00 
    1142:	48 89 e5             	mov    %rsp,%rbp
    1145:	74 0c                	je     1153 <__do_global_dtors_aux+0x23>
    1147:	48 8b 3d ba 2e 20 00 	mov    0x202eba(%rip),%rdi        # 204008 <__dso_handle>
    114e:	e8 2d ff ff ff       	callq  1080 <__cxa_finalize@plt>
    1153:	e8 68 ff ff ff       	callq  10c0 <deregister_tm_clones>
    1158:	c6 05 49 35 20 00 01 	movb   $0x1,0x203549(%rip)        # 2046a8 <completed.7997>
    115f:	5d                   	pop    %rbp
    1160:	c3                   	retq   
    1161:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1168:	c3                   	retq   
    1169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001170 <frame_dummy>:
    1170:	e9 7b ff ff ff       	jmpq   10f0 <register_tm_clones>

0000000000001175 <main>:
    1175:	53                   	push   %rbx
    1176:	83 ff 01             	cmp    $0x1,%edi
    1179:	0f 84 f8 00 00 00    	je     1277 <main+0x102>
    117f:	48 89 f3             	mov    %rsi,%rbx
    1182:	83 ff 02             	cmp    $0x2,%edi
    1185:	0f 85 21 01 00 00    	jne    12ac <main+0x137>
    118b:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    118f:	48 8d 35 8e 17 00 00 	lea    0x178e(%rip),%rsi        # 2924 <_IO_stdin_used+0x4>
    1196:	e8 55 fe ff ff       	callq  ff0 <fopen@plt>
    119b:	48 89 05 0e 35 20 00 	mov    %rax,0x20350e(%rip)        # 2046b0 <infile>
    11a2:	48 85 c0             	test   %rax,%rax
    11a5:	0f 84 df 00 00 00    	je     128a <main+0x115>
    11ab:	e8 32 06 00 00       	callq  17e2 <initialize_bomb>
    11b0:	48 8d 3d f1 17 00 00 	lea    0x17f1(%rip),%rdi        # 29a8 <_IO_stdin_used+0x88>
    11b7:	e8 54 fd ff ff       	callq  f10 <puts@plt>
    11bc:	48 8d 3d 25 18 00 00 	lea    0x1825(%rip),%rdi        # 29e8 <_IO_stdin_used+0xc8>
    11c3:	e8 48 fd ff ff       	callq  f10 <puts@plt>
    11c8:	e8 e3 08 00 00       	callq  1ab0 <read_line>
    11cd:	48 89 c7             	mov    %rax,%rdi
    11d0:	e8 fa 00 00 00       	callq  12cf <phase_1>
    11d5:	e8 1a 0a 00 00       	callq  1bf4 <phase_defused>
    11da:	48 8d 3d 37 18 00 00 	lea    0x1837(%rip),%rdi        # 2a18 <_IO_stdin_used+0xf8>
    11e1:	e8 2a fd ff ff       	callq  f10 <puts@plt>
    11e6:	e8 c5 08 00 00       	callq  1ab0 <read_line>
    11eb:	48 89 c7             	mov    %rax,%rdi
    11ee:	e8 fc 00 00 00       	callq  12ef <phase_2>
    11f3:	e8 fc 09 00 00       	callq  1bf4 <phase_defused>
    11f8:	48 8d 3d 5e 17 00 00 	lea    0x175e(%rip),%rdi        # 295d <_IO_stdin_used+0x3d>
    11ff:	e8 0c fd ff ff       	callq  f10 <puts@plt>
    1204:	e8 a7 08 00 00       	callq  1ab0 <read_line>
    1209:	48 89 c7             	mov    %rax,%rdi
    120c:	e8 4d 01 00 00       	callq  135e <phase_3>
    1211:	e8 de 09 00 00       	callq  1bf4 <phase_defused>
    1216:	48 8d 3d 5e 17 00 00 	lea    0x175e(%rip),%rdi        # 297b <_IO_stdin_used+0x5b>
    121d:	e8 ee fc ff ff       	callq  f10 <puts@plt>
    1222:	e8 89 08 00 00       	callq  1ab0 <read_line>
    1227:	48 89 c7             	mov    %rax,%rdi
    122a:	e8 1d 02 00 00       	callq  144c <phase_4>
    122f:	e8 c0 09 00 00       	callq  1bf4 <phase_defused>
    1234:	48 8d 3d 0d 18 00 00 	lea    0x180d(%rip),%rdi        # 2a48 <_IO_stdin_used+0x128>
    123b:	e8 d0 fc ff ff       	callq  f10 <puts@plt>
    1240:	e8 6b 08 00 00       	callq  1ab0 <read_line>
    1245:	48 89 c7             	mov    %rax,%rdi
    1248:	e8 70 02 00 00       	callq  14bd <phase_5>
    124d:	e8 a2 09 00 00       	callq  1bf4 <phase_defused>
    1252:	48 8d 3d 31 17 00 00 	lea    0x1731(%rip),%rdi        # 298a <_IO_stdin_used+0x6a>
    1259:	e8 b2 fc ff ff       	callq  f10 <puts@plt>
    125e:	e8 4d 08 00 00       	callq  1ab0 <read_line>
    1263:	48 89 c7             	mov    %rax,%rdi
    1266:	e8 9a 02 00 00       	callq  1505 <phase_6>
    126b:	e8 84 09 00 00       	callq  1bf4 <phase_defused>
    1270:	b8 00 00 00 00       	mov    $0x0,%eax
    1275:	5b                   	pop    %rbx
    1276:	c3                   	retq   
    1277:	48 8b 05 12 34 20 00 	mov    0x203412(%rip),%rax        # 204690 <stdin@@GLIBC_2.2.5>
    127e:	48 89 05 2b 34 20 00 	mov    %rax,0x20342b(%rip)        # 2046b0 <infile>
    1285:	e9 21 ff ff ff       	jmpq   11ab <main+0x36>
    128a:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    128e:	48 8b 13             	mov    (%rbx),%rdx
    1291:	48 8d 35 8e 16 00 00 	lea    0x168e(%rip),%rsi        # 2926 <_IO_stdin_used+0x6>
    1298:	bf 01 00 00 00       	mov    $0x1,%edi
    129d:	e8 3e fd ff ff       	callq  fe0 <__printf_chk@plt>
    12a2:	bf 08 00 00 00       	mov    $0x8,%edi
    12a7:	e8 64 fd ff ff       	callq  1010 <exit@plt>
    12ac:	48 8b 16             	mov    (%rsi),%rdx
    12af:	48 8d 35 8d 16 00 00 	lea    0x168d(%rip),%rsi        # 2943 <_IO_stdin_used+0x23>
    12b6:	bf 01 00 00 00       	mov    $0x1,%edi
    12bb:	b8 00 00 00 00       	mov    $0x0,%eax
    12c0:	e8 1b fd ff ff       	callq  fe0 <__printf_chk@plt>
    12c5:	bf 08 00 00 00       	mov    $0x8,%edi
    12ca:	e8 41 fd ff ff       	callq  1010 <exit@plt>

00000000000012cf <phase_1>:
	# rdi = input, rsi = 2a70 <val>,
    12cf:	48 83 ec 08          	sub    $0x8,%rsp
    12d3:	48 8d 35 96 17 00 00 	lea    0x1796(%rip),%rsi        # 2a70 <_IO_stdin_used+0x150>
    12da:	e8 9b 04 00 00       	callq  177a <strings_not_equal>
    12df:	85 c0                	test   %eax,%eax
    12e1:	75 05                	jne    12e8 <phase_1+0x19>
    12e3:	48 83 c4 08          	add    $0x8,%rsp
    12e7:	c3                   	retq   
    12e8:	e8 46 07 00 00       	callq  1a33 <explode_bomb>
    12ed:	eb f4                	jmp    12e3 <phase_1+0x14>

00000000000012ef <phase_2>:
    12ef:	55                   	push   %rbp
    12f0:	53                   	push   %rbx
    12f1:	48 83 ec 28          	sub    $0x28,%rsp			# -1
    12f5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    12fc:	00 00 
    12fe:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1303:	31 c0                	xor    %eax,%eax			# stack protection
    1305:	48 89 e6             	mov    %rsp,%rsi
    1308:	e8 62 07 00 00       	callq  1a6f <read_six_numbers>
    130d:	83 3c 24 00          	cmpl   $0x0,(%rsp)			# (rsp) == 0
    1311:	75 07                	jne    131a <phase_2+0x2b>
    1313:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)			#(rsp + 4) == 1
    1318:	74 05                	je     131f <phase_2+0x30>
    131a:	e8 14 07 00 00       	callq  1a33 <explode_bomb>
    131f:	48 89 e3             	mov    %rsp,%rbx			# rbx = rsp
    1322:	48 8d 6b 10          	lea    0x10(%rbx),%rbp			# rbp = rbx + 10
    1326:	eb 0e                	jmp    1336 <phase_2+0x47>
    1328:	e8 06 07 00 00       	callq  1a33 <explode_bomb>		
    132d:	48 83 c3 04          	add    $0x4,%rbx			# rbx += 4
    1331:	48 39 eb             	cmp    %rbp,%rbx			# rbp == rbx
    1334:	74 0c                	je     1342 <phase_2+0x53>
    1336:	8b 43 04             	mov    0x4(%rbx),%eax
    1339:	03 03                	add    (%rbx),%eax
    133b:	39 43 08             	cmp    %eax,0x8(%rbx)
    133e:	74 ed                	je     132d <phase_2+0x3e>
    1340:	eb e6                	jmp    1328 <phase_2+0x39>
    1342:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1347:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    134e:	00 00 
    1350:	75 07                	jne    1359 <phase_2+0x6a>
    1352:	48 83 c4 28          	add    $0x28,%rsp			# -1
    1356:	5b                   	pop    %rbx
    1357:	5d                   	pop    %rbp
    1358:	c3                   	retq   
    1359:	e8 d2 fb ff ff       	callq  f30 <__stack_chk_fail@plt>

000000000000135e <phase_3>:
    135e:	48 83 ec 18          	sub    $0x18,%rsp
    1362:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1369:	00 00 
    136b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1370:	31 c0                	xor    %eax,%eax
    1372:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx   
    1377:	48 89 e2             	mov    %rsp,%rdx
    137a:	48 8d 35 e4 19 00 00 	lea    0x19e4(%rip),%rsi        # 2d65 <array.3591+0x265>
    1381:	e8 4a fc ff ff       	callq  fd0 <__isoc99_sscanf@plt>
    1386:	83 f8 01             	cmp    $0x1,%eax
    1389:	7e 19                	jle    13a4 <phase_3+0x46>
    138b:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    138f:	77 4b                	ja     13dc <phase_3+0x7e>
    1391:	8b 04 24             	mov    (%rsp),%eax
    1394:	48 8d 15 45 17 00 00 	lea    0x1745(%rip),%rdx        # 2ae0 <_IO_stdin_used+0x1c0>
    139b:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    139f:	48 01 d0             	add    %rdx,%rax
    13a2:	ff e0                	jmpq   *%rax
    13a4:	e8 8a 06 00 00       	callq  1a33 <explode_bomb>
    13a9:	eb e0                	jmp    138b <phase_3+0x2d>
    13ab:	b8 5f 01 00 00       	mov    $0x15f,%eax
    13b0:	eb 3b                	jmp    13ed <phase_3+0x8f>
    13b2:	b8 09 01 00 00       	mov    $0x109,%eax
    13b7:	eb 34                	jmp    13ed <phase_3+0x8f>
    13b9:	b8 c3 00 00 00       	mov    $0xc3,%eax
    13be:	eb 2d                	jmp    13ed <phase_3+0x8f>
    13c0:	b8 34 02 00 00       	mov    $0x234,%eax
    13c5:	eb 26                	jmp    13ed <phase_3+0x8f>
    13c7:	b8 18 01 00 00       	mov    $0x118,%eax
    13cc:	eb 1f                	jmp    13ed <phase_3+0x8f>
    13ce:	b8 33 02 00 00       	mov    $0x233,%eax
    13d3:	eb 18                	jmp    13ed <phase_3+0x8f>
    13d5:	b8 cd 01 00 00       	mov    $0x1cd,%eax
    13da:	eb 11                	jmp    13ed <phase_3+0x8f>
    13dc:	e8 52 06 00 00       	callq  1a33 <explode_bomb>
    13e1:	b8 00 00 00 00       	mov    $0x0,%eax
    13e6:	eb 05                	jmp    13ed <phase_3+0x8f>
    13e8:	b8 32 03 00 00       	mov    $0x332,%eax
    13ed:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    13f1:	75 15                	jne    1408 <phase_3+0xaa>
    13f3:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    13f8:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    13ff:	00 00 
    1401:	75 0c                	jne    140f <phase_3+0xb1>
    1403:	48 83 c4 18          	add    $0x18,%rsp
    1407:	c3                   	retq   
    1408:	e8 26 06 00 00       	callq  1a33 <explode_bomb>
    140d:	eb e4                	jmp    13f3 <phase_3+0x95>
    140f:	e8 1c fb ff ff       	callq  f30 <__stack_chk_fail@plt>

0000000000001414 <func4>:
    1414:	b8 00 00 00 00       	mov    $0x0,%eax
    1419:	85 ff                	test   %edi,%edi
    141b:	7e 2e                	jle    144b <func4+0x37>
    141d:	89 f0                	mov    %esi,%eax
    141f:	83 ff 01             	cmp    $0x1,%edi
    1422:	74 27                	je     144b <func4+0x37>
    1424:	41 54                	push   %r12
    1426:	55                   	push   %rbp
    1427:	53                   	push   %rbx
    1428:	41 89 f4             	mov    %esi,%r12d
    142b:	89 fb                	mov    %edi,%ebx
    142d:	8d 7f ff             	lea    -0x1(%rdi),%edi
    1430:	e8 df ff ff ff       	callq  1414 <func4>
    1435:	42 8d 2c 20          	lea    (%rax,%r12,1),%ebp
    1439:	8d 7b fe             	lea    -0x2(%rbx),%edi
    143c:	44 89 e6             	mov    %r12d,%esi
    143f:	e8 d0 ff ff ff       	callq  1414 <func4>
    1444:	01 e8                	add    %ebp,%eax
    1446:	5b                   	pop    %rbx
    1447:	5d                   	pop    %rbp
    1448:	41 5c                	pop    %r12
    144a:	c3                   	retq   
    144b:	c3                   	retq   

000000000000144c <phase_4>:
    144c:	48 83 ec 18          	sub    $0x18,%rsp
    1450:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1457:	00 00 
    1459:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    145e:	31 c0                	xor    %eax,%eax
    1460:	48 89 e1             	mov    %rsp,%rcx
    1463:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
    1468:	48 8d 35 f6 18 00 00 	lea    0x18f6(%rip),%rsi        # 2d65 <array.3591+0x265>
    146f:	e8 5c fb ff ff       	callq  fd0 <__isoc99_sscanf@plt>
    1474:	83 f8 02             	cmp    $0x2,%eax
    1477:	75 0b                	jne    1484 <phase_4+0x38>
    1479:	8b 04 24             	mov    (%rsp),%eax
    147c:	83 e8 02             	sub    $0x2,%eax
    147f:	83 f8 02             	cmp    $0x2,%eax
    1482:	76 05                	jbe    1489 <phase_4+0x3d>
    1484:	e8 aa 05 00 00       	callq  1a33 <explode_bomb>
    1489:	8b 34 24             	mov    (%rsp),%esi
    148c:	bf 05 00 00 00       	mov    $0x5,%edi
    1491:	e8 7e ff ff ff       	callq  1414 <func4>
    1496:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    149a:	75 15                	jne    14b1 <phase_4+0x65>
    149c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    14a1:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    14a8:	00 00 
    14aa:	75 0c                	jne    14b8 <phase_4+0x6c>
    14ac:	48 83 c4 18          	add    $0x18,%rsp
    14b0:	c3                   	retq   
    14b1:	e8 7d 05 00 00       	callq  1a33 <explode_bomb>
    14b6:	eb e4                	jmp    149c <phase_4+0x50>
    14b8:	e8 73 fa ff ff       	callq  f30 <__stack_chk_fail@plt>

00000000000014bd <phase_5>:
    14bd:	53                   	push   %rbx
    14be:	48 89 fb             	mov    %rdi,%rbx
    14c1:	e8 97 02 00 00       	callq  175d <string_length>
    14c6:	83 f8 06             	cmp    $0x6,%eax
    14c9:	75 2c                	jne    14f7 <phase_5+0x3a>
    14cb:	48 89 d8             	mov    %rbx,%rax
    14ce:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
    14d2:	b9 00 00 00 00       	mov    $0x0,%ecx
    14d7:	48 8d 35 22 16 00 00 	lea    0x1622(%rip),%rsi        # 2b00 <array.3591>
    14de:	0f b6 10             	movzbl (%rax),%edx
    14e1:	83 e2 0f             	and    $0xf,%edx
    14e4:	03 0c 96             	add    (%rsi,%rdx,4),%ecx
    14e7:	48 83 c0 01          	add    $0x1,%rax
    14eb:	48 39 f8             	cmp    %rdi,%rax
    14ee:	75 ee                	jne    14de <phase_5+0x21>
    14f0:	83 f9 31             	cmp    $0x31,%ecx
    14f3:	75 09                	jne    14fe <phase_5+0x41>
    14f5:	5b                   	pop    %rbx
    14f6:	c3                   	retq   
    14f7:	e8 37 05 00 00       	callq  1a33 <explode_bomb>
    14fc:	eb cd                	jmp    14cb <phase_5+0xe>
    14fe:	e8 30 05 00 00       	callq  1a33 <explode_bomb>
    1503:	eb f0                	jmp    14f5 <phase_5+0x38>

0000000000001505 <phase_6>:
    1505:	41 57                	push   %r15
    1507:	41 56                	push   %r14
    1509:	41 55                	push   %r13
    150b:	41 54                	push   %r12
    150d:	55                   	push   %rbp
    150e:	53                   	push   %rbx
    150f:	48 83 ec 68          	sub    $0x68,%rsp
    1513:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    151a:	00 00 
    151c:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1521:	31 c0                	xor    %eax,%eax
    1523:	49 89 e6             	mov    %rsp,%r14
    1526:	4c 89 f6             	mov    %r14,%rsi
    1529:	e8 41 05 00 00       	callq  1a6f <read_six_numbers>
    152e:	4d 89 f4             	mov    %r14,%r12
    1531:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    1537:	49 89 e5             	mov    %rsp,%r13
    153a:	e9 a7 00 00 00       	jmpq   15e6 <phase_6+0xe1>
    153f:	e8 ef 04 00 00       	callq  1a33 <explode_bomb>
    1544:	e9 af 00 00 00       	jmpq   15f8 <phase_6+0xf3>
    1549:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
    154e:	49 8d 7c 24 18       	lea    0x18(%r12),%rdi
    1553:	41 8b 0c 24          	mov    (%r12),%ecx
    1557:	b8 01 00 00 00       	mov    $0x1,%eax
    155c:	48 8d 15 cd 2c 20 00 	lea    0x202ccd(%rip),%rdx        # 204230 <node1>
    1563:	83 f9 01             	cmp    $0x1,%ecx
    1566:	7e 0b                	jle    1573 <phase_6+0x6e>
    1568:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    156c:	83 c0 01             	add    $0x1,%eax
    156f:	39 c8                	cmp    %ecx,%eax
    1571:	75 f5                	jne    1568 <phase_6+0x63>
    1573:	48 89 16             	mov    %rdx,(%rsi)
    1576:	49 83 c4 04          	add    $0x4,%r12
    157a:	48 83 c6 08          	add    $0x8,%rsi
    157e:	4c 39 e7             	cmp    %r12,%rdi
    1581:	75 d0                	jne    1553 <phase_6+0x4e>
    1583:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1588:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    158d:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1591:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1596:	48 89 50 08          	mov    %rdx,0x8(%rax)
    159a:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    159f:	48 89 42 08          	mov    %rax,0x8(%rdx)
    15a3:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    15a8:	48 89 50 08          	mov    %rdx,0x8(%rax)
    15ac:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    15b1:	48 89 42 08          	mov    %rax,0x8(%rdx)
    15b5:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    15bc:	00 
    15bd:	bd 05 00 00 00       	mov    $0x5,%ebp
    15c2:	eb 4c                	jmp    1610 <phase_6+0x10b>
    15c4:	e8 6a 04 00 00       	callq  1a33 <explode_bomb>
    15c9:	48 83 c3 01          	add    $0x1,%rbx
    15cd:	83 fb 05             	cmp    $0x5,%ebx
    15d0:	7f 0c                	jg     15de <phase_6+0xd9>
    15d2:	41 8b 44 9d 00       	mov    0x0(%r13,%rbx,4),%eax
    15d7:	39 45 00             	cmp    %eax,0x0(%rbp)
    15da:	75 ed                	jne    15c9 <phase_6+0xc4>
    15dc:	eb e6                	jmp    15c4 <phase_6+0xbf>
    15de:	49 83 c7 01          	add    $0x1,%r15
    15e2:	49 83 c6 04          	add    $0x4,%r14
    15e6:	4c 89 f5             	mov    %r14,%rbp
    15e9:	41 8b 06             	mov    (%r14),%eax
    15ec:	83 e8 01             	sub    $0x1,%eax
    15ef:	83 f8 05             	cmp    $0x5,%eax                # eax <= 5 == true
    15f2:	0f 87 47 ff ff ff    	ja     153f <phase_6+0x3a>
    15f8:	49 83 ff 06          	cmp    $0x6,%r15
    15fc:	0f 84 47 ff ff ff    	je     1549 <phase_6+0x44>      # jump if $r15 == 6
    1602:	4c 89 fb             	mov    %r15,%rbx
    1605:	eb cb                	jmp    15d2 <phase_6+0xcd>
    1607:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    160b:	83 ed 01             	sub    $0x1,%ebp
    160e:	74 11                	je     1621 <phase_6+0x11c>
    1610:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1614:	8b 00                	mov    (%rax),%eax
    1616:	39 03                	cmp    %eax,(%rbx)
    1618:	7e ed                	jle    1607 <phase_6+0x102>
    161a:	e8 14 04 00 00       	callq  1a33 <explode_bomb>
    161f:	eb e6                	jmp    1607 <phase_6+0x102>
    1621:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1626:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    162d:	00 00 
    162f:	75 0f                	jne    1640 <phase_6+0x13b>
    1631:	48 83 c4 68          	add    $0x68,%rsp
    1635:	5b                   	pop    %rbx
    1636:	5d                   	pop    %rbp
    1637:	41 5c                	pop    %r12
    1639:	41 5d                	pop    %r13
    163b:	41 5e                	pop    %r14
    163d:	41 5f                	pop    %r15
    163f:	c3                   	retq   
    1640:	e8 eb f8 ff ff       	callq  f30 <__stack_chk_fail@plt>

0000000000001645 <fun7>:
    1645:	48 85 ff             	test   %rdi,%rdi
    1648:	74 32                	je     167c <fun7+0x37>
    164a:	48 83 ec 08          	sub    $0x8,%rsp
    164e:	8b 17                	mov    (%rdi),%edx
    1650:	39 f2                	cmp    %esi,%edx
    1652:	7f 0c                	jg     1660 <fun7+0x1b>
    1654:	b8 00 00 00 00       	mov    $0x0,%eax
    1659:	75 12                	jne    166d <fun7+0x28>
    165b:	48 83 c4 08          	add    $0x8,%rsp
    165f:	c3                   	retq   
    1660:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1664:	e8 dc ff ff ff       	callq  1645 <fun7>
    1669:	01 c0                	add    %eax,%eax
    166b:	eb ee                	jmp    165b <fun7+0x16>
    166d:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1671:	e8 cf ff ff ff       	callq  1645 <fun7>
    1676:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    167a:	eb df                	jmp    165b <fun7+0x16>
    167c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1681:	c3                   	retq   

0000000000001682 <secret_phase>:
    1682:	53                   	push   %rbx
    1683:	e8 28 04 00 00       	callq  1ab0 <read_line>
    1688:	ba 0a 00 00 00       	mov    $0xa,%edx
    168d:	be 00 00 00 00       	mov    $0x0,%esi
    1692:	48 89 c7             	mov    %rax,%rdi
    1695:	e8 16 f9 ff ff       	callq  fb0 <strtol@plt>
    169a:	48 89 c3             	mov    %rax,%rbx
    169d:	8d 40 ff             	lea    -0x1(%rax),%eax
    16a0:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    16a5:	77 25                	ja     16cc <secret_phase+0x4a>
    16a7:	89 de                	mov    %ebx,%esi
    16a9:	48 8d 3d a0 2a 20 00 	lea    0x202aa0(%rip),%rdi        # 204150 <n1>
    16b0:	e8 90 ff ff ff       	callq  1645 <fun7>
    16b5:	85 c0                	test   %eax,%eax
    16b7:	75 1a                	jne    16d3 <secret_phase+0x51>
    16b9:	48 8d 3d e8 13 00 00 	lea    0x13e8(%rip),%rdi        # 2aa8 <_IO_stdin_used+0x188>
    16c0:	e8 4b f8 ff ff       	callq  f10 <puts@plt>
    16c5:	e8 2a 05 00 00       	callq  1bf4 <phase_defused>
    16ca:	5b                   	pop    %rbx
    16cb:	c3                   	retq   
    16cc:	e8 62 03 00 00       	callq  1a33 <explode_bomb>
    16d1:	eb d4                	jmp    16a7 <secret_phase+0x25>
    16d3:	e8 5b 03 00 00       	callq  1a33 <explode_bomb>
    16d8:	eb df                	jmp    16b9 <secret_phase+0x37>

00000000000016da <sig_handler>:
    16da:	48 83 ec 08          	sub    $0x8,%rsp
    16de:	48 8d 3d 5b 14 00 00 	lea    0x145b(%rip),%rdi        # 2b40 <array.3591+0x40>
    16e5:	e8 26 f8 ff ff       	callq  f10 <puts@plt>
    16ea:	bf 03 00 00 00       	mov    $0x3,%edi
    16ef:	e8 4c f9 ff ff       	callq  1040 <sleep@plt>
    16f4:	48 8d 35 e6 15 00 00 	lea    0x15e6(%rip),%rsi        # 2ce1 <array.3591+0x1e1>
    16fb:	bf 01 00 00 00       	mov    $0x1,%edi
    1700:	b8 00 00 00 00       	mov    $0x0,%eax
    1705:	e8 d6 f8 ff ff       	callq  fe0 <__printf_chk@plt>
    170a:	48 8b 3d 6f 2f 20 00 	mov    0x202f6f(%rip),%rdi        # 204680 <stdout@@GLIBC_2.2.5>
    1711:	e8 aa f8 ff ff       	callq  fc0 <fflush@plt>
    1716:	bf 01 00 00 00       	mov    $0x1,%edi
    171b:	e8 20 f9 ff ff       	callq  1040 <sleep@plt>
    1720:	48 8d 3d c2 15 00 00 	lea    0x15c2(%rip),%rdi        # 2ce9 <array.3591+0x1e9>
    1727:	e8 e4 f7 ff ff       	callq  f10 <puts@plt>
    172c:	bf 10 00 00 00       	mov    $0x10,%edi
    1731:	e8 da f8 ff ff       	callq  1010 <exit@plt>

0000000000001736 <invalid_phase>:
    1736:	48 83 ec 08          	sub    $0x8,%rsp
    173a:	48 89 fa             	mov    %rdi,%rdx
    173d:	48 8d 35 ad 15 00 00 	lea    0x15ad(%rip),%rsi        # 2cf1 <array.3591+0x1f1>
    1744:	bf 01 00 00 00       	mov    $0x1,%edi
    1749:	b8 00 00 00 00       	mov    $0x0,%eax
    174e:	e8 8d f8 ff ff       	callq  fe0 <__printf_chk@plt>
    1753:	bf 08 00 00 00       	mov    $0x8,%edi
    1758:	e8 b3 f8 ff ff       	callq  1010 <exit@plt>

000000000000175d <string_length>:
    175d:	80 3f 00             	cmpb   $0x0,(%rdi)
    1760:	74 12                	je     1774 <string_length+0x17>
    1762:	b8 00 00 00 00       	mov    $0x0,%eax
    1767:	48 83 c7 01          	add    $0x1,%rdi
    176b:	83 c0 01             	add    $0x1,%eax
    176e:	80 3f 00             	cmpb   $0x0,(%rdi)
    1771:	75 f4                	jne    1767 <string_length+0xa>
    1773:	c3                   	retq   
    1774:	b8 00 00 00 00       	mov    $0x0,%eax
    1779:	c3                   	retq   

000000000000177a <strings_not_equal>:
    177a:	41 54                	push   %r12
    177c:	55                   	push   %rbp
    177d:	53                   	push   %rbx
    177e:	48 89 fb             	mov    %rdi,%rbx
    1781:	48 89 f5             	mov    %rsi,%rbp
    1784:	e8 d4 ff ff ff       	callq  175d <string_length>
    1789:	41 89 c4             	mov    %eax,%r12d
    178c:	48 89 ef             	mov    %rbp,%rdi
    178f:	e8 c9 ff ff ff       	callq  175d <string_length>
    1794:	ba 01 00 00 00       	mov    $0x1,%edx
    1799:	41 39 c4             	cmp    %eax,%r12d
    179c:	75 2f                	jne    17cd <strings_not_equal+0x53>
    179e:	0f b6 03             	movzbl (%rbx),%eax
    17a1:	84 c0                	test   %al,%al
    17a3:	74 2f                	je     17d4 <strings_not_equal+0x5a>
    17a5:	3a 45 00             	cmp    0x0(%rbp),%al
    17a8:	75 31                	jne    17db <strings_not_equal+0x61>
    17aa:	b8 01 00 00 00       	mov    $0x1,%eax
    17af:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    17b3:	84 d2                	test   %dl,%dl
    17b5:	74 11                	je     17c8 <strings_not_equal+0x4e>
    17b7:	48 83 c0 01          	add    $0x1,%rax
    17bb:	38 54 05 ff          	cmp    %dl,-0x1(%rbp,%rax,1)
    17bf:	74 ee                	je     17af <strings_not_equal+0x35>
    17c1:	ba 01 00 00 00       	mov    $0x1,%edx
    17c6:	eb 05                	jmp    17cd <strings_not_equal+0x53>
    17c8:	ba 00 00 00 00       	mov    $0x0,%edx
    17cd:	89 d0                	mov    %edx,%eax
    17cf:	5b                   	pop    %rbx
    17d0:	5d                   	pop    %rbp
    17d1:	41 5c                	pop    %r12
    17d3:	c3                   	retq   
    17d4:	ba 00 00 00 00       	mov    $0x0,%edx
    17d9:	eb f2                	jmp    17cd <strings_not_equal+0x53>
    17db:	ba 01 00 00 00       	mov    $0x1,%edx
    17e0:	eb eb                	jmp    17cd <strings_not_equal+0x53>

00000000000017e2 <initialize_bomb>:
    17e2:	55                   	push   %rbp
    17e3:	53                   	push   %rbx
    17e4:	48 81 ec 58 20 00 00 	sub    $0x2058,%rsp
    17eb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    17f2:	00 00 
    17f4:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    17fb:	00 
    17fc:	31 c0                	xor    %eax,%eax
    17fe:	48 8d 35 d5 fe ff ff 	lea    -0x12b(%rip),%rsi        # 16da <sig_handler>
    1805:	bf 02 00 00 00       	mov    $0x2,%edi
    180a:	e8 71 f7 ff ff       	callq  f80 <signal@plt>
    180f:	48 89 e7             	mov    %rsp,%rdi
    1812:	be 40 00 00 00       	mov    $0x40,%esi
    1817:	e8 e4 f7 ff ff       	callq  1000 <gethostname@plt>
    181c:	85 c0                	test   %eax,%eax
    181e:	75 45                	jne    1865 <initialize_bomb+0x83>
    1820:	48 8b 3d 59 2a 20 00 	mov    0x202a59(%rip),%rdi        # 204280 <host_table>
    1827:	48 8d 1d 5a 2a 20 00 	lea    0x202a5a(%rip),%rbx        # 204288 <host_table+0x8>
    182e:	48 89 e5             	mov    %rsp,%rbp
    1831:	48 85 ff             	test   %rdi,%rdi
    1834:	74 19                	je     184f <initialize_bomb+0x6d>
    1836:	48 89 ee             	mov    %rbp,%rsi
    1839:	e8 a2 f6 ff ff       	callq  ee0 <strcasecmp@plt>
    183e:	85 c0                	test   %eax,%eax
    1840:	74 5e                	je     18a0 <initialize_bomb+0xbe>
    1842:	48 83 c3 08          	add    $0x8,%rbx
    1846:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    184a:	48 85 ff             	test   %rdi,%rdi
    184d:	75 e7                	jne    1836 <initialize_bomb+0x54>
    184f:	48 8d 3d 5a 13 00 00 	lea    0x135a(%rip),%rdi        # 2bb0 <array.3591+0xb0>
    1856:	e8 b5 f6 ff ff       	callq  f10 <puts@plt>
    185b:	bf 08 00 00 00       	mov    $0x8,%edi
    1860:	e8 ab f7 ff ff       	callq  1010 <exit@plt>
    1865:	48 8d 3d 0c 13 00 00 	lea    0x130c(%rip),%rdi        # 2b78 <array.3591+0x78>
    186c:	e8 9f f6 ff ff       	callq  f10 <puts@plt>
    1871:	bf 08 00 00 00       	mov    $0x8,%edi
    1876:	e8 95 f7 ff ff       	callq  1010 <exit@plt>
    187b:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    1880:	48 8d 35 7b 14 00 00 	lea    0x147b(%rip),%rsi        # 2d02 <array.3591+0x202>
    1887:	bf 01 00 00 00       	mov    $0x1,%edi
    188c:	b8 00 00 00 00       	mov    $0x0,%eax
    1891:	e8 4a f7 ff ff       	callq  fe0 <__printf_chk@plt>
    1896:	bf 08 00 00 00       	mov    $0x8,%edi
    189b:	e8 70 f7 ff ff       	callq  1010 <exit@plt>
    18a0:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    18a5:	e8 62 0d 00 00       	callq  260c <init_driver>
    18aa:	85 c0                	test   %eax,%eax
    18ac:	78 cd                	js     187b <initialize_bomb+0x99>
    18ae:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    18b5:	00 
    18b6:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    18bd:	00 00 
    18bf:	75 0a                	jne    18cb <initialize_bomb+0xe9>
    18c1:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    18c8:	5b                   	pop    %rbx
    18c9:	5d                   	pop    %rbp
    18ca:	c3                   	retq   
    18cb:	e8 60 f6 ff ff       	callq  f30 <__stack_chk_fail@plt>

00000000000018d0 <initialize_bomb_solve>:
    18d0:	c3                   	retq   

00000000000018d1 <blank_line>:
    18d1:	55                   	push   %rbp
    18d2:	53                   	push   %rbx
    18d3:	48 83 ec 08          	sub    $0x8,%rsp
    18d7:	48 89 fd             	mov    %rdi,%rbp
    18da:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    18de:	84 db                	test   %bl,%bl
    18e0:	74 1e                	je     1900 <blank_line+0x2f>
    18e2:	e8 69 f7 ff ff       	callq  1050 <__ctype_b_loc@plt>
    18e7:	48 83 c5 01          	add    $0x1,%rbp
    18eb:	48 0f be db          	movsbq %bl,%rbx
    18ef:	48 8b 00             	mov    (%rax),%rax
    18f2:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    18f7:	75 e1                	jne    18da <blank_line+0x9>
    18f9:	b8 00 00 00 00       	mov    $0x0,%eax
    18fe:	eb 05                	jmp    1905 <blank_line+0x34>
    1900:	b8 01 00 00 00       	mov    $0x1,%eax
    1905:	48 83 c4 08          	add    $0x8,%rsp
    1909:	5b                   	pop    %rbx
    190a:	5d                   	pop    %rbp
    190b:	c3                   	retq   

000000000000190c <skip>:
    190c:	55                   	push   %rbp
    190d:	53                   	push   %rbx
    190e:	48 83 ec 08          	sub    $0x8,%rsp
    1912:	48 8d 2d a7 2d 20 00 	lea    0x202da7(%rip),%rbp        # 2046c0 <input_strings>
    1919:	48 63 05 8c 2d 20 00 	movslq 0x202d8c(%rip),%rax        # 2046ac <num_input_strings>
    1920:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1924:	48 c1 e7 04          	shl    $0x4,%rdi
    1928:	48 01 ef             	add    %rbp,%rdi
    192b:	48 8b 15 7e 2d 20 00 	mov    0x202d7e(%rip),%rdx        # 2046b0 <infile>
    1932:	be 50 00 00 00       	mov    $0x50,%esi
    1937:	e8 34 f6 ff ff       	callq  f70 <fgets@plt>
    193c:	48 89 c3             	mov    %rax,%rbx
    193f:	48 85 c0             	test   %rax,%rax
    1942:	74 0c                	je     1950 <skip+0x44>
    1944:	48 89 c7             	mov    %rax,%rdi
    1947:	e8 85 ff ff ff       	callq  18d1 <blank_line>
    194c:	85 c0                	test   %eax,%eax
    194e:	75 c9                	jne    1919 <skip+0xd>
    1950:	48 89 d8             	mov    %rbx,%rax
    1953:	48 83 c4 08          	add    $0x8,%rsp
    1957:	5b                   	pop    %rbx
    1958:	5d                   	pop    %rbp
    1959:	c3                   	retq   

000000000000195a <send_msg>:
    195a:	53                   	push   %rbx
    195b:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
    1962:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1969:	00 00 
    196b:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1972:	00 
    1973:	31 c0                	xor    %eax,%eax
    1975:	8b 15 31 2d 20 00    	mov    0x202d31(%rip),%edx        # 2046ac <num_input_strings>
    197b:	8d 42 ff             	lea    -0x1(%rdx),%eax
    197e:	48 98                	cltq   
    1980:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1984:	48 c1 e0 04          	shl    $0x4,%rax
    1988:	48 8d 0d 31 2d 20 00 	lea    0x202d31(%rip),%rcx        # 2046c0 <input_strings>
    198f:	48 01 c8             	add    %rcx,%rax
    1992:	85 ff                	test   %edi,%edi
    1994:	4c 8d 0d 81 13 00 00 	lea    0x1381(%rip),%r9        # 2d1c <array.3591+0x21c>
    199b:	48 8d 0d 82 13 00 00 	lea    0x1382(%rip),%rcx        # 2d24 <array.3591+0x224>
    19a2:	4c 0f 44 c9          	cmove  %rcx,%r9
    19a6:	48 89 e3             	mov    %rsp,%rbx
    19a9:	50                   	push   %rax
    19aa:	52                   	push   %rdx
    19ab:	44 8b 05 92 27 20 00 	mov    0x202792(%rip),%r8d        # 204144 <bomb_id>
    19b2:	48 8d 0d 74 13 00 00 	lea    0x1374(%rip),%rcx        # 2d2d <array.3591+0x22d>
    19b9:	ba 00 20 00 00       	mov    $0x2000,%edx
    19be:	be 01 00 00 00       	mov    $0x1,%esi
    19c3:	48 89 df             	mov    %rbx,%rdi
    19c6:	b8 00 00 00 00       	mov    $0x0,%eax
    19cb:	e8 90 f6 ff ff       	callq  1060 <__sprintf_chk@plt>
    19d0:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
    19d7:	00 
    19d8:	b9 00 00 00 00       	mov    $0x0,%ecx
    19dd:	48 89 da             	mov    %rbx,%rdx
    19e0:	48 8d 35 39 27 20 00 	lea    0x202739(%rip),%rsi        # 204120 <user_password>
    19e7:	48 8d 3d 4a 27 20 00 	lea    0x20274a(%rip),%rdi        # 204138 <userid>
    19ee:	e8 22 0e 00 00       	callq  2815 <driver_post>
    19f3:	48 83 c4 10          	add    $0x10,%rsp
    19f7:	85 c0                	test   %eax,%eax
    19f9:	78 1c                	js     1a17 <send_msg+0xbd>
    19fb:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1a02:	00 
    1a03:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1a0a:	00 00 
    1a0c:	75 20                	jne    1a2e <send_msg+0xd4>
    1a0e:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    1a15:	5b                   	pop    %rbx
    1a16:	c3                   	retq   
    1a17:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    1a1e:	00 
    1a1f:	e8 ec f4 ff ff       	callq  f10 <puts@plt>
    1a24:	bf 00 00 00 00       	mov    $0x0,%edi
    1a29:	e8 e2 f5 ff ff       	callq  1010 <exit@plt>
    1a2e:	e8 fd f4 ff ff       	callq  f30 <__stack_chk_fail@plt>

0000000000001a33 <explode_bomb>:
    1a33:	48 83 ec 08          	sub    $0x8,%rsp
    1a37:	48 8d 3d fb 12 00 00 	lea    0x12fb(%rip),%rdi        # 2d39 <array.3591+0x239>
    1a3e:	e8 cd f4 ff ff       	callq  f10 <puts@plt>
    1a43:	48 8d 3d f8 12 00 00 	lea    0x12f8(%rip),%rdi        # 2d42 <array.3591+0x242>
    1a4a:	e8 c1 f4 ff ff       	callq  f10 <puts@plt>
    1a4f:	bf 00 00 00 00       	mov    $0x0,%edi
    1a54:	e8 01 ff ff ff       	callq  195a <send_msg>
    1a59:	48 8d 3d 88 11 00 00 	lea    0x1188(%rip),%rdi        # 2be8 <array.3591+0xe8>
    1a60:	e8 ab f4 ff ff       	callq  f10 <puts@plt>
    1a65:	bf 08 00 00 00       	mov    $0x8,%edi
    1a6a:	e8 a1 f5 ff ff       	callq  1010 <exit@plt>

0000000000001a6f <read_six_numbers>:
    1a6f:	48 83 ec 08          	sub    $0x8,%rsp
    1a73:	48 89 f2             	mov    %rsi,%rdx
    1a76:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1a7a:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1a7e:	50                   	push   %rax
    1a7f:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1a83:	50                   	push   %rax
    1a84:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1a88:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1a8c:	48 8d 35 c6 12 00 00 	lea    0x12c6(%rip),%rsi        # 2d59 <array.3591+0x259>
    1a93:	b8 00 00 00 00       	mov    $0x0,%eax
    1a98:	e8 33 f5 ff ff       	callq  fd0 <__isoc99_sscanf@plt>
    1a9d:	48 83 c4 10          	add    $0x10,%rsp
    1aa1:	83 f8 05             	cmp    $0x5,%eax
    1aa4:	7e 05                	jle    1aab <read_six_numbers+0x3c>
    1aa6:	48 83 c4 08          	add    $0x8,%rsp
    1aaa:	c3                   	retq   
    1aab:	e8 83 ff ff ff       	callq  1a33 <explode_bomb>

0000000000001ab0 <read_line>:
    1ab0:	48 83 ec 08          	sub    $0x8,%rsp
    1ab4:	b8 00 00 00 00       	mov    $0x0,%eax
    1ab9:	e8 4e fe ff ff       	callq  190c <skip>
    1abe:	48 85 c0             	test   %rax,%rax
    1ac1:	74 6f                	je     1b32 <read_line+0x82>
    1ac3:	8b 35 e3 2b 20 00    	mov    0x202be3(%rip),%esi        # 2046ac <num_input_strings>
    1ac9:	48 63 c6             	movslq %esi,%rax
    1acc:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1ad0:	48 c1 e2 04          	shl    $0x4,%rdx
    1ad4:	48 8d 05 e5 2b 20 00 	lea    0x202be5(%rip),%rax        # 2046c0 <input_strings>
    1adb:	48 01 c2             	add    %rax,%rdx
    1ade:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1ae5:	b8 00 00 00 00       	mov    $0x0,%eax
    1aea:	48 89 d7             	mov    %rdx,%rdi
    1aed:	f2 ae                	repnz scas %es:(%rdi),%al
    1aef:	48 f7 d1             	not    %rcx
    1af2:	48 83 e9 01          	sub    $0x1,%rcx
    1af6:	83 f9 4e             	cmp    $0x4e,%ecx
    1af9:	0f 8f ab 00 00 00    	jg     1baa <read_line+0xfa>
    1aff:	83 e9 01             	sub    $0x1,%ecx
    1b02:	48 63 c9             	movslq %ecx,%rcx
    1b05:	48 63 c6             	movslq %esi,%rax
    1b08:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1b0c:	48 c1 e0 04          	shl    $0x4,%rax
    1b10:	48 89 c7             	mov    %rax,%rdi
    1b13:	48 8d 05 a6 2b 20 00 	lea    0x202ba6(%rip),%rax        # 2046c0 <input_strings>
    1b1a:	48 01 f8             	add    %rdi,%rax
    1b1d:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    1b21:	83 c6 01             	add    $0x1,%esi
    1b24:	89 35 82 2b 20 00    	mov    %esi,0x202b82(%rip)        # 2046ac <num_input_strings>
    1b2a:	48 89 d0             	mov    %rdx,%rax
    1b2d:	48 83 c4 08          	add    $0x8,%rsp
    1b31:	c3                   	retq   
    1b32:	48 8b 05 57 2b 20 00 	mov    0x202b57(%rip),%rax        # 204690 <stdin@@GLIBC_2.2.5>
    1b39:	48 39 05 70 2b 20 00 	cmp    %rax,0x202b70(%rip)        # 2046b0 <infile>
    1b40:	74 1b                	je     1b5d <read_line+0xad>
    1b42:	48 8d 3d 40 12 00 00 	lea    0x1240(%rip),%rdi        # 2d89 <array.3591+0x289>
    1b49:	e8 82 f3 ff ff       	callq  ed0 <getenv@plt>
    1b4e:	48 85 c0             	test   %rax,%rax
    1b51:	74 20                	je     1b73 <read_line+0xc3>
    1b53:	bf 00 00 00 00       	mov    $0x0,%edi
    1b58:	e8 b3 f4 ff ff       	callq  1010 <exit@plt>
    1b5d:	48 8d 3d 07 12 00 00 	lea    0x1207(%rip),%rdi        # 2d6b <array.3591+0x26b>
    1b64:	e8 a7 f3 ff ff       	callq  f10 <puts@plt>
    1b69:	bf 08 00 00 00       	mov    $0x8,%edi
    1b6e:	e8 9d f4 ff ff       	callq  1010 <exit@plt>
    1b73:	48 8b 05 16 2b 20 00 	mov    0x202b16(%rip),%rax        # 204690 <stdin@@GLIBC_2.2.5>
    1b7a:	48 89 05 2f 2b 20 00 	mov    %rax,0x202b2f(%rip)        # 2046b0 <infile>
    1b81:	b8 00 00 00 00       	mov    $0x0,%eax
    1b86:	e8 81 fd ff ff       	callq  190c <skip>
    1b8b:	48 85 c0             	test   %rax,%rax
    1b8e:	0f 85 2f ff ff ff    	jne    1ac3 <read_line+0x13>
    1b94:	48 8d 3d d0 11 00 00 	lea    0x11d0(%rip),%rdi        # 2d6b <array.3591+0x26b>
    1b9b:	e8 70 f3 ff ff       	callq  f10 <puts@plt>
    1ba0:	bf 00 00 00 00       	mov    $0x0,%edi
    1ba5:	e8 66 f4 ff ff       	callq  1010 <exit@plt>
    1baa:	48 8d 3d e3 11 00 00 	lea    0x11e3(%rip),%rdi        # 2d94 <array.3591+0x294>
    1bb1:	e8 5a f3 ff ff       	callq  f10 <puts@plt>
    1bb6:	8b 05 f0 2a 20 00    	mov    0x202af0(%rip),%eax        # 2046ac <num_input_strings>
    1bbc:	8d 50 01             	lea    0x1(%rax),%edx
    1bbf:	89 15 e7 2a 20 00    	mov    %edx,0x202ae7(%rip)        # 2046ac <num_input_strings>
    1bc5:	48 98                	cltq   
    1bc7:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1bcb:	48 8d 15 ee 2a 20 00 	lea    0x202aee(%rip),%rdx        # 2046c0 <input_strings>
    1bd2:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1bd9:	75 6e 63 
    1bdc:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1be3:	2a 2a 00 
    1be6:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1bea:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1bef:	e8 3f fe ff ff       	callq  1a33 <explode_bomb>

0000000000001bf4 <phase_defused>:
    1bf4:	48 83 ec 78          	sub    $0x78,%rsp
    1bf8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1bff:	00 00 
    1c01:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1c06:	31 c0                	xor    %eax,%eax
    1c08:	bf 01 00 00 00       	mov    $0x1,%edi
    1c0d:	e8 48 fd ff ff       	callq  195a <send_msg>
    1c12:	83 3d 93 2a 20 00 06 	cmpl   $0x6,0x202a93(%rip)        # 2046ac <num_input_strings>
    1c19:	74 19                	je     1c34 <phase_defused+0x40>
    1c1b:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1c20:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1c27:	00 00 
    1c29:	0f 85 84 00 00 00    	jne    1cb3 <phase_defused+0xbf>
    1c2f:	48 83 c4 78          	add    $0x78,%rsp
    1c33:	c3                   	retq   
    1c34:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1c39:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1c3e:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1c43:	48 8d 35 65 11 00 00 	lea    0x1165(%rip),%rsi        # 2daf <array.3591+0x2af>
    1c4a:	48 8d 3d 5f 2b 20 00 	lea    0x202b5f(%rip),%rdi        # 2047b0 <input_strings+0xf0>
    1c51:	b8 00 00 00 00       	mov    $0x0,%eax
    1c56:	e8 75 f3 ff ff       	callq  fd0 <__isoc99_sscanf@plt>
    1c5b:	83 f8 03             	cmp    $0x3,%eax
    1c5e:	74 1a                	je     1c7a <phase_defused+0x86>
    1c60:	48 8d 3d 09 10 00 00 	lea    0x1009(%rip),%rdi        # 2c70 <array.3591+0x170>
    1c67:	e8 a4 f2 ff ff       	callq  f10 <puts@plt>
    1c6c:	48 8d 3d 2d 10 00 00 	lea    0x102d(%rip),%rdi        # 2ca0 <array.3591+0x1a0>
    1c73:	e8 98 f2 ff ff       	callq  f10 <puts@plt>
    1c78:	eb a1                	jmp    1c1b <phase_defused+0x27>
    1c7a:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1c7f:	48 8d 35 32 11 00 00 	lea    0x1132(%rip),%rsi        # 2db8 <array.3591+0x2b8>
    1c86:	e8 ef fa ff ff       	callq  177a <strings_not_equal>
    1c8b:	85 c0                	test   %eax,%eax
    1c8d:	75 d1                	jne    1c60 <phase_defused+0x6c>
    1c8f:	48 8d 3d 7a 0f 00 00 	lea    0xf7a(%rip),%rdi        # 2c10 <array.3591+0x110>
    1c96:	e8 75 f2 ff ff       	callq  f10 <puts@plt>
    1c9b:	48 8d 3d 96 0f 00 00 	lea    0xf96(%rip),%rdi        # 2c38 <array.3591+0x138>
    1ca2:	e8 69 f2 ff ff       	callq  f10 <puts@plt>
    1ca7:	b8 00 00 00 00       	mov    $0x0,%eax
    1cac:	e8 d1 f9 ff ff       	callq  1682 <secret_phase>
    1cb1:	eb ad                	jmp    1c60 <phase_defused+0x6c>
    1cb3:	e8 78 f2 ff ff       	callq  f30 <__stack_chk_fail@plt>

0000000000001cb8 <sigalrm_handler>:
    1cb8:	48 83 ec 08          	sub    $0x8,%rsp
    1cbc:	b9 00 00 00 00       	mov    $0x0,%ecx
    1cc1:	48 8d 15 40 11 00 00 	lea    0x1140(%rip),%rdx        # 2e08 <array.3591+0x308>
    1cc8:	be 01 00 00 00       	mov    $0x1,%esi
    1ccd:	48 8b 3d cc 29 20 00 	mov    0x2029cc(%rip),%rdi        # 2046a0 <stderr@@GLIBC_2.2.5>
    1cd4:	b8 00 00 00 00       	mov    $0x0,%eax
    1cd9:	e8 52 f3 ff ff       	callq  1030 <__fprintf_chk@plt>
    1cde:	bf 01 00 00 00       	mov    $0x1,%edi
    1ce3:	e8 28 f3 ff ff       	callq  1010 <exit@plt>

0000000000001ce8 <rio_readlineb>:
    1ce8:	41 56                	push   %r14
    1cea:	41 55                	push   %r13
    1cec:	41 54                	push   %r12
    1cee:	55                   	push   %rbp
    1cef:	53                   	push   %rbx
    1cf0:	48 89 f5             	mov    %rsi,%rbp
    1cf3:	48 83 fa 01          	cmp    $0x1,%rdx
    1cf7:	0f 86 9d 00 00 00    	jbe    1d9a <rio_readlineb+0xb2>
    1cfd:	48 89 fb             	mov    %rdi,%rbx
    1d00:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    1d05:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1d0b:	4c 8d 67 10          	lea    0x10(%rdi),%r12
    1d0f:	eb 17                	jmp    1d28 <rio_readlineb+0x40>
    1d11:	e8 da f1 ff ff       	callq  ef0 <__errno_location@plt>
    1d16:	83 38 04             	cmpl   $0x4,(%rax)
    1d19:	74 0d                	je     1d28 <rio_readlineb+0x40>
    1d1b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1d22:	eb 28                	jmp    1d4c <rio_readlineb+0x64>
    1d24:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    1d28:	8b 43 04             	mov    0x4(%rbx),%eax
    1d2b:	85 c0                	test   %eax,%eax
    1d2d:	7f 2e                	jg     1d5d <rio_readlineb+0x75>
    1d2f:	ba 00 20 00 00       	mov    $0x2000,%edx
    1d34:	4c 89 e6             	mov    %r12,%rsi
    1d37:	8b 3b                	mov    (%rbx),%edi
    1d39:	e8 22 f2 ff ff       	callq  f60 <read@plt>
    1d3e:	89 43 04             	mov    %eax,0x4(%rbx)
    1d41:	85 c0                	test   %eax,%eax
    1d43:	78 cc                	js     1d11 <rio_readlineb+0x29>
    1d45:	75 dd                	jne    1d24 <rio_readlineb+0x3c>
    1d47:	b8 00 00 00 00       	mov    $0x0,%eax
    1d4c:	85 c0                	test   %eax,%eax
    1d4e:	75 52                	jne    1da2 <rio_readlineb+0xba>
    1d50:	b8 00 00 00 00       	mov    $0x0,%eax
    1d55:	41 83 fd 01          	cmp    $0x1,%r13d
    1d59:	75 2f                	jne    1d8a <rio_readlineb+0xa2>
    1d5b:	eb 34                	jmp    1d91 <rio_readlineb+0xa9>
    1d5d:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    1d61:	0f b6 0a             	movzbl (%rdx),%ecx
    1d64:	48 83 c2 01          	add    $0x1,%rdx
    1d68:	48 89 53 08          	mov    %rdx,0x8(%rbx)
    1d6c:	83 e8 01             	sub    $0x1,%eax
    1d6f:	89 43 04             	mov    %eax,0x4(%rbx)
    1d72:	48 83 c5 01          	add    $0x1,%rbp
    1d76:	88 4d ff             	mov    %cl,-0x1(%rbp)
    1d79:	80 f9 0a             	cmp    $0xa,%cl
    1d7c:	74 0c                	je     1d8a <rio_readlineb+0xa2>
    1d7e:	41 83 c5 01          	add    $0x1,%r13d
    1d82:	4c 39 f5             	cmp    %r14,%rbp
    1d85:	75 a1                	jne    1d28 <rio_readlineb+0x40>
    1d87:	4c 89 f5             	mov    %r14,%rbp
    1d8a:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    1d8e:	49 63 c5             	movslq %r13d,%rax
    1d91:	5b                   	pop    %rbx
    1d92:	5d                   	pop    %rbp
    1d93:	41 5c                	pop    %r12
    1d95:	41 5d                	pop    %r13
    1d97:	41 5e                	pop    %r14
    1d99:	c3                   	retq   
    1d9a:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1da0:	eb e8                	jmp    1d8a <rio_readlineb+0xa2>
    1da2:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1da9:	eb e6                	jmp    1d91 <rio_readlineb+0xa9>

0000000000001dab <submitr>:
    1dab:	41 57                	push   %r15
    1dad:	41 56                	push   %r14
    1daf:	41 55                	push   %r13
    1db1:	41 54                	push   %r12
    1db3:	55                   	push   %rbp
    1db4:	53                   	push   %rbx
    1db5:	48 81 ec 78 a0 00 00 	sub    $0xa078,%rsp
    1dbc:	49 89 fd             	mov    %rdi,%r13
    1dbf:	89 f5                	mov    %esi,%ebp
    1dc1:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1dc6:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    1dcb:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    1dd0:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    1dd5:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    1ddc:	00 
    1ddd:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    1de4:	00 
    1de5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1dec:	00 00 
    1dee:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    1df5:	00 
    1df6:	31 c0                	xor    %eax,%eax
    1df8:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    1dff:	00 
    1e00:	ba 00 00 00 00       	mov    $0x0,%edx
    1e05:	be 01 00 00 00       	mov    $0x1,%esi
    1e0a:	bf 02 00 00 00       	mov    $0x2,%edi
    1e0f:	e8 5c f2 ff ff       	callq  1070 <socket@plt>
    1e14:	85 c0                	test   %eax,%eax
    1e16:	0f 88 35 01 00 00    	js     1f51 <submitr+0x1a6>
    1e1c:	41 89 c4             	mov    %eax,%r12d
    1e1f:	4c 89 ef             	mov    %r13,%rdi
    1e22:	e8 69 f1 ff ff       	callq  f90 <gethostbyname@plt>
    1e27:	48 85 c0             	test   %rax,%rax
    1e2a:	0f 84 71 01 00 00    	je     1fa1 <submitr+0x1f6>
    1e30:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    1e35:	48 c7 44 24 42 00 00 	movq   $0x0,0x42(%rsp)
    1e3c:	00 00 
    1e3e:	c7 44 24 4a 00 00 00 	movl   $0x0,0x4a(%rsp)
    1e45:	00 
    1e46:	66 c7 44 24 4e 00 00 	movw   $0x0,0x4e(%rsp)
    1e4d:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    1e54:	48 63 50 14          	movslq 0x14(%rax),%rdx
    1e58:	48 8b 40 18          	mov    0x18(%rax),%rax
    1e5c:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    1e61:	b9 0c 00 00 00       	mov    $0xc,%ecx
    1e66:	48 8b 30             	mov    (%rax),%rsi
    1e69:	e8 32 f1 ff ff       	callq  fa0 <__memmove_chk@plt>
    1e6e:	66 c1 cd 08          	ror    $0x8,%bp
    1e72:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    1e77:	ba 10 00 00 00       	mov    $0x10,%edx
    1e7c:	4c 89 ee             	mov    %r13,%rsi
    1e7f:	44 89 e7             	mov    %r12d,%edi
    1e82:	e8 99 f1 ff ff       	callq  1020 <connect@plt>
    1e87:	85 c0                	test   %eax,%eax
    1e89:	0f 88 7d 01 00 00    	js     200c <submitr+0x261>
    1e8f:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
    1e96:	b8 00 00 00 00       	mov    $0x0,%eax
    1e9b:	4c 89 c9             	mov    %r9,%rcx
    1e9e:	48 89 df             	mov    %rbx,%rdi
    1ea1:	f2 ae                	repnz scas %es:(%rdi),%al
    1ea3:	48 89 ce             	mov    %rcx,%rsi
    1ea6:	48 f7 d6             	not    %rsi
    1ea9:	4c 89 c9             	mov    %r9,%rcx
    1eac:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    1eb1:	f2 ae                	repnz scas %es:(%rdi),%al
    1eb3:	49 89 c8             	mov    %rcx,%r8
    1eb6:	4c 89 c9             	mov    %r9,%rcx
    1eb9:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    1ebe:	f2 ae                	repnz scas %es:(%rdi),%al
    1ec0:	48 89 ca             	mov    %rcx,%rdx
    1ec3:	48 f7 d2             	not    %rdx
    1ec6:	4c 89 c9             	mov    %r9,%rcx
    1ec9:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    1ece:	f2 ae                	repnz scas %es:(%rdi),%al
    1ed0:	4c 29 c2             	sub    %r8,%rdx
    1ed3:	48 29 ca             	sub    %rcx,%rdx
    1ed6:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
    1edb:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
    1ee0:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1ee6:	0f 87 7d 01 00 00    	ja     2069 <submitr+0x2be>
    1eec:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    1ef3:	00 
    1ef4:	b9 00 04 00 00       	mov    $0x400,%ecx
    1ef9:	b8 00 00 00 00       	mov    $0x0,%eax
    1efe:	48 89 d7             	mov    %rdx,%rdi
    1f01:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1f04:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1f0b:	48 89 df             	mov    %rbx,%rdi
    1f0e:	f2 ae                	repnz scas %es:(%rdi),%al
    1f10:	48 89 ca             	mov    %rcx,%rdx
    1f13:	48 f7 d2             	not    %rdx
    1f16:	48 89 d1             	mov    %rdx,%rcx
    1f19:	48 83 e9 01          	sub    $0x1,%rcx
    1f1d:	85 c9                	test   %ecx,%ecx
    1f1f:	0f 84 17 05 00 00    	je     243c <submitr+0x691>
    1f25:	8d 41 ff             	lea    -0x1(%rcx),%eax
    1f28:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
    1f2d:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    1f34:	00 
    1f35:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    1f3c:	00 
    1f3d:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1f42:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    1f49:	00 20 00 
    1f4c:	e9 a6 01 00 00       	jmpq   20f7 <submitr+0x34c>
    1f51:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    1f58:	3a 20 43 
    1f5b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    1f62:	20 75 6e 
    1f65:	49 89 07             	mov    %rax,(%r15)
    1f68:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1f6c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    1f73:	74 6f 20 
    1f76:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    1f7d:	65 20 73 
    1f80:	49 89 47 10          	mov    %rax,0x10(%r15)
    1f84:	49 89 57 18          	mov    %rdx,0x18(%r15)
    1f88:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    1f8f:	65 
    1f90:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    1f97:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1f9c:	e9 13 03 00 00       	jmpq   22b4 <submitr+0x509>
    1fa1:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    1fa8:	3a 20 44 
    1fab:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    1fb2:	20 75 6e 
    1fb5:	49 89 07             	mov    %rax,(%r15)
    1fb8:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1fbc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    1fc3:	74 6f 20 
    1fc6:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    1fcd:	76 65 20 
    1fd0:	49 89 47 10          	mov    %rax,0x10(%r15)
    1fd4:	49 89 57 18          	mov    %rdx,0x18(%r15)
    1fd8:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    1fdf:	72 20 61 
    1fe2:	49 89 47 20          	mov    %rax,0x20(%r15)
    1fe6:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    1fed:	65 
    1fee:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    1ff5:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    1ffa:	44 89 e7             	mov    %r12d,%edi
    1ffd:	e8 4e ef ff ff       	callq  f50 <close@plt>
    2002:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2007:	e9 a8 02 00 00       	jmpq   22b4 <submitr+0x509>
    200c:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2013:	3a 20 55 
    2016:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    201d:	20 74 6f 
    2020:	49 89 07             	mov    %rax,(%r15)
    2023:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2027:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    202e:	65 63 74 
    2031:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2038:	68 65 20 
    203b:	49 89 47 10          	mov    %rax,0x10(%r15)
    203f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2043:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    204a:	76 
    204b:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    2052:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    2057:	44 89 e7             	mov    %r12d,%edi
    205a:	e8 f1 ee ff ff       	callq  f50 <close@plt>
    205f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2064:	e9 4b 02 00 00       	jmpq   22b4 <submitr+0x509>
    2069:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2070:	3a 20 52 
    2073:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    207a:	20 73 74 
    207d:	49 89 07             	mov    %rax,(%r15)
    2080:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2084:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    208b:	74 6f 6f 
    208e:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2095:	65 2e 20 
    2098:	49 89 47 10          	mov    %rax,0x10(%r15)
    209c:	49 89 57 18          	mov    %rdx,0x18(%r15)
    20a0:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    20a7:	61 73 65 
    20aa:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    20b1:	49 54 52 
    20b4:	49 89 47 20          	mov    %rax,0x20(%r15)
    20b8:	49 89 57 28          	mov    %rdx,0x28(%r15)
    20bc:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    20c3:	55 46 00 
    20c6:	49 89 47 30          	mov    %rax,0x30(%r15)
    20ca:	44 89 e7             	mov    %r12d,%edi
    20cd:	e8 7e ee ff ff       	callq  f50 <close@plt>
    20d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    20d7:	e9 d8 01 00 00       	jmpq   22b4 <submitr+0x509>
    20dc:	49 0f a3 c5          	bt     %rax,%r13
    20e0:	73 21                	jae    2103 <submitr+0x358>
    20e2:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    20e6:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    20ea:	48 83 c3 01          	add    $0x1,%rbx
    20ee:	49 39 de             	cmp    %rbx,%r14
    20f1:	0f 84 45 03 00 00    	je     243c <submitr+0x691>
    20f7:	44 0f b6 03          	movzbl (%rbx),%r8d
    20fb:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    20ff:	3c 35                	cmp    $0x35,%al
    2101:	76 d9                	jbe    20dc <submitr+0x331>
    2103:	44 89 c0             	mov    %r8d,%eax
    2106:	83 e0 df             	and    $0xffffffdf,%eax
    2109:	83 e8 41             	sub    $0x41,%eax
    210c:	3c 19                	cmp    $0x19,%al
    210e:	76 d2                	jbe    20e2 <submitr+0x337>
    2110:	41 80 f8 20          	cmp    $0x20,%r8b
    2114:	74 60                	je     2176 <submitr+0x3cb>
    2116:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    211a:	3c 5f                	cmp    $0x5f,%al
    211c:	76 0a                	jbe    2128 <submitr+0x37d>
    211e:	41 80 f8 09          	cmp    $0x9,%r8b
    2122:	0f 85 87 02 00 00    	jne    23af <submitr+0x604>
    2128:	45 0f b6 c0          	movzbl %r8b,%r8d
    212c:	48 8d 0d ad 0d 00 00 	lea    0xdad(%rip),%rcx        # 2ee0 <array.3591+0x3e0>
    2133:	ba 08 00 00 00       	mov    $0x8,%edx
    2138:	be 01 00 00 00       	mov    $0x1,%esi
    213d:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    2142:	b8 00 00 00 00       	mov    $0x0,%eax
    2147:	e8 14 ef ff ff       	callq  1060 <__sprintf_chk@plt>
    214c:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    2153:	00 
    2154:	88 45 00             	mov    %al,0x0(%rbp)
    2157:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    215e:	00 
    215f:	88 45 01             	mov    %al,0x1(%rbp)
    2162:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    2169:	00 
    216a:	88 45 02             	mov    %al,0x2(%rbp)
    216d:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2171:	e9 74 ff ff ff       	jmpq   20ea <submitr+0x33f>
    2176:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    217a:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    217e:	e9 67 ff ff ff       	jmpq   20ea <submitr+0x33f>
    2183:	48 01 c5             	add    %rax,%rbp
    2186:	48 29 c3             	sub    %rax,%rbx
    2189:	0f 84 2b 03 00 00    	je     24ba <submitr+0x70f>
    218f:	48 89 da             	mov    %rbx,%rdx
    2192:	48 89 ee             	mov    %rbp,%rsi
    2195:	44 89 e7             	mov    %r12d,%edi
    2198:	e8 83 ed ff ff       	callq  f20 <write@plt>
    219d:	48 85 c0             	test   %rax,%rax
    21a0:	7f e1                	jg     2183 <submitr+0x3d8>
    21a2:	e8 49 ed ff ff       	callq  ef0 <__errno_location@plt>
    21a7:	83 38 04             	cmpl   $0x4,(%rax)
    21aa:	0f 85 a0 01 00 00    	jne    2350 <submitr+0x5a5>
    21b0:	4c 89 e8             	mov    %r13,%rax
    21b3:	eb ce                	jmp    2183 <submitr+0x3d8>
    21b5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    21bc:	3a 20 43 
    21bf:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    21c6:	20 75 6e 
    21c9:	49 89 07             	mov    %rax,(%r15)
    21cc:	49 89 57 08          	mov    %rdx,0x8(%r15)
    21d0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    21d7:	74 6f 20 
    21da:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    21e1:	66 69 72 
    21e4:	49 89 47 10          	mov    %rax,0x10(%r15)
    21e8:	49 89 57 18          	mov    %rdx,0x18(%r15)
    21ec:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    21f3:	61 64 65 
    21f6:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    21fd:	6d 20 73 
    2200:	49 89 47 20          	mov    %rax,0x20(%r15)
    2204:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2208:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    220f:	65 
    2210:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    2217:	44 89 e7             	mov    %r12d,%edi
    221a:	e8 31 ed ff ff       	callq  f50 <close@plt>
    221f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2224:	e9 8b 00 00 00       	jmpq   22b4 <submitr+0x509>
    2229:	4c 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%r9
    2230:	00 
    2231:	48 8d 0d f8 0b 00 00 	lea    0xbf8(%rip),%rcx        # 2e30 <array.3591+0x330>
    2238:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    223f:	be 01 00 00 00       	mov    $0x1,%esi
    2244:	4c 89 ff             	mov    %r15,%rdi
    2247:	b8 00 00 00 00       	mov    $0x0,%eax
    224c:	e8 0f ee ff ff       	callq  1060 <__sprintf_chk@plt>
    2251:	44 89 e7             	mov    %r12d,%edi
    2254:	e8 f7 ec ff ff       	callq  f50 <close@plt>
    2259:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    225e:	eb 54                	jmp    22b4 <submitr+0x509>
    2260:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2267:	00 
    2268:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    226d:	ba 00 20 00 00       	mov    $0x2000,%edx
    2272:	e8 71 fa ff ff       	callq  1ce8 <rio_readlineb>
    2277:	48 85 c0             	test   %rax,%rax
    227a:	7e 61                	jle    22dd <submitr+0x532>
    227c:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2283:	00 
    2284:	4c 89 ff             	mov    %r15,%rdi
    2287:	e8 74 ec ff ff       	callq  f00 <strcpy@plt>
    228c:	44 89 e7             	mov    %r12d,%edi
    228f:	e8 bc ec ff ff       	callq  f50 <close@plt>
    2294:	b9 03 00 00 00       	mov    $0x3,%ecx
    2299:	48 8d 3d 5b 0c 00 00 	lea    0xc5b(%rip),%rdi        # 2efb <array.3591+0x3fb>
    22a0:	4c 89 fe             	mov    %r15,%rsi
    22a3:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    22a5:	0f 97 c0             	seta   %al
    22a8:	1c 00                	sbb    $0x0,%al
    22aa:	84 c0                	test   %al,%al
    22ac:	0f 95 c0             	setne  %al
    22af:	0f b6 c0             	movzbl %al,%eax
    22b2:	f7 d8                	neg    %eax
    22b4:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    22bb:	00 
    22bc:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    22c3:	00 00 
    22c5:	0f 85 12 03 00 00    	jne    25dd <submitr+0x832>
    22cb:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    22d2:	5b                   	pop    %rbx
    22d3:	5d                   	pop    %rbp
    22d4:	41 5c                	pop    %r12
    22d6:	41 5d                	pop    %r13
    22d8:	41 5e                	pop    %r14
    22da:	41 5f                	pop    %r15
    22dc:	c3                   	retq   
    22dd:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    22e4:	3a 20 43 
    22e7:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    22ee:	20 75 6e 
    22f1:	49 89 07             	mov    %rax,(%r15)
    22f4:	49 89 57 08          	mov    %rdx,0x8(%r15)
    22f8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    22ff:	74 6f 20 
    2302:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2309:	73 74 61 
    230c:	49 89 47 10          	mov    %rax,0x10(%r15)
    2310:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2314:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    231b:	65 73 73 
    231e:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2325:	72 6f 6d 
    2328:	49 89 47 20          	mov    %rax,0x20(%r15)
    232c:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2330:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2337:	65 72 00 
    233a:	49 89 47 30          	mov    %rax,0x30(%r15)
    233e:	44 89 e7             	mov    %r12d,%edi
    2341:	e8 0a ec ff ff       	callq  f50 <close@plt>
    2346:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    234b:	e9 64 ff ff ff       	jmpq   22b4 <submitr+0x509>
    2350:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2357:	3a 20 43 
    235a:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2361:	20 75 6e 
    2364:	49 89 07             	mov    %rax,(%r15)
    2367:	49 89 57 08          	mov    %rdx,0x8(%r15)
    236b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2372:	74 6f 20 
    2375:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    237c:	20 74 6f 
    237f:	49 89 47 10          	mov    %rax,0x10(%r15)
    2383:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2387:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    238e:	73 65 72 
    2391:	49 89 47 20          	mov    %rax,0x20(%r15)
    2395:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    239c:	00 
    239d:	44 89 e7             	mov    %r12d,%edi
    23a0:	e8 ab eb ff ff       	callq  f50 <close@plt>
    23a5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    23aa:	e9 05 ff ff ff       	jmpq   22b4 <submitr+0x509>
    23af:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    23b6:	3a 20 52 
    23b9:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    23c0:	20 73 74 
    23c3:	49 89 07             	mov    %rax,(%r15)
    23c6:	49 89 57 08          	mov    %rdx,0x8(%r15)
    23ca:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    23d1:	63 6f 6e 
    23d4:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    23db:	20 61 6e 
    23de:	49 89 47 10          	mov    %rax,0x10(%r15)
    23e2:	49 89 57 18          	mov    %rdx,0x18(%r15)
    23e6:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    23ed:	67 61 6c 
    23f0:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    23f7:	6e 70 72 
    23fa:	49 89 47 20          	mov    %rax,0x20(%r15)
    23fe:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2402:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2409:	6c 65 20 
    240c:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2413:	63 74 65 
    2416:	49 89 47 30          	mov    %rax,0x30(%r15)
    241a:	49 89 57 38          	mov    %rdx,0x38(%r15)
    241e:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    2425:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    242a:	44 89 e7             	mov    %r12d,%edi
    242d:	e8 1e eb ff ff       	callq  f50 <close@plt>
    2432:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2437:	e9 78 fe ff ff       	jmpq   22b4 <submitr+0x509>
    243c:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    2443:	00 
    2444:	48 83 ec 08          	sub    $0x8,%rsp
    2448:	48 8d 84 24 68 40 00 	lea    0x4068(%rsp),%rax
    244f:	00 
    2450:	50                   	push   %rax
    2451:	ff 74 24 28          	pushq  0x28(%rsp)
    2455:	ff 74 24 38          	pushq  0x38(%rsp)
    2459:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    245e:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    2463:	48 8d 0d f6 09 00 00 	lea    0x9f6(%rip),%rcx        # 2e60 <array.3591+0x360>
    246a:	ba 00 20 00 00       	mov    $0x2000,%edx
    246f:	be 01 00 00 00       	mov    $0x1,%esi
    2474:	48 89 df             	mov    %rbx,%rdi
    2477:	b8 00 00 00 00       	mov    $0x0,%eax
    247c:	e8 df eb ff ff       	callq  1060 <__sprintf_chk@plt>
    2481:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2488:	b8 00 00 00 00       	mov    $0x0,%eax
    248d:	48 89 df             	mov    %rbx,%rdi
    2490:	f2 ae                	repnz scas %es:(%rdi),%al
    2492:	48 89 ca             	mov    %rcx,%rdx
    2495:	48 f7 d2             	not    %rdx
    2498:	48 89 d1             	mov    %rdx,%rcx
    249b:	48 83 c4 20          	add    $0x20,%rsp
    249f:	48 8d ac 24 60 20 00 	lea    0x2060(%rsp),%rbp
    24a6:	00 
    24a7:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    24ad:	48 83 e9 01          	sub    $0x1,%rcx
    24b1:	48 89 cb             	mov    %rcx,%rbx
    24b4:	0f 85 d5 fc ff ff    	jne    218f <submitr+0x3e4>
    24ba:	44 89 64 24 50       	mov    %r12d,0x50(%rsp)
    24bf:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    24c6:	00 
    24c7:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    24cc:	48 8d 47 10          	lea    0x10(%rdi),%rax
    24d0:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    24d5:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    24dc:	00 
    24dd:	ba 00 20 00 00       	mov    $0x2000,%edx
    24e2:	e8 01 f8 ff ff       	callq  1ce8 <rio_readlineb>
    24e7:	48 85 c0             	test   %rax,%rax
    24ea:	0f 8e c5 fc ff ff    	jle    21b5 <submitr+0x40a>
    24f0:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    24f5:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    24fc:	00 
    24fd:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    2504:	00 
    2505:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    250c:	00 
    250d:	48 8d 35 d3 09 00 00 	lea    0x9d3(%rip),%rsi        # 2ee7 <array.3591+0x3e7>
    2514:	b8 00 00 00 00       	mov    $0x0,%eax
    2519:	e8 b2 ea ff ff       	callq  fd0 <__isoc99_sscanf@plt>
    251e:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
    2523:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    252a:	0f 85 f9 fc ff ff    	jne    2229 <submitr+0x47e>
    2530:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    2537:	00 
    2538:	48 8d 2d b9 09 00 00 	lea    0x9b9(%rip),%rbp        # 2ef8 <array.3591+0x3f8>
    253f:	4c 8d 6c 24 50       	lea    0x50(%rsp),%r13
    2544:	b9 03 00 00 00       	mov    $0x3,%ecx
    2549:	48 89 de             	mov    %rbx,%rsi
    254c:	48 89 ef             	mov    %rbp,%rdi
    254f:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2551:	0f 97 c0             	seta   %al
    2554:	1c 00                	sbb    $0x0,%al
    2556:	84 c0                	test   %al,%al
    2558:	0f 84 02 fd ff ff    	je     2260 <submitr+0x4b5>
    255e:	ba 00 20 00 00       	mov    $0x2000,%edx
    2563:	48 89 de             	mov    %rbx,%rsi
    2566:	4c 89 ef             	mov    %r13,%rdi
    2569:	e8 7a f7 ff ff       	callq  1ce8 <rio_readlineb>
    256e:	48 85 c0             	test   %rax,%rax
    2571:	7f d1                	jg     2544 <submitr+0x799>
    2573:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    257a:	3a 20 43 
    257d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2584:	20 75 6e 
    2587:	49 89 07             	mov    %rax,(%r15)
    258a:	49 89 57 08          	mov    %rdx,0x8(%r15)
    258e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2595:	74 6f 20 
    2598:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    259f:	68 65 61 
    25a2:	49 89 47 10          	mov    %rax,0x10(%r15)
    25a6:	49 89 57 18          	mov    %rdx,0x18(%r15)
    25aa:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    25b1:	66 72 6f 
    25b4:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    25bb:	76 65 72 
    25be:	49 89 47 20          	mov    %rax,0x20(%r15)
    25c2:	49 89 57 28          	mov    %rdx,0x28(%r15)
    25c6:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    25cb:	44 89 e7             	mov    %r12d,%edi
    25ce:	e8 7d e9 ff ff       	callq  f50 <close@plt>
    25d3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25d8:	e9 d7 fc ff ff       	jmpq   22b4 <submitr+0x509>
    25dd:	e8 4e e9 ff ff       	callq  f30 <__stack_chk_fail@plt>

00000000000025e2 <init_timeout>:
    25e2:	85 ff                	test   %edi,%edi
    25e4:	74 25                	je     260b <init_timeout+0x29>
    25e6:	53                   	push   %rbx
    25e7:	89 fb                	mov    %edi,%ebx
    25e9:	48 8d 35 c8 f6 ff ff 	lea    -0x938(%rip),%rsi        # 1cb8 <sigalrm_handler>
    25f0:	bf 0e 00 00 00       	mov    $0xe,%edi
    25f5:	e8 86 e9 ff ff       	callq  f80 <signal@plt>
    25fa:	85 db                	test   %ebx,%ebx
    25fc:	bf 00 00 00 00       	mov    $0x0,%edi
    2601:	0f 49 fb             	cmovns %ebx,%edi
    2604:	e8 37 e9 ff ff       	callq  f40 <alarm@plt>
    2609:	5b                   	pop    %rbx
    260a:	c3                   	retq   
    260b:	c3                   	retq   

000000000000260c <init_driver>:
    260c:	41 54                	push   %r12
    260e:	55                   	push   %rbp
    260f:	53                   	push   %rbx
    2610:	48 83 ec 20          	sub    $0x20,%rsp
    2614:	49 89 fc             	mov    %rdi,%r12
    2617:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    261e:	00 00 
    2620:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2625:	31 c0                	xor    %eax,%eax
    2627:	be 01 00 00 00       	mov    $0x1,%esi
    262c:	bf 0d 00 00 00       	mov    $0xd,%edi
    2631:	e8 4a e9 ff ff       	callq  f80 <signal@plt>
    2636:	be 01 00 00 00       	mov    $0x1,%esi
    263b:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2640:	e8 3b e9 ff ff       	callq  f80 <signal@plt>
    2645:	be 01 00 00 00       	mov    $0x1,%esi
    264a:	bf 1d 00 00 00       	mov    $0x1d,%edi
    264f:	e8 2c e9 ff ff       	callq  f80 <signal@plt>
    2654:	ba 00 00 00 00       	mov    $0x0,%edx
    2659:	be 01 00 00 00       	mov    $0x1,%esi
    265e:	bf 02 00 00 00       	mov    $0x2,%edi
    2663:	e8 08 ea ff ff       	callq  1070 <socket@plt>
    2668:	85 c0                	test   %eax,%eax
    266a:	0f 88 a3 00 00 00    	js     2713 <init_driver+0x107>
    2670:	89 c3                	mov    %eax,%ebx
    2672:	48 8d 3d 85 08 00 00 	lea    0x885(%rip),%rdi        # 2efe <array.3591+0x3fe>
    2679:	e8 12 e9 ff ff       	callq  f90 <gethostbyname@plt>
    267e:	48 85 c0             	test   %rax,%rax
    2681:	0f 84 df 00 00 00    	je     2766 <init_driver+0x15a>
    2687:	48 89 e5             	mov    %rsp,%rbp
    268a:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    2691:	00 00 
    2693:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    269a:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    26a0:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    26a6:	48 63 50 14          	movslq 0x14(%rax),%rdx
    26aa:	48 8b 40 18          	mov    0x18(%rax),%rax
    26ae:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    26b2:	b9 0c 00 00 00       	mov    $0xc,%ecx
    26b7:	48 8b 30             	mov    (%rax),%rsi
    26ba:	e8 e1 e8 ff ff       	callq  fa0 <__memmove_chk@plt>
    26bf:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    26c6:	ba 10 00 00 00       	mov    $0x10,%edx
    26cb:	48 89 ee             	mov    %rbp,%rsi
    26ce:	89 df                	mov    %ebx,%edi
    26d0:	e8 4b e9 ff ff       	callq  1020 <connect@plt>
    26d5:	85 c0                	test   %eax,%eax
    26d7:	0f 88 fb 00 00 00    	js     27d8 <init_driver+0x1cc>
    26dd:	89 df                	mov    %ebx,%edi
    26df:	e8 6c e8 ff ff       	callq  f50 <close@plt>
    26e4:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    26eb:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    26f1:	b8 00 00 00 00       	mov    $0x0,%eax
    26f6:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    26fb:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2702:	00 00 
    2704:	0f 85 06 01 00 00    	jne    2810 <init_driver+0x204>
    270a:	48 83 c4 20          	add    $0x20,%rsp
    270e:	5b                   	pop    %rbx
    270f:	5d                   	pop    %rbp
    2710:	41 5c                	pop    %r12
    2712:	c3                   	retq   
    2713:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    271a:	3a 20 43 
    271d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2724:	20 75 6e 
    2727:	49 89 04 24          	mov    %rax,(%r12)
    272b:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2730:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2737:	74 6f 20 
    273a:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2741:	65 20 73 
    2744:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2749:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    274e:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    2755:	6b 65 
    2757:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    275e:	00 
    275f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2764:	eb 90                	jmp    26f6 <init_driver+0xea>
    2766:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    276d:	3a 20 44 
    2770:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2777:	20 75 6e 
    277a:	49 89 04 24          	mov    %rax,(%r12)
    277e:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2783:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    278a:	74 6f 20 
    278d:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2794:	76 65 20 
    2797:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    279c:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    27a1:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    27a8:	72 20 61 
    27ab:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    27b0:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    27b7:	72 65 
    27b9:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    27c0:	73 
    27c1:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    27c7:	89 df                	mov    %ebx,%edi
    27c9:	e8 82 e7 ff ff       	callq  f50 <close@plt>
    27ce:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    27d3:	e9 1e ff ff ff       	jmpq   26f6 <init_driver+0xea>
    27d8:	4c 8d 05 1f 07 00 00 	lea    0x71f(%rip),%r8        # 2efe <array.3591+0x3fe>
    27df:	48 8d 0d d2 06 00 00 	lea    0x6d2(%rip),%rcx        # 2eb8 <array.3591+0x3b8>
    27e6:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    27ed:	be 01 00 00 00       	mov    $0x1,%esi
    27f2:	4c 89 e7             	mov    %r12,%rdi
    27f5:	b8 00 00 00 00       	mov    $0x0,%eax
    27fa:	e8 61 e8 ff ff       	callq  1060 <__sprintf_chk@plt>
    27ff:	89 df                	mov    %ebx,%edi
    2801:	e8 4a e7 ff ff       	callq  f50 <close@plt>
    2806:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    280b:	e9 e6 fe ff ff       	jmpq   26f6 <init_driver+0xea>
    2810:	e8 1b e7 ff ff       	callq  f30 <__stack_chk_fail@plt>

0000000000002815 <driver_post>:
    2815:	53                   	push   %rbx
    2816:	4c 89 c3             	mov    %r8,%rbx
    2819:	85 c9                	test   %ecx,%ecx
    281b:	75 17                	jne    2834 <driver_post+0x1f>
    281d:	48 85 ff             	test   %rdi,%rdi
    2820:	74 05                	je     2827 <driver_post+0x12>
    2822:	80 3f 00             	cmpb   $0x0,(%rdi)
    2825:	75 33                	jne    285a <driver_post+0x45>
    2827:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    282c:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2830:	89 c8                	mov    %ecx,%eax
    2832:	5b                   	pop    %rbx
    2833:	c3                   	retq   
    2834:	48 8d 35 d6 06 00 00 	lea    0x6d6(%rip),%rsi        # 2f11 <array.3591+0x411>
    283b:	bf 01 00 00 00       	mov    $0x1,%edi
    2840:	b8 00 00 00 00       	mov    $0x0,%eax
    2845:	e8 96 e7 ff ff       	callq  fe0 <__printf_chk@plt>
    284a:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    284f:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2853:	b8 00 00 00 00       	mov    $0x0,%eax
    2858:	eb d8                	jmp    2832 <driver_post+0x1d>
    285a:	41 50                	push   %r8
    285c:	52                   	push   %rdx
    285d:	4c 8d 0d c4 06 00 00 	lea    0x6c4(%rip),%r9        # 2f28 <array.3591+0x428>
    2864:	49 89 f0             	mov    %rsi,%r8
    2867:	48 89 f9             	mov    %rdi,%rcx
    286a:	48 8d 15 bc 06 00 00 	lea    0x6bc(%rip),%rdx        # 2f2d <array.3591+0x42d>
    2871:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    2876:	48 8d 3d 81 06 00 00 	lea    0x681(%rip),%rdi        # 2efe <array.3591+0x3fe>
    287d:	e8 29 f5 ff ff       	callq  1dab <submitr>
    2882:	48 83 c4 10          	add    $0x10,%rsp
    2886:	eb aa                	jmp    2832 <driver_post+0x1d>
    2888:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    288f:	00 

0000000000002890 <__libc_csu_init>:
    2890:	41 57                	push   %r15
    2892:	41 56                	push   %r14
    2894:	49 89 d7             	mov    %rdx,%r15
    2897:	41 55                	push   %r13
    2899:	41 54                	push   %r12
    289b:	4c 8d 25 46 14 20 00 	lea    0x201446(%rip),%r12        # 203ce8 <__frame_dummy_init_array_entry>
    28a2:	55                   	push   %rbp
    28a3:	48 8d 2d 46 14 20 00 	lea    0x201446(%rip),%rbp        # 203cf0 <__init_array_end>
    28aa:	53                   	push   %rbx
    28ab:	41 89 fd             	mov    %edi,%r13d
    28ae:	49 89 f6             	mov    %rsi,%r14
    28b1:	4c 29 e5             	sub    %r12,%rbp
    28b4:	48 83 ec 08          	sub    $0x8,%rsp
    28b8:	48 c1 fd 03          	sar    $0x3,%rbp
    28bc:	e8 e7 e5 ff ff       	callq  ea8 <_init>
    28c1:	48 85 ed             	test   %rbp,%rbp
    28c4:	74 20                	je     28e6 <__libc_csu_init+0x56>
    28c6:	31 db                	xor    %ebx,%ebx
    28c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    28cf:	00 
    28d0:	4c 89 fa             	mov    %r15,%rdx
    28d3:	4c 89 f6             	mov    %r14,%rsi
    28d6:	44 89 ef             	mov    %r13d,%edi
    28d9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    28dd:	48 83 c3 01          	add    $0x1,%rbx
    28e1:	48 39 dd             	cmp    %rbx,%rbp
    28e4:	75 ea                	jne    28d0 <__libc_csu_init+0x40>
    28e6:	48 83 c4 08          	add    $0x8,%rsp
    28ea:	5b                   	pop    %rbx
    28eb:	5d                   	pop    %rbp
    28ec:	41 5c                	pop    %r12
    28ee:	41 5d                	pop    %r13
    28f0:	41 5e                	pop    %r14
    28f2:	41 5f                	pop    %r15
    28f4:	c3                   	retq   
    28f5:	90                   	nop
    28f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    28fd:	00 00 00 

0000000000002900 <__libc_csu_fini>:
    2900:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000002904 <_fini>:
    2904:	48 83 ec 08          	sub    $0x8,%rsp
    2908:	48 83 c4 08          	add    $0x8,%rsp
    290c:	c3                   	retq   
