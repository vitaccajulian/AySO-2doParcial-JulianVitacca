lsblk
sudo fdisk /dev/sde
free -h
sudo mkswap /dev/sde1
free -h
sudo swapon /dev/sde1
free -h
p
sudo fdisk /dev/sde
sudo pvcreate /dev/sde2 /dev/sde3 /dev/sde5 /dev/sde6
sudo pvs
sudo vgcreate vgAdmin /dev/sde2 /dev/sde3
sudo vgs
sudo pvs
sudo vgcreate vgDevelopers /dev/sde5 /dev/sde6
sudo pvs
sudo vgs
sudo lvcreate –L 1G vgDevelopers –n lvdevelopers
sudo lvcreate -L 1g vgDevelopers -n lvDevelopers
sudo lvcreate -L 1g vgDevelopers -n lvTesters
sudo lvcreate -L 1g vgDevelopers -n lvDevops
sudo lvcreate -L .8g vgDevelopers -n lvDevops
sudo lvs
sudo lvcreate -L 1g vgAdmin -n lvAdmin
sudo lvs
sudo fdisk -l
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvTesters
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevops
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvAdmin
sudo mkfs.ext4 /dev/mapper/vgAdmin-lvAdmin
sudo mkdir /mnt/lvDevelopers
sudo mkdir /mnt/lvTesters
sudo mkdir /mnt/lvDevops
sudo mkdir /mnt/lvAdmin
sudo mount /dev/mapper/vgDevelopers-lvDevelopers /mnt/lvDevelopers
sudo mount /dev/mapper/vgDevelopers-lvDevops /mnt/lvDevops
sudo mount /dev/mapper/vgDevelopers-lvTesters /mnt/lvTesters
sudo mount /dev/mapper/vgAdmin-lvAdmin /mnt/lvAdmin
df -h
lsblk -f

