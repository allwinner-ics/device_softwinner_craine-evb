# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

include device/softwinner/crane-common/BoardConfigCommon.mk


# image related
TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := false
TARGET_NO_KERNEL := false

INSTALLED_KERNEL_TARGET := kernel
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_CMDLINE := console=ttyS0,115200 rw init=/init loglevel=8
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 268435456
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824

# recovery stuff
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_UI_LIB := librecovery_ui_crane_evb
#TARGET_RECOVERY_UPDATER_LIBS :=

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_8_X

# Wifi chipset select
# usb wifi "rtl8192cu"; sdio wifi "nanowifi"/"ar6302"/"usibcm4329"
SW_BOARD_USR_WIFI := nanowifi
#SW_BOARD_USR_WIFI := usibcm4329
#SW_BOARD_USR_WIFI := hwmw269v2
#SW_BOARD_USR_WIFI := hwmw269v3
#SW_BOARD_USR_WIFI := bcm40181
#SW_BOARD_USR_WIFI := ar6003
#SW_BOARD_USR_WIFI := ar6302

#BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_BCM := true
#BOARD_HAVE_BLUETOOTH_CSR:= true
#SW_BOARD_HAVE_BLUETOOTH_NAME := hwmw269v2
