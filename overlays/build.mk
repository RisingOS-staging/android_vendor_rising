#
# Copyright (C) 2023 The risingOS Android Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_SOONG_NAMESPACES += \
    vendor/rising/overlays

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/etc/permissions/privapp-permissions-google.xml

# System overlays
PRODUCT_PACKAGES += \
    AndroidOverlay \
    Launcher3Overlay \
    SettingsOverlay \
    SystemUIOverlay

ifeq ($(WITH_GMS),true)
# System overlays
PRODUCT_PACKAGES += \
    GoogleAndroidOverlay \
    GoogleSettingsOverlay \
    GoogleTelecommOverlay \
    PixelAM \
    PixelPrintService \
    PixelContactsProvider \
    GoogleConfigOverlay \
    GoogleHealthConnectOverlay \
    GoogleWebViewOverlay \
    ManagedProvisioningPixelOverlay \
    PixelConfigOverlay2018 \
    PixelConfigOverlay2019 \
    PixelConfigOverlay2019Midyear \
    PixelConfigOverlayCommon \
    SettingsGoogleOverlay2021AndNewer \
    PixelSettings \
    SettingsHuskyOverlay \
    PixelSettingsProvider \
    GoogleStorageManagerOverlay \
    SystemUIGXOverlay \
    PixelSystemUI \
    PixelTeleService \
    PixelTelecom \
    Pixelframework
endif
