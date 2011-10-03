# inherit from the common version
-include device/malata/smb-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/malata/smb_a9701/BoardConfigVendor.mk

TARGET_OTA_ASSERT_DEVICE := harmony,smb_a9701

TARGET_PREBUILT_KERNEL := device/malata/smb_a9701/kernel

# Override cyanogen squisher to customize our update zip package
TARGET_CUSTOM_RELEASETOOL := ./device/malata/smb_a9701/releasetools/squisher
TARGET_PROVIDES_INIT_RC := true
TARGET_USERIMAGES_USE_EXT2 := true
BOARD_VOLD_MAX_PARTITIONS := 8
