hbin
====

管理自己编写的一些linux可执行文件或者脚本工具应用

修改hmake等编译命令，定义数组来替换uImage menuconfig等命令

使hmake与hbuild_irtk支持命令补全功能，方法：在/home/gxnuhuang/.bashrc中加入
complete -W 'distclean mrproper clean am335x_evm_defconfig menuconfig uImage modules' hmake hbuild_irtk 

hmake与hbuild_irtk支持是否在out目录编译

添加hchange改变档案的拥有者与群组属性命令。complete -W 'gxnuhuang root ' hchange加入到/home/gxnuhuang/.bashrc中
修改hback.sh备份系统的脚本，第一次备份的时间是'2014-06-29'，这次修改添加对比-N '2014-06-29'时间，只备份比-N '2014-06-29'时间更新的文件。（插入移动硬盘，直接运行）。此次备份时间2014-08-23.
