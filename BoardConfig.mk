# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

include device/softwinner/crane-common/BoardConfigCommon.mk

SW_TARGET_NO_TSCalibration := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_8_X

# Wifi chipset select
# usb wifi "rtl8192cu"; sdio wifi "nanowifi"/"ar6302"/"usibcm4329"
SW_BOARD_USR_WIFI := nanowifi
