<!--
 * @Date: 2019-09-04 01:41:04
 * @LastEditors: jlwang
 * @LastEditTime: 2020-06-14 00:52:01
 -->
# RunRasPi
```Seeing is believing!```

1. 搭建开发环境： 
- 使用Filezilla作为ftp客户端，便于在开发机和目标机之间传输文件；
	- 在开发机clone github上的tool工程;

1. 编译x86版本程序:
	make x86
1. 清除编译结果:
	make clean
1. 执行程序：
	cd scripts && ./run.sh


## 编译第三方库
### OpenCV
- https://mindchasers.com/dev/ubuntu-opencv

### Libevent
