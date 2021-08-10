#version=DEVEL
# System authorization information
auth --enableshadow --passalgo=sha512

# Install OS instead of upgrade
install

# Use network installation
url --url="http://192.168.1.200/centos/"

# Use text mode install
text

# Firewall configuration
firewall --disabled

# Run the Setup Agent on first boot
firstboot --disable
ignoredisk --only-use=sda

#Keyboard layouts
keyboard --vckeymap=us --xlayouts='us'

# System language
lang en_US.UTF-8 --addsuport=zh_CN.UTF-8

# Network information
network  --onboot=yes --bootproto=dhcp --device=eth0 --ipv6=auto --activate
network  --hostname=localhost.localdomain

# shutdown after installation
poweroff

# Root password
rootpw --iscrypted $6$9bTO7Z0KZ0.1tBI9$wTVBL5enY9L96Emi.8vaU3Nx4qYsOvImZ9BVoIBTf8WZkdu/wGx7m048dgpdrSzwi8hv7zAOXGWu9xl81Kfxr/

# SELinux configuration
selinux --disabled

# System services
services --enable="chronyd"

# System timezone
timezone Asia/Shanghai --isUtc --ntpservers=0.ntp.aliyun.com,1.ntp1.aliyun.com,2.ntp2.aliyun.com,3.ntp3.aliyun.com

# System bootloader configuration
bootloader --location=mbr --boot-drive=sda
autopart --type=lvm

# Partition clearing information
clearpart --none --initlabel

%packages
@^minimal
@core

%end

%addon com_redhat_kdump --disable --reserve-mb='auto'

%end

%anaconda
pwpolicy root --minlen=6 --minquality=1 --notstrict --nochanges --notempty
pwpolicy user --minlen=6 --minquality=1 --notstrict --nochanges --emptyok
pwpolicy luks --minlen=6 --minquality=1 --notstrict --nochanges --notempty
%end
