# DenOS - Debian Linux build from scratch with Debootstrap#
# Bernardino Lopez [ bernardino.lopez@gmail.com ]
# 11.27.18

# 03_denos_chroot.sh - Customize your Distro
# As root in chroot. Execute the script in a Terminal 
# ./03_denos_chroot.sh

# export LIVE_BOOT=LIVE_BOOT64
source ./denos_config.txt

#echo "debian-live" > /etc/hostname
echo $DISTRO_NAME > /etc/hostname 

apt-get update
apt-get install -y --no-install-recommends \
    "$BASEPKG" && \
apt-get clean

passwd root

exit
