FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

LINUX_VERSION ?= "4.12.14"

SRCREV = "6fe4193dd99f1e299e56c9fa6ba43681398cc041"
#SRC_URI = "git://github.com/raspberrypi/linux.git;branch=rpi-4.9.y"
SRC_URI = "git://github.com/raspberrypi/linux.git;branch=rpi-4.12.y"
require linux-raspberrypi.inc
