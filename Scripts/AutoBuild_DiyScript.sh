#!/bin/bash
# https://github.com/Hyy2001X/AutoBuild-Actions
# AutoBuild Module by Hyy2001
# AutoBuild DiyScript

Diy_Core() {
	Author=Hyy2001
	Default_Device=

	INCLUDE_AutoUpdate=true
	INCLUDE_AutoBuild_Tools=false
	INCLUDE_DRM_I915=false
	INCLUDE_Theme_Argon=true
	INCLUDE_Obsolete_PKG_Compatible=false
}

Firmware-Diy() {
	case ${TARGET_PROFILE} in
	d-team_newifi-d2)
		Replace_File CustomFiles/Patches/102-mt7621-fix-cpu-clk-add-clkdev.patch target/linux/ramips/patches-5.4
	;;
	esac
}