# System SE Policy
PRODUCT_PUBLIC_SEPOLICY_DIRS += device/samsung/a21s-sepolicy/public
PRODUCT_PRIVATE_SEPOLICY_DIRS += device/samsung/a21s-sepolicy/private

# Vendor SE Policy
BOARD_SEPOLICY_DIRS += device/samsung/a21s-sepolicy/vendor

# Dontaudits
BOARD_SEPOLICY_DIRS += device/samsung/a21s-sepolicy/tracking_denials

# LineageOS
ifeq ($(BOARD_SEPOLICY_LINEAGE_OS), true)
BOARD_SEPOLICY_DIRS += device/samsung/a21s-sepolicy/lineage
endif
