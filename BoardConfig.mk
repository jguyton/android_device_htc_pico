USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/htc/pico/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Info abt chipset(msm7x27a)
TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := pico
TARGET_OTA_ASSERT_DEVICE := pico
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_HAVE_BLUETOOTH := true
BOARD_USE_NEW_LIBRIL_HTC := true
TARGET_USES_NEW_LIBSENSORS_HAL:=true

BOARD_USES_GENERIC_AUDIO := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true

BOARD_GPS_LIBRARIES := libgps librpc
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 6225
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := pico
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

BOARD_USE_USB_MASS_STORAGE_SWITCH := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4330
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4330.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/firmware/fw_bcm4330b2.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/firmware/fw_bcm4330b2_a1psta.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/firmware/fw_bcm4330b2.bin nvram_path=/proc/calibration"
WIFI_DRIVER_MODULE_NAME     := "bcm4330"
WIFI_DRIVER_HAS_HTC_SOFTAP  := true

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x12c00000
BOARD_PAGE_SIZE := 0x00000800
BOARD_KERNEL_NEW_PPPOX := true

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0eb40000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x09600000
BOARD_FLASH_BLOCK_SIZE := 262144

# Audio & Bluetooth
BOARD_COMBO_DEVICE_SUPPORTED := true
BOARD_USES_AUDIO_LEGACY := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Enable OpenGL Hardware Acceleration
USE_OPENGL_RENDERER := true

# QCOM
#BOARD_USES_QCOM_HARDWARE := true
#BOARD_USES_QCOM_LIBS := true
#BOARD_USES_QCOM_LIBRPC := true
BOARD_USE_ADRENO_200_GPU := true

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/pico/releasetools
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_PREBUILT_KERNEL := device/htc/pico/prebuilt/kernel

# BOARD_HAVE_FM_RADIO := true
# BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
