# Copyright (C) 2016-2017 AOSiP
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

# Versioning System
PRODUCT_VERSION_MAJOR = 8
PRODUCT_VERSION_MINOR = 1

AOSIP_BUILDTYPE ?= Derp

AOSIP_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(AOSIP_BUILDTYPE)-$(AOSIP_BUILD)-$(shell date -u +%Y%m%d)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.aosip.version=$(AOSIP_VERSION) \
  ro.aosip.device=$(AOSIP_BUILD) \
  ro.modversion=$(AOSIP_VERSION)
