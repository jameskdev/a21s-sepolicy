# System SE Policy
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += device/samsung/a21s-sepolicy/public
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += device/samsung/a21s-sepolicy/private

# Vendor SE Policy
BOARD_SEPOLICY_DIRS += device/samsung/a21s-sepolicy/vendor

# Dontaudits
BOARD_SEPOLICY_DIRS += device/samsung/a21s-sepolicy/tracking_denials

# LineageOS / GSI
# Important: if you are using this sepolicy for building Lineage OS or GSI, please set the appropriate flag to true
# BEFORE including a21s-sepolicy, as setting this value after inclusion of this makefile will result in
# Lineage OS parts being left out, resulting in build failure or other problems.
ifeq ($(BOARD_SEPOLICY_LINEAGE_OS),true)
BOARD_SEPOLICY_DIRS += device/samsung/a21s-sepolicy/lineage
endif

ifeq ($(BOARD_SEPOLICY_SEC_GSI),true)
BOARD_SEPOLICY_DIRS += device/samsung/a21s-sepolicy/vendor_gsi
endif
