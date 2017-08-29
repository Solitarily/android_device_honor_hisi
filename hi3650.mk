
ifneq ($(filter hi3650, $(TARGET_DEVICE)),)
$(call inherit-product, device/honor/hisi/hi3650/device-hi3650.mk)
$(call inherit-product, device/honor/hisi/device-common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)


#
# Overrides
PRODUCT_NAME := hi3650
PRODUCT_DEVICE := hi3650
PRODUCT_BRAND := Honor
PRODUCT_MODEL := AOSP for hi3650
endif
