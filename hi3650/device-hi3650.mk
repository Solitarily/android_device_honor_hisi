

LOCAL_PATH := device/honor/hisi/hi3650

$(call inherit-product-if-exists, vendor/honor/hisi/hi3650/vendor.mk)

PRODUCT_COPY_FILES += $(LOCAL_PATH)/kernel:kernel

# Vendor Interface Manifest
PRODUCT_COPY_FILES += \
    device/honor/hisi/hi3650/manifest.xml:vendor/manifest.xml


# Ramdisk
PRODUCT_COPY_FILES +=   $(LOCAL_PATH)/fstab.hi3650:root/fstab.hi3650 \
			$(LOCAL_PATH)/init.hi3650.rc:root/init.hi3650.rc \
			$(LOCAL_PATH)/init.hi3650.usb.configfs.rc:root/init.hi3650.usb.configfs.rc \
			$(LOCAL_PATH)/ueventd.hi3650.rc:root/ueventd.hi3650.rc

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.subproduct=F2FS \
    ro.magic.api.version=0.1 \
    ro.enable_boot_charger_mode=0 \
    persist.sys.usb.config=manufacture,adb \
    sys.usb.config=manufacture,adb \
    sys.usb.configfs=1 \
    sys.usb.controller=ff100000.dwc3 \
    persist.sys.sdcardfs=force_off \
    qemu.hw.mainkeys=0

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl


USE_XML_AUDIO_POLICY_CONF := 1
# Audio
PRODUCT_COPY_FILES += \
	device/honor/hisi/hi3650/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
	device/honor/hisi/hi3650/audio_policy_volumes_drc.xml:system/etc/audio_policy_volumes_drc.xml \
	frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:system/etc/a2dp_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:system/etc/r_submix_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/default_volume_tables.xml:system/etc/default_volume_tables.xml

PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio@2.0-service \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.broadcastradio@1.0-impl \
    android.hardware.soundtrigger@2.0-impl

# Launcher
PRODUCT_PACKAGES += Launcher3

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
	frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
	frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml
