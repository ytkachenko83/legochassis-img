#!/bin/sh
# Shared definitions for buildroot scripts
USE_QEMU="${1:-y}"
# The defconfig from the buildroot directory we use for qemu builds
QEMU_DEFCONFIG=configs/qemu_aarch64_virt_defconfig
RPI_DEFCONFIG=configs/raspberrypi4_64_defconfig
# The place we store customizations to the qemu configuration
MODIFIED_QEMU_DEFCONFIG=base_external/configs/legochassis_qemu_defconfig
MODIFIED_DEFCONFIG=base_external/configs/legochassis_defconfig
# The defconfig from the buildroot directory we use for the project
if [ "$USE_QEMU" = "y" ]
then
    LEGOCHASSIS_DEFAULT_DEFCONFIG=${QEMU_DEFCONFIG}
    LEGOCHASSIS_MODIFIED_DEFCONFIG=${MODIFIED_QEMU_DEFCONFIG}
else
    LEGOCHASSIS_DEFAULT_DEFCONFIG=${RPI_DEFCONFIG}
    LEGOCHASSIS_MODIFIED_DEFCONFIG=${MODIFIED_DEFCONFIG}
fi    
LEGOCHASSIS_MODIFIED_DEFCONFIG_REL_BUILDROOT=../${LEGOCHASSIS_MODIFIED_DEFCONFIG}
