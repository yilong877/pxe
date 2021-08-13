<h2 style="text-align:center">PXE Configuration</h2>

这个主要是用来备份一些 PXE 启动的相关配置文件。

### 需要用到的软件

- tftp: 用来传输 Linux 启动时用到核心文件，配置文件的位置是 /etc/xinetd.d/tftp
- dhcp: dhcp 服务器，用来分配 IP 地址，配置文件的位置是 /etc/dhcpd.conf
- syslinux: 提供 Linux 启动时所需的启动文件，像 pxelinux.0， menu.c32 之类的文件, 所需文件由于系统发行版不同位置有所不
同， Archlinux 文件提供的位置是 /usr/lib/syslinux/bios/， Centos7 文件提供的位置是 /usr/share/syslinux/， 如果不确定文件在哪，可以用这条命令找一下 `sudo find / -name "*pxelinux\.0" -type f`
- nginx: 提供 Linux 安装时的 http 服务，也可以用 httpd 作为替换，配置文件的位置是 /etc/nginx/nginx.conf

### 其它

整体安装部署过程请参考该链接 blog.lancediary.com，后面考虑如何将 Windows 也整合到一起，并写成一个自动部署的脚本
