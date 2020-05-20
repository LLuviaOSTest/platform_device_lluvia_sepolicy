#
# This policy configuration will be used by all exynos products
# that inherit from LLuviaOS
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/lluvia/sepolicy/exynos/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/lluvia/sepolicy/exynos/dynamic \
    device/lluvia/sepolicy/exynos/system
else
BOARD_SEPOLICY_DIRS += \
    device/lluvia/sepolicy/exynos/dynamic \
    device/lluvia/sepolicy/exynos/vendor
endif
