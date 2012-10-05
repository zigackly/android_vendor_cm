# Inherit common CM stuff
$(call inherit-product, vendor/cm/config/common_full.mk)

ifeq ($(CM_BUILD),wingray)
# Default ringtone
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.config.ringtone=Bongo.ogg \
        ro.config.notification_sound=CyanMessage.ogg \
        ro.config.alarm_alert=CyanAlarm.ogg
else
# Default ringtone
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.config.ringtone=CyanTone.ogg \
        ro.config.notification_sound=CyanMessage.ogg \
        ro.config.alarm_alert=CyanAlarm.ogg
endif

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/cm/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
