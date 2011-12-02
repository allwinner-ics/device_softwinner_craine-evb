# crane aino product config

$(call inherit-product, device/softwinner/crane-common/ProductCommon.mk)

DEVICE_PACKAGE_OVERLAYS := device/softwinner/crane-evb/overlay

PRODUCT_COPY_FILES += \
	device/softwinner/crane-evb/ueventd.sun4i.rc:root/ueventd.sun4i.rc \
	device/softwinner/crane-evb/init.sun4i.rc:root/init.sun4i.rc \
	device/softwinner/crane-evb/init.sun4i.usb.rc:root/init.sun4i.usb.rc \
	device/softwinner/crane-evb/media_profiles.xml:system/etc/media_profiles.xml \
	device/softwinner/crane-evb/camera.cfg:system/etc/camera.cfg 
	
PRODUCT_COPY_FILES += \
	device/softwinner/crane-aino/initlogo.rle:root/initlogo.rle

#input device config
PRODUCT_COPY_FILES += \
	device/softwinner/crane-evb/sun4i-keyboard.kl:system/usr/keylayout/sun4i-keyboard.kl \
	device/softwinner/crane-evb/sun4i-ts.idc:system/usr/idc/sun4i-ts.idc

PRODUCT_COPY_FILES += \
	device/softwinner/crane-aino/initlogo.rle:root/initlogo.rle

PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

PRODUCT_COPY_FILES += \
	device/softwinner/crane-evb/vold.fstab:system/etc/vold.fstab

PRODUCT_PACKAGES += \
	TSCalibration2

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mass_storage,adb \
	ro.sf.lcd_density=120

PRODUCT_CHARACTERISTICS := tablet

# Overrides
PRODUCT_BRAND  := softwinners
PRODUCT_NAME   := crane_evb
PRODUCT_DEVICE := crane-evb
PRODUCT_MODEL  := SoftwinerEvb

