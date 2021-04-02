#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# AAPT CONFIG
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.allocator@3.0-impl \
    android.hardware.graphics.allocator@4.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    gralloc.msm8916 \
    hwcomposer.msm8916 \
    libgenlock \
    libtinyxml \
    memtrack.msm8916 \
    liboverlay \
    copybit.msm8916

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Display
PRODUCT_PROPERTY_OVERRIDES += \
     debug.composition.type=c2d \
     debug.enable.sglscale=1 \
     debug.hwui.use_buffer_age=false \
     debug.mdpcomp.idletime=600 \
     ro.opengles.version=196608 \
     persist.hwc.mdpcomp.enable=true \
     sys.hwc.gpu_perf_mode=1

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sys.fw.bservice_enable=true 

# Screen density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=280 \
    persist.graphics.vulkan.disable=true

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.2-service.clearkey

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8916 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libvolumelistener \
    tinymix
    
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-service \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.soundtrigger@2.1-impl \
    android.hardware.audio@5.0 \
    android.hardware.audio.common@5.0 \
    android.hardware.audio.common@5.0-util \
    android.hardware.audio@5.0-impl \
    android.hardware.audio.effect@5.0 \
    android.hardware.audio.effect@5.0-impl
    
PRODUCT_PACKAGES += \
    audio.bluetooth.default \
    android.hardware.bluetooth.audio@2.0-impl        

# Audio
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/audio/acdbdata/15399/Handset_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/15399/Handset_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/15399/Hdmi_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/15399/Hdmi_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/15399/Headset_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/15399/Headset_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/15399/Speaker_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/15399/Speaker_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/15399/WorkspaceFile.qwsp:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/15399/WorkspaceFile.qwsp \
   $(LOCAL_PATH)/audio/acdbdata/15399/Bluetooth_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/15399/Bluetooth_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/15399/General_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/15399/General_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/15399/Global_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/15399/Global_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_General_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/MTP/MTP_General_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Global_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/MTP/MTP_Global_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Handset_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/MTP/MTP_Handset_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Hdmi_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/MTP/MTP_Hdmi_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Headset_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/MTP/MTP_Headset_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Speaker_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/MTP/MTP_Speaker_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Bluetooth_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/MTP/MTP_Bluetooth_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Handset_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Handset_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Hdmi_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Hdmi_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Headset_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Headset_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Speaker_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Speaker_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Bluetooth_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Bluetooth_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_General_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_General_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Global_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Global_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Headset_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/QRD/QRD_Headset_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Speaker_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/QRD/QRD_Speaker_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Bluetooth_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/QRD/QRD_Bluetooth_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_General_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/QRD/QRD_General_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Global_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/QRD/QRD_Global_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Handset_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/QRD/QRD_Handset_cal.acdb \
   $(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Hdmi_cal.acdb:$(TARGET_COPY_OUT_SYSTEM)/etc/acdbdata/QRD/QRD_Hdmi_cal.acdb 
   
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
   $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
   $(LOCAL_PATH)/audio/mixer_paths_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_mtp.xml \
   $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
   frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
   frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
   frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
   frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
   frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml
   
# Audio
PRODUCT_PROPERTY_OVERRIDES += \
      af.fast_track_multiplier=1 \
      audio.deep_buffer.media=true \
      audio.offload.min.duration.secs=30 \
      audio.offload.video=true \
      persist.vendor.audio.fluence.voicecall=true \
      persist.vendor.audio.fluence.voicerec=true \
      persist.vendor.audio.fluence.speaker=false \
      ro.vendor.audio.sdk.fluencetype=fluence \
      vendor.audio.offload.buffer.size.kb=64 \
      vendor.audio.offload.gapless.enabled=true \
      vendor.audio_hal.period_size=192 \
      vendor.voice.path.for.pcm.voip=true \
      ro.config.media_vol_steps=25 \
      ro.config.vc_call_vol_steps=7
   
# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio   

# TimeKeep
PRODUCT_PACKAGES += \
    timekeep \
    TimeKeep

# APEX
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ld.config.txt:$(TARGET_COPY_OUT_SYSTEM)/etc/swcodec/ld.config.txt

# Bluetooth
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service \
    camera.device@1.0-impl \
    libshim_camera \
    libboringssl-compat \
    libcamera_shim \
    camera.msm8916 \
    Snap

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml

# Camera-Prop
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.cpp.duplication=false \
    persist.camera.hal.debug.mask=0
    
# Surfaceflinger
PRODUCT_PROPERTY_OVERRIDES += \
   ro.surface_flinger.max_frame_buffer_acquired_buffers=3    

# vendor_init
PRODUCT_PACKAGES += \
    libinit_msm8916

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl.legacy \
    android.hardware.gnss@1.0-service.legacy \
    gps.msm8916

# Charger images
PRODUCT_PACKAGES += charger_res_images

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/gps/quipc.conf:system/etc/quipc.conf

# GPS
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml

# PrivApp Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Bluetooth Properties
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.hfp.client=1 \
    vendor.qcom.bluetooth.soc=pronto \
    ro.bluetooth.hfp.ver=1.6 \
    ro.qualcomm.bt.hci_transport=smd \
    ro.bluetooth.dun=true \
    ro.bluetooth.sap=true 

# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8916

PRODUCT_PACKAGES += InProcessNetworkStack
PRODUCT_DISABLE_SCUDO := true

# Google Assistant
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true

# Init scripts
PRODUCT_PACKAGES += \
    init.qcom-common.rc \
    init.qcom.power.rc \
    init.qcom.usb.rc \
    ueventd.qcom.rc \
    fstab.qcom \
    init.qcom.rc

# For config.fs
PRODUCT_PACKAGES += \
    fs_config_files

# CryptfsHW
PRODUCT_PACKAGES += \
    vendor.qti.hardware.cryptfshw@1.0-service-qti.qsee

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml 

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libextmedia_jni \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxG711Enc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw
    
# Media-Prop
PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.smoothstreaming=true \
    media.aac_51_output_enabled=true 

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml

# Power
PRODUCT_PACKAGES += \
    power.msm8916 \
    android.hardware.power@1.0-impl \
    android.hardware.power@1.0-service

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.max_starting_bg=8

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
     ro.vendor.extension_library=libqti-perfd-client.so \
     ro.min_freq_0=800000 \
     ro.core_ctl_min_cpu=0 \
     ro.core_ctl_max_cpu=2

# IPC router config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config
    
# First api level, device has been commercially launched
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.first_api_level=22

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.0-service

# Touchscreen
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# RIL
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    librmnetctl \
    libxml2

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.msm8916

# DRM
PRODUCT_PACKAGES += \
    drm.service.enabled=true
    
# Time services
PRODUCT_PACKAGES += \
  persist.timed.enable=true    

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl\
    $(LOCAL_PATH)/keylayout/qpnp_pon.kl:system/usr/keylayout/qpnp_pon.kl

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
   persist.fuse_sdcard=true


# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service.legacy \
    hostapd \
    wcnss_service \
    wpa_supplicant

PRODUCT_PACKAGES += \
    wpa_supplicant.conf \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.cyanogen_8916

# Optimize
PRODUCT_SYSTEM_SERVER_COMPILER_FILTER := speed-profile
PRODUCT_ALWAYS_PREOPT_EXTRACTED_APK := true
PRODUCT_USE_PROFILE_FOR_BOOT_IMAGE := true
PRODUCT_DEXPREOPT_SPEED_APPS += SystemUI

# Strip debug
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false

# TextClassifier
PRODUCT_PACKAGES += \
    textclassifier.bundle1

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.target=dpm3 \
    persist.data.qmi.adb_logmask=0 \
    persist.radio.multisim.config=dsds \
    persist.radio.custom_ecc=1 \
    persist.radio.ecc_hard_1=112,911,110,122,119,120,000,118 \
    persist.radio.ecc_hard_count=1 \
    rild.libpath=/system/vendor/lib/libril-qc-qmi-1.so \
    ril.subscription.types=RUIM \
    telephony.lteOnCdmaDevice=1
    
# Volte
PRODUCT_PROPERTY_OVERRIDES += \
     persist.dbg.ims_volte_enable=1 \
     persist.dbg.volte_avail_ovr=1 \
     persist.dbg.vt_avail_ovr=1 \
     persist.dbg.wfc_avail_ovr=1
    
# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    accelcal \
    AccCalibration \
    calmodule.cfg \
    sensors.msm8916

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml 

# USB ID
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.usb.id.midi=90BA \
    ro.usb.id.midi_adb=90BB \
    ro.usb.id.mtp=2281 \
    ro.usb.id.mtp_adb=2282 \
    ro.usb.id.ptp=2284 \
    ro.usb.id.ptp_adb=2283 \
    ro.usb.id.ums=2286 \
    ro.usb.id.ums_adb=2285 \
    ro.usb.vid=2970

$(call inherit-product, vendor/oppo/A37/A37-vendor.mk)
