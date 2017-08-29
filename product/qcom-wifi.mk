# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:vendor/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:vendor/etc/permissions/android.hardware.wifi.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.disableWifiApFirmwareReload=true \
    wifi.interface=wlan0

# WiFi HAL
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

# Wifi
PRODUCT_PACKAGES += \
    libwcnss_qmi \
    wcnss_service

PRODUCT_PACKAGES += \
    hostapd \
    wificond \
    wifilogd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd.accept:vendor/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd.conf:vendor/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/configs/hostapd.deny:vendor/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:vendor/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:vendor/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/WCNSS_qcom_cfg.ini:vendor/etc/wifi/WCNSS_qcom_cfg.ini
