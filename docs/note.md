

##CMakeCache


##编译选项
在cmake脚本中，设置编译选项可以通过add_compile_options命令，也可以通过set命令修改CMAKE_CXX_FLAGS或CMAKE_C_FLAGS。
使用这两种方式在有的情况下效果是一样的，但请注意它们还是有区别的：
add_compile_options命令添加的编译选项是针对所有编译器的(包括c和c++编译器)，而set命令设置CMAKE_C_FLAGS或CMAKE_CXX_FLAGS变量则是分别只针对c和c++编译器的。

## 动态库与静态库

### 名词
- 动态库与共享库是一回事么？
- 静态库
　　也被称为归档文件，可以看作是多个未定位目标文件的集合。

### 遗留问题
1. 为什么是否加-g，编译出来的动态库大小都相同？
1. 使用以下方式，cmake会直接链接库文件，而不需要配置路径？
	```
	set(LIBRARIES mod_lib)
	```

### 动态库的编译
	```
	gcc -g -c -fPIC -Wall mod1.c mod2.c mod3.c
	gcc -g -shared -o libfoo.so mod1.o mod2.o mod3.o
	```
其中，编译选项`-fPIC`用于指定编译器生成位置无关的代码，这会影响编译器生成执行　全局、静态、外部变量，访问字符传串常量及函数地址，这些变更使得代码可以在运行时被放置在任意一个虚拟地址处。

怎样确认函数库和重定位目标文件是否为位置独立代码：

` nm mod1.o | grep _GLOBAL_OFFSET_TABLE_ `


所有二进制工具都脱胎于objdump.


在退出main函数前，加入`while(1);`，使可执行程序永远不会退出。通过`cat /proc/PID/maps`来查看进程的内存分布。

```
00400000-00404000 r-xp 00000000 08:01 3556998                            /home/cloud/Mycode/EffectiveCpp/build/effective_sample
00603000-00604000 r--p 00003000 08:01 3556998                            /home/cloud/Mycode/EffectiveCpp/build/effective_sample
00604000-00605000 rw-p 00004000 08:01 3556998                            /home/cloud/Mycode/EffectiveCpp/build/effective_sample
00690000-006c2000 rw-p 00000000 00:00 0                                  [heap]
7fca93682000-7fca9378a000 r-xp 00000000 08:01 19141167                   /lib/x86_64-linux-gnu/libm-2.23.so
7fca9378a000-7fca93989000 ---p 00108000 08:01 19141167                   /lib/x86_64-linux-gnu/libm-2.23.so
7fca93989000-7fca9398a000 r--p 00107000 08:01 19141167                   /lib/x86_64-linux-gnu/libm-2.23.so
7fca9398a000-7fca9398b000 rw-p 00108000 08:01 19141167                   /lib/x86_64-linux-gnu/libm-2.23.so
7fca9398b000-7fca93b4b000 r-xp 00000000 08:01 19141160                   /lib/x86_64-linux-gnu/libc-2.23.so
7fca93b4b000-7fca93d4b000 ---p 001c0000 08:01 19141160                   /lib/x86_64-linux-gnu/libc-2.23.so
7fca93d4b000-7fca93d4f000 r--p 001c0000 08:01 19141160                   /lib/x86_64-linux-gnu/libc-2.23.so
7fca93d4f000-7fca93d51000 rw-p 001c4000 08:01 19141160                   /lib/x86_64-linux-gnu/libc-2.23.so
7fca93d51000-7fca93d55000 rw-p 00000000 00:00 0 
7fca93d55000-7fca93d6b000 r-xp 00000000 08:01 19141080                   /lib/x86_64-linux-gnu/libgcc_s.so.1
7fca93d6b000-7fca93f6a000 ---p 00016000 08:01 19141080                   /lib/x86_64-linux-gnu/libgcc_s.so.1
7fca93f6a000-7fca93f6b000 rw-p 00015000 08:01 19141080                   /lib/x86_64-linux-gnu/libgcc_s.so.1
7fca93f6b000-7fca940dd000 r-xp 00000000 08:01 33424866                   /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.21
7fca940dd000-7fca942dd000 ---p 00172000 08:01 33424866                   /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.21
7fca942dd000-7fca942e7000 r--p 00172000 08:01 33424866                   /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.21
7fca942e7000-7fca942e9000 rw-p 0017c000 08:01 33424866                   /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.21
7fca942e9000-7fca942ed000 rw-p 00000000 00:00 0 
7fca942ed000-7fca942ee000 r-xp 00000000 08:01 3557005                    /home/cloud/Mycode/EffectiveCpp/lib/libmod_lib.so
7fca942ee000-7fca944ed000 ---p 00001000 08:01 3557005                    /home/cloud/Mycode/EffectiveCpp/lib/libmod_lib.so
7fca944ed000-7fca944ee000 r--p 00000000 08:01 3557005                    /home/cloud/Mycode/EffectiveCpp/lib/libmod_lib.so
7fca944ee000-7fca9464e000 rw-p 00001000 08:01 3557005                    /home/cloud/Mycode/EffectiveCpp/lib/libmod_lib.so
7fca9464e000-7fca94674000 r-xp 00000000 08:01 19141055                   /lib/x86_64-linux-gnu/ld-2.23.so
7fca94846000-7fca9484b000 rw-p 00000000 00:00 0 
7fca94872000-7fca94873000 rw-p 00000000 00:00 0 
7fca94873000-7fca94874000 r--p 00025000 08:01 19141055                   /lib/x86_64-linux-gnu/ld-2.23.so
7fca94874000-7fca94875000 rw-p 00026000 08:01 19141055                   /lib/x86_64-linux-gnu/ld-2.23.so
7fca94875000-7fca94876000 rw-p 00000000 00:00 0 
7fffa0cfc000-7fffa0d1d000 rw-p 00000000 00:00 0                          [stack]
7fffa0d63000-7fffa0d66000 r--p 00000000 00:00 0                          [vvar]
7fffa0d66000-7fffa0d68000 r-xp 00000000 00:00 0                          [vdso]
ffffffffff600000-ffffffffff601000 r-xp 00000000 00:00 0                  [vsyscall]
```

可以看出stack地址比动态链接库高，

- 什么是vdso?

The vsyscall and vDSO segments are two mechanisms used to accelerate certain system calls in Linux. For instance, gettimeofday is usually invoked through this mechanism. The first mechanism introduced was vsyscall, which was added as a way to execute specific system calls which do not need any real level of privilege to run in order to reduce the system call overhead. Following the previous example, all gettimeofday needs to do is to read the kernel's the current time. There are applications that call gettimeofday frequently (e.g to generate timestamps), to the point that they care about even a little bit of overhead. To address this concern, the kernel maps into user space a page containing the current time and a fast gettimeofday implementation (i.e. just a function which reads the time saved into vsyscall). Using this virtual system call, the C library can provide a fast gettimeofday which does not have the overhead introduced by the context switch between kernel space and user space usually introduced by the classic system call model INT 0x80 or SYSCALL.

However, this vsyscall mechanism has some limitations: the memory allocated is small and allows only 4 system calls, and, more important and serious, the vsyscall page is statically allocated to the same address in each process, since the location of the vsyscall page is nailed down in the kernel ABI. This static allocation of the vsyscall compromises the benefit introduced by the memory space randomisation commonly used by Linux. An attacker, after compromising an application by exploiting a stack-overflow, can invoke a system call from the vsyscall page with arbitrary parameters. All he needs is the address of the system call, which is easily predicable as it is statically allocated (if you try to run again your command even with different applications, you'll notice that the address of the vsyscall does not change). It would be nice to remove or at least randomize the location of the vsyscall page to thwart this type of attack. Unfortunately, applications depend on the existence and exact address of that page, so nothing can be done.

This security issue has been addressed by replacing all system call instructions at fixed addresses by a special trap instruction. An application trying to call into the vsyscall page will trap into the kernel, which will then emulate the desired virtual system call in kernel space. The result is a kernel system call emulating a virtual system call which was put there to avoid the kernel system call in the first place. The result is a vsyscall which takes longer to execute but, crucially, does not break the existing ABI. In any case, the slowdown will only be seen if the application is trying to use the vsyscall page instead of the vDSO.

The vDSO offers the same functionality as the vsyscall, while overcoming its limitations. The vDSO (Virtual Dynamically linked Shared Objects) is a memory area allocated in user space which exposes some kernel functionalities at user space in a safe manner. This has been introduced to solve the security threats caused by the vsyscall. The vDSO is dynamically allocated which solves security concerns and can have more than 4 system calls. The vDSO links are provided via the glibc library. The linker will link in the glibc vDSO functionality, provided that such a routine has an accompanying vDSO version, such as gettimeofday. When your program executes, if your kernel does not have vDSO support, a traditional syscall will be made.

https://lwn.net/Articles/615809/


### 常用命令
- ldd  
`ldd prog`

```
	linux-vdso.so.1 =>  (0x00007ffc25d01000)
	libmod_lib.so => /home/cloud/Mycode/EffectiveCpp/lib/libmod_lib.so (0x00007fb140228000)
	libstdc++.so.6 => /usr/lib/x86_64-linux-gnu/libstdc++.so.6 (0x00007fb13fea6000)
	libgcc_s.so.1 => /lib/x86_64-linux-gnu/libgcc_s.so.1 (0x00007fb13fc90000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007fb13f8c6000)
	libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007fb13f5bd000)
	/lib64/ld-linux-x86-64.so.2 (0x00007fb140589000)
```
如果存在无法解析的库路径，那么程序运行过程中可能会报错。

- ldconfig


If an executable foo links to the shared library bar, the library bar has to be found and loaded when the executable foo is executed. This is the job of the linker, under Linux this is usually ld.so. The linker searches a set of directories for the library bar, which will under most UNIXes have the name "libbar.so". The linker will search the libraries in the following directories in the given order:

RPATH - a list of directories which is linked into the executable, supported on most UNIX systems. It is ignored if RUNPATH is present.
LD_LIBRARY_PATH - an environment variable which holds a list of directories
RUNPATH - same as RPATH, but searched after LD_LIBRARY_PATH, supported only on most recent UNIX systems, e.g. on most current Linux systems
/etc/ld.so.conf - configuration file for ld.so which lists additional library directories
builtin directories - basically /lib and /usr/lib
There are different reasons why search directories additonal to the builtin ones can be needed - a user may install a library privately into his home directory, e.g. ~/lib/, or there may be two or more versions of the same library installed, e.g. /opt/kde3/lib/libkdecore.so and /opt/kde4/lib/libkdecore.so.

For the first case it would work if the user would set LD_LIBRARY_PATH accordingly:

export LD_LIBRARY_PATH=$HOME/lib:$LD_LIBRARY_PATH
This will break for the second case, where for some programs /opt/kde3/lib has to be searched and for other applications /opt/kde4/lib has to be searched, but in no case both. The only way to have an executable-dependent library search path is by using RPATH (or RUNPATH, but this isn't supported everywhere).


标准库目录包括：



```
/usr/lib #　大多数标准库安装目录
/lib     #  系统启动时用到的库安装到这个目录中（因为系统启动时可能还没有挂载/usr/lib）
/usr/local/lib   #  
其中一个在/etc/ld.so.conf中列出的目录
```
也就是说库的安装就是通过超级用户权限将库文件拷贝到/usr/lib下，并创建符号链接。


应用程序链接共享库时，库路径的搜索顺序：


动态库与静态库都可以被链接时，默认情况下优先链接动态库。

### 参考资料
- 《Linux/Unix系统编程手册》Chapter 41~42
