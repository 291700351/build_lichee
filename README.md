# 荔枝派Nano编译u-boot启动引导、Linux内核、buildroot文件系统

- ## 编译u-boot启动引导

1. ### 获取u-boot源码

```
git clone https://github.com/Lichee-Pi/u-boot.git -b nano-v2018.1
```

2. ### 编译并配置参数

```
# 此处告知make采用arm-linux-gnueabi下的所有交叉编译工具，目标架构为Arm，设定各项默认配置为 nano 的spiflash支持版
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- licheepi_nano_defconfig

# 若不带spi-flash的板子，请换成 licheepi_nano_defconfig

# 进行可视化配置
make ARCH=arm menuconfig
```

3. ### 设置显示器

```
若要在套餐中附带的LCD上输出显示，请通过配置 ARM architecture ‣ Enable graphical uboot console on HDMI, LCD or VGA 为 Y

接着配置同级的 LCD panel timing details 为：

x:800,y:480,depth:18,pclk_khz:33000,le:87,ri:40,up:31,lo:13,hs:1,vs:1,sync:3,vmode:0

注：此块屏为为 800*480 规格，如为 480*272 请尝试如下配置 x:480,y:272,depth:18,pclk_khz:10000,le:42,ri:8,up:11,lo:4,hs:1,vs:1,sync:3,vmode:0

并将 LCD panel backlight pwm pin 设为：PE6 （查自 Nano 原理图）
```

4. ### 开始编译

```
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -j8
```

---
