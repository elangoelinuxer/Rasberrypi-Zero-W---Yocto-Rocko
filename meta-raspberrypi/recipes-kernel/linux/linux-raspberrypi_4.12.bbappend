FILESEXTRAPATHS_prepend := "${THISDIR}/linux-raspberrypi:"
#FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
SRC_URI += "file://0001-Removed-bcm2708-rpi-b-plus_dtb.patch"
SRC_URI += "file://0001-OV5647-sensor-driver-enabled-and-dts-file-added.patch"
SRC_URI += "file://0001-Modified-Makefile-and-config-file-to-add-Ov5647-supp.patch"
SRC_URI += "file://0001-Ov5647-debug-messages.patch"
SRC_URI += "file://0001-Ov5647-debug.patch"
#KERNEL_DEFCONFIG += "file://defconfig"
#KERNEL_DEFCONFIG =""

#SRC_URI += "file://my_defconfig"
#KBUILD_DEFCONFIG_raspberrypi0-wifi = ""
#KBUILD_DEFCONFIG_raspberrypi0-wifi = "${WORKDIR}/my_defconfig"

SRC_URI  += "file://config_diff.cfg"


do_configure_append() {
    cat ${WORKDIR}/*.cfg >> ${B}/.config
}
