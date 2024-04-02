#!/bin/bash

sudo mkdir /mnt/mohammad

# Initialize an empty array to hold the devices that exist
devices=()

# Loop through the possible device names
for device in /dev/nvme0n{1..5}; do
    # Check if the device file exists
    if [ -e "$device" ]; then
        # If it exists, create a physical volume
        sudo pvcreate "$device"
        # Add the device to the array
        devices+=("$device")
    fi
done

# Check if we have at least one device
if [ ${#devices[@]} -gt 0 ]; then
    # Create or extend the volume group with the available devices
    sudo vgcreate combined_ssd "${devices[@]}"
else
    echo "No NVMe devices found."
fi


sudo lvcreate -l +100%FREE -n combined_ssd_volume combined_ssd
sudo mkfs.ext4 /dev/combined_ssd/combined_ssd_volume
LINE="/dev/combined_ssd/combined_ssd_volume /mnt/mohammad    ext4    defaults        0       0"
echo "$LINE" | sudo tee -a /etc/fstab > /dev/null
sudo mount -a

sudo chown -R $USER:$USER /mnt/mohammad

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install cmake gdb build-essential libboost-all-dev libeigen3-dev

git config --global credential.helper store
git config --global user.name Mohamadol

ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa -N ""

cd /mnt/mohammad
REPO="https://github.com/Mohamadol/cryptonite_bench.git"
git clone $REPO
cd cryptonite_bench

cmake -S . -B build
cmake --build build
sudo cmake --install build


sudo mkdir -p /mnt/mohammad/swap
sudo fallocate -l 600G /mnt/mohammad/swap/swapfile
sudo chmod 600 /mnt/mohammad/swap/swapfile
sudo mkswap /mnt/mohammad/swap/swapfile
sudo swapon /mnt/mohammad/swap/swapfile
sudo nano /etc/fstab
/mnt/mohammad/swap/swapfile none swap sw 0 0
sudo swapon --show
getconf PAGESIZE

