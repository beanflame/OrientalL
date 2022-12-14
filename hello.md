

## [洛书小站](http://neuq-losu.gitee.io)<br>

![输入图片说明](Demo/%E6%B4%9B%E4%B9%A6%E6%9E%B6%E6%9E%84%E5%9B%BE.jpg)
### 洛书编程语言
![输入图片说明](Demo/QQ%E5%9B%BE%E7%89%8720221111101349.jpg)
![输入图片说明](Demo/readme.gif)

#### 简介
洛书·Losu(Language Of Systemed Units)，单位系统化编程语言，是一款开源，轻量，跨平台，易拓展的中文编程语言。

针对现阶段国人编程需求与编程门槛的矛盾，致力于提供一种人人参与，快速构建的编程方式。

洛书(LOSU)，是一款自研的中文代码编程语言，拥有近似自然中文的编程体验，开源、轻量、跨平台，可以在多种平台上正常运行。具有与C/C++等编程语言的良好的交互能力



```
//LOSU1.4版本代码
//方法声明
#类 系统
    #方法 复制(源,目标)
//方法调用
系统,复制("1.txt","2.txt")
系统,复制'文件'("1.txt")'为'("2.txt")
系统,'将文件'("1.txt")复制'为'("2.txt")
//以上三者都是调用方法 系统,复制
//洛书"中文"编程,拥有近似自然中文的编程能力,代码风格与散文类似
//编程时仅需记住关键词，然后可以填写个性化的连接词来完善可读性
//不同的人可以写出不同的代码，有效平衡编程效率、记忆难度、灵活度与程序可读性。
```


得益于完全由C++11编写的核心代码，洛书可以在多种平台上直接运行，且可以方便的移植到众多的支持POSIX/GNU标准的平台上，覆盖了从开发板到卡片机到个人计算机等多种设备，具有极大的应用弹性。

洛书支持的 [ **CPU** ](https://gitee.com/chen-chaochen/lpk/blob/doc/platform/CPU_support.md) [ **OS** ](https://gitee.com/chen-chaochen/lpk/blob/doc/platform/OS_support.md) [ **开发板** ](https://gitee.com/chen-chaochen/lpk/blob/doc/platform/board_support.md) 概览
#### 联系我们
+ 最新发行版链接  OSC链接 [仓库链接](https://gitee.com/chen-chaochen/lpk/releases/tag/1.4.4)

+ 洛书开发  **QQ交流群 805995065**  讨论，咨询，技术分享欢迎加群<br>
+ 抖音 demo 分享帐号  **洛书编程小哥** <br>
+ Demo源码下载见expand分支<br>
+ 设计文档见wiki<br>
+ 滚动技术文档见doc分支[[链接]](https://gitee.com/chen-chaochen/lpk/tree/doc/)<br>



#### 特点
+ 开源开放
    - C++实现，源码，架构及工作原理完全开放。
    - 编译生成可阅读的输出文件，自由查看
+ 简单高效    
    + 语法简捷，中文代码，简单易上手，让编程走进千家万户。
    + "胶水语言"，支持调用C/C++/Python等语言编写的支持库,可与现有编程语言进行交互。
+ 跨平台，多用途
    + 从桌面系统到嵌入式设备，物联网控制平台，洛书都可以实现运行并发作用。
    + 洛书支持的 [ **CPU** ](https://gitee.com/chen-chaochen/lpk/blob/doc/platform/CPU_support.md) [ **OS** ](https://gitee.com/chen-chaochen/lpk/blob/doc/platform/OS_support.md) [ **开发板** ](https://gitee.com/chen-chaochen/lpk/blob/doc/platform/board_support.md) 概览
+ 语法糖架构    
    + 所有的编译器与前端都是在 洛书指令语言 基础上进行加糖
    + 通过加糖，可以构建不同语法的洛书语言，必要时还可构建图形化编程界面

#### 常见质疑
如果您直接将中文编程视作笑话，那就没必要向下看了
阅读此文档以反馈常见质疑 [[链接]](https://gitee.com/chen-chaochen/lpk/blob/doc/%E6%B4%9B%E4%B9%A6%201.0%20LTS%20%E6%8A%80%E6%9C%AF%E6%96%87%E6%A1%A3/%E7%AE%80%E4%BB%8B%E6%96%87%E6%A1%A3/%E6%B4%9B%E4%B9%A6%E7%9A%84%E8%AE%BE%E8%AE%A1%E6%83%B3%E6%B3%95.md)
1. 洛书是套壳吗？
+ 不是，至于有人质疑洛书套壳C++，洛书和python一样，是通过调用C/C++库来拓展功能的。胶水语言与套壳语言是不一样的
2. 洛书代码很丑吗？
- 最新版的洛书代码

```
#方法 控制红绿灯
    红绿灯,红灯接在("1")号引脚,黄灯接在("2")号引脚,绿灯接在("3")号引脚
    #循环("10")次
        //"次"可以省略
        红绿灯,红灯亮起("60")秒
        红绿灯,绿灯亮起("60")秒
        红绿灯,黄灯以("500")毫秒间隔闪烁("5")次

```




### 安装&更新
洛书采用类似镜像源的安装方式，通过一行命令，即从源码开始生成最新的版本

在一个空的文件夹内打开终端，复制以下命令(安装有wget与g++编译器)，静待安装结束就OK了
+ windows

以管理员身份运行

```
wget  --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/update/install.bat&install.bat
```
+ linux
```
sudo wget  --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/update/install.sh&&sudo bash ./install.sh&&sudo rm ./install.sh

```
master分支下的源码仅作预览用途，各发行版源码见release分支<br>
如果自动化安装出现问题，可以参考 [ **此文档** ](https://gitee.com/chen-chaochen/lpk/blob/doc/%E5%AE%89%E8%A3%85%E6%97%B6%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98.md) 或在讨论群咨询 以尝试解决。
### 加入洛书
#### 第三方贡献
+ fork本仓库，通过PR提交贡献
+ 加入讨论Q群 
> 洛书开发交流群 805995065
#### 加入组织
[NEUQ LOSU](https://gitee.com/neuq-losu)

### Demo(单击标题前往链接)
#### [海龟库](https://gitee.com/chen-chaochen/lpk/blob/expand/%E6%B5%B7%E9%BE%9F%E5%BA%93/readme.md)
![输入图片说明](Demo/5.png)


```
#加载 开始
#导入 海龟
#海龟 海龟
#方法 开始()
    海龟.初始化("600","600")
    步幅 = "2"
    #循环("70")
        海龟.画笔.颜色("红")
        海龟.前进(步幅)
        海龟.右转("85")
        步幅 = 步幅 + "2"
        海龟.画笔.颜色("蓝")
        海龟.前进(步幅)
        海龟.右转("85")
        步幅 = 步幅 + "2"
    海龟.停止()    
```


#### [物联网/嵌入式](https://gitee.com/chen-chaochen/lpk/tree/doc/%E5%B5%8C%E5%85%A5%E5%BC%8F)

![输入图片说明](Demo/c675d210d00db442f2de410e5a3e37643b501bca.gif)

[[洛书物联网架构]](https://gitee.com/chen-chaochen/lpk/blob/expand/%E7%89%A9%E8%81%94%E7%BD%91/readme.md)

[[联网报警器]](https://www.douyin.com/user/MS4wLjABAAAAbwjbvNpvRPNnlWf2iHkGvg_dqhVuMdLz4-csIo8ubS0?modal_id=7133415852505976095)<br>
[[网控小灯]](https://v.douyin.com/jNdYkcY)<br>
[[交通灯]](https://v.douyin.com//jyxDJPy)

```
#加载 开始
#导入 洛书/标准流
#引用 交通灯
/*
    一个自动的交通灯控制程序
    红灯 2s
    绿灯 2s
    黄灯 1s 闪烁5次
#标准流 程序
#交通灯 交通灯
#方法 开始()
    交通灯.配置("16","20","21")
    #循环("5")
        交通灯.红灯.点亮()
        程序.等待("2000")
        交通灯.红灯.熄灭()
        交通灯.黄灯.闪烁()
        交通灯.绿灯.点亮()
        程序.等待("2000")
        交通灯.绿灯.熄灭()

    
```


#### [宇宙文明模拟器](https://gitee.com/chen-chaochen/lpk/tree/expand/Demo/%E5%AE%87%E5%AE%99%E6%96%87%E6%98%8E%E6%A8%A1%E6%8B%9F%E5%99%A8)
![模拟器](https://gitee.com/chen-chaochen/lpk/raw/expand/Demo/%E5%AE%87%E5%AE%99%E6%96%87%E6%98%8E%E6%A8%A1%E6%8B%9F%E5%99%A8/运行截图.png)
![终端](https://gitee.com/chen-chaochen/lpk/raw/expand/Demo/%E5%AE%87%E5%AE%99%E6%96%87%E6%98%8E%E6%A8%A1%E6%8B%9F%E5%99%A8/运行截图2.png)

#### [宇宙文明模拟器服务器版本](https://gitee.com/chen-chaochen/lpk/tree/expand/Demo/宇宙文明模拟器服务器版)
![输入图片说明](Demo/%E9%BB%91%E6%9A%97%E6%A3%AE%E6%9E%97%E6%88%AA%E5%9B%BE.png)
![输入图片说明](%E9%BB%91%E6%9A%97%E6%A3%AE%E6%9E%97%E6%88%AA%E5%9B%BE2.png)
![输入图片说明](Demo/%E9%BB%91%E6%9A%97%E6%A3%AE%E6%9E%97%E6%9C%8D%E5%8A%A1%E5%99%A8.png)

#### [洛书CGI编程](https://gitee.com/chen-chaochen/lpk/blob/master/%E6%B4%9B%E4%B9%A6CGI%E7%BC%96%E7%A8%8B.md)
![输入图片说明](Demo/CGI.png)

#### [洛书服务器](https://gitee.com/chen-chaochen/lpk/tree/expand/%E6%B4%9B%E4%B9%A6%E6%9C%8D%E5%8A%A1%E5%99%A8)
![服务器服务端](Demo/%E6%9C%8D%E5%8A%A1%E5%99%A8.png)
![服务器客户端](Demo/%E6%9C%8D%E5%8A%A1%E5%99%A82.png)

### 示例代码
demo 请见 [[链接]](https://gitee.com/chen-chaochen/lpk/tree/expand/Demo)

入门示例请见 [[链接]](https://gitee.com/chen-chaochen/lpk/tree/master/%E6%B4%9B%E4%B9%A6%E7%A4%BA%E4%BE%8B%E4%BB%A3%E7%A0%81)
![输入图片说明](Demo/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-09-10%20125707.jpg)


