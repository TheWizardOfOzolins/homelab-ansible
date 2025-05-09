# Configuring My Homelab

## Install RHEL

Get the latest version off the redhat website

## Install / configure deps

### Install Cockpit

```bash
sudo -i
dnf install cockpit cockpit-pcp -y
systemctl enable --now cockpit.socket
firewall-cmd --add-service=cockpit
firewall-cmd --add-service=cockpit --permanent
```

### Install/Configure ZFS

```bash
dnf install https://zfsonlinux.org/epel/zfs-release-2-3$(rpm --eval "%{dist}").noarch.rpm

dnf config-manager --disable zfs
dnf config-manager --enable zfs-kmod
dnf install zfs -y

echo zfs >/etc/modules-load.d/zfs.conf

dnf install git -y
git clone https://github.com/45drives/cockpit-zfs-manager.git
cp -r cockpit-zfs-manager/zfs /usr/share/cockpit
systemctl restart cockpit

```

### Setup Podman

```bash
dnf install podman podman-plugins cockpit-podman -y
systemctl enable --now podman.socket
sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm -y
sudo dnf upgrade -y
sudo dnf install podman-compose -y
```

### Configure Pools for ZFS

```bash
ls -l /dev/disk/by-id
zpool create data
mkdir -p /mnt/data
zfs set mountpoint=/mnt/data data
chmod -R 770 /mnt/data
```

### Install packages

```bash
dnf install tree tmux vim -y
```