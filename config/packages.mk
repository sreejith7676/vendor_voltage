# VoltageOS packages (Keep these always)
PRODUCT_PACKAGES += \
    SimpleDeviceConfig \
    Covers \
    ThemePicker \
    ThemesStub \
    LogViewer \
    GameSpace \
    Datura \
    LMOFreeform \
    LMOFreeformSidebar \
    OmniJaws \
    AppCompatConfig

# Apps with Google equivalents — skip on GMS builds
ifneq ($(WITH_GMS),true)
PRODUCT_PACKAGES += \
    AvatarPicker \
    Etar \
    ExactCalculator \
    Glimpse \
    VoltageSetupWizard \
    Seedvault \
    AppDataBackup \
    Gramophone  \
    Jellyfish 
endif

ifeq ($(VOLTAGE_BUILD_TYPE),OFFICIAL)
    PRODUCT_PACKAGES += \
        Updater
endif

ifneq ($(PRODUCT_NO_CAMERA),true)
PRODUCT_PACKAGES += \
    Aperture
endif

# BtHelper
PRODUCT_PACKAGES += \
    BtHelper

# Extra tools in Voltage
PRODUCT_PACKAGES += \
    awk \
    bzip2 \
    curl \
    getcap \
    libsepol \
    setcap \

# Filesystems tools
PRODUCT_PACKAGES += \
    fsck.exfat \
    mke2fs \
    mkfs.exfat

# VoltageOS UDFPS animations
ifeq ($(EXTRA_UDFPS_ANIMATIONS),true)
PRODUCT_PACKAGES += \
    UdfpsIcons \
    UdfpsAnimations
endif
