
#!/bin/bash
# AutoBuild Module by Hyy2001 <https://github.com/Hyy2001X/AutoBuild-Actions-BETA>
# AutoBuild DiyScript

Firmware_Diy_Core() {

	Author=AUTO
	# 作者名称, AUTO: [自动识别]
	Author_URL=AUTO
	# 自定义作者网站或域名, AUTO: [自动识别]
	Default_Flag=AUTO
	# 固件标签 (名称后缀), 适用不同配置文件, AUTO: [自动识别]
	Default_IP="192.168.123.1"
	# 固件 IP 地址
	Default_Title="Powered by AutoBuild-Actions"
	# 固件终端首页显示的额外信息
	
	Short_Fw_Date=true
	# 简短的固件日期, true: [20210601]; false: [202106012359]
	x86_Full_Images=true
	# 额外上传已检测到的 x86 虚拟磁盘镜像, true: [上传]; false: [不上传]
	Fw_MFormat=AUTO
	# 自定义固件格式, AUTO: [自动识别]
	Regex_Skip="packages|buildinfo|sha256sums|manifest|kernel|rootfs|factory|itb|profile|ext4|json"
	# 输出固件时丢弃包含该内容的固件/文件
	AutoBuild_Features=true
	# 添加 AutoBuild 固件特性, true: [开启]; false: [关闭]
	
	AutoBuild_Features_Patch=false
	AutoBuild_Features_Kconfig=false
}

Firmware_Diy() {

	# 请在该函数内定制固件

	# 可用预设变量, 其他可用变量请参考运行日志
	# ${OP_AUTHOR}			OpenWrt 源码作者
	# ${OP_REPO}				OpenWrt 仓库名称
	# ${OP_BRANCH}			OpenWrt 源码分支
	# ${TARGET_PROFILE}		设备名称
	# ${TARGET_BOARD}			设备架构
	# ${TARGET_FLAG}			固件名称后缀

	# ${WORK}				OpenWrt 源码位置
	# ${CONFIG_FILE}			使用的配置文件名称
      
	# ${FEEDS_CONF}			OpenWrt 源码目录下的 feeds.conf.default 文件
          # git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter
          # git clone https://github.com/sirpdboy/luci-app-poweroffdevice package/luci-app-poweroffdevice
	  # git clone https://github.com/nobodyman-star/luci-app-control-weburl package/luci-app-control-weburl
           git clone https://github.com/nobodyman-star/rely-app package/rely-app
	   #git clone https://github.com/sirpdboy/luci-app-lucky package/luci-app-lucky
           git clone https://github.com/nobodyman-star/luci-app package/luci-app
           #git clone https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall
	   git clone https://github.com/sirpdboy/luci-app-eqosplus package/luci-app-eqosplus
           git clone https://github.com/sirpdboy/luci-app-parentcontrol package/luci-app-parentcontrol
	   #git clone https://github.com/sirpdboy/netspeedtest package/netspeedtest
           echo "src-git packages https://github.com/coolsnowwolf/packages" > feeds.conf.default
           echo "src-git luci https://github.com/coolsnowwolf/luci" >> feeds.conf.default
           echo "#src-git luci https://github.com/coolsnowwolf/luci.git;openwrt-23.05" >> feeds.conf.default
           echo "src-git routing https://github.com/coolsnowwolf/routing" >> feeds.conf.default
           echo "src-git telephony https://github.com/coolsnowwolf/telephony.git" >> feeds.conf.default
	   echo "src-git helloworld https://github.com/fw876/helloworld.git" >> feeds.conf.default
	   # Uncomment a feed source
           # sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
	   # Modify default IP
           sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate
                
        
	# ${CustomFiles}			仓库中的 /CustomFiles 绝对路径
	# ${Scripts}				仓库中的 /Scripts 绝对路径
	# ${FEEDS_LUCI}			OpenWrt 源码目录下的 package/feeds/luci 目录
	# ${FEEDS_PKG}			OpenWrt 源码目录下的 package/feeds/packages 目录
	# ${BASE_FILES}			OpenWrt 源码目录下的 package/base-files/files 目录

	:
}
