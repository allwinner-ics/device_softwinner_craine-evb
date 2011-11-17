# crane aino product config

$(call inherit-product, device/softwinner/crane-common/ProductCommon.mk)

PRODUCT_COPY_FILES += \
	device/softwinner/crane-evb/ueventd.sun4i.rc:root/ueventd.sun4i.rc \
	device/softwinner/crane-evb/init.sun4i.rc:root/init.sun4i.rc \
	device/softwinner/crane-evb/sun4i-keyboard.kl:system/usr/keylayout/sun4i-keyboard.kl \
	device/softwinner/crane-evb/sun4i-ts.idc:system/usr/idc/sun4i-ts.idc
	
PRODUCT_COPY_FILES += \
	device/softwinner/crane-aino/initlogo.rle:root/initlogo.rle

# Overrides
PRODUCT_BRAND  := softwinners
PRODUCT_NAME   := crane_evb
PRODUCT_DEVICE := crane-evb
PRODUCT_MODEL  := SoftwinerEvb

