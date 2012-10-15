# Inherit common CM stuff
$(call inherit-product, vendor/cm/config/common.mk)

ifeq ($(CM_BUILD),wingray)
    # Bring in limited audio files for wingray
    include frameworks/base/data/sounds/MinimalAudio.mk

    # Include minimal CM audio files
    include vendor/cm/config/cm_minimal_audio.mk

    # Optional CM packages
    PRODUCT_PACKAGES += \
        LiveWallpapersPicker 
else
    # Bring in all audio files
    include frameworks/base/data/sounds/NewAudio.mk

    # Bring in extra Ringtones
    include frameworks/base/data/sounds/AudioPackageNewWave.mk

    # Bring in all video files
    $(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

    # Include CM audio files
    include vendor/cm/config/cm_audio.mk

    # Optional CM packages
    PRODUCT_PACKAGES += \
        HoloSpiralWallpaper \
        MagicSmokeWallpapers \
        NoiseField \
        Galaxy4 \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        PhaseBeam
endif

