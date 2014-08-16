hbin
====

管理自己编写的一些linux可执行文件或者脚本工具应用

修改hmake等编译命令，定义数组来替换uImage menuconfig等命令

使hmake与hbuild_irtk支持命令补全功能，方法：在/home/gxnuhuang/.bashrc中加入
complete -W 'distclean mrproper clean am335x_evm_defconfig menuconfig uImage modules' hmake hbuild_irtk 

hmake与hbuild_irtk支持是否在out目录编译
