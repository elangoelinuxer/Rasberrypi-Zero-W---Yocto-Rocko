# Base this image on core-image-minimal
include recipes-core/images/core-image-minimal.bb

# Include modules in rootfs
IMAGE_INSTALL += " \
	kernel-modules \
	"

CORE_IMAGE_EXTRA_INSTALL +="\
i2c-tools \
v4l-utils \
"
