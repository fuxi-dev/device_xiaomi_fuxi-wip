#!/bin/bash
#
# SPDX-FileCopyrightText: 2016 The CyanogenMod Project
# SPDX-FileCopyrightText: 2017-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

function vendor_imports() {
    cat << EOF >> "$1"
		"device/xiaomi/sm8550-common",
		"hardware/qcom-caf/sm8550",
		"hardware/xiaomi",
		"vendor/qcom/opensource/commonsys-intf/display",
EOF
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=fuxi
export DEVICE_COMMON=sm8550-common
export VENDOR=xiaomi
export VENDOR_COMMON=${VENDOR}

"./../../${VENDOR_COMMON}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
