<h2 style="text-align:center">PXE Configuration</h2>

这个主要是用来备份一些 PXE 启动的相关配置文件。

### 需要用到的软件

- tftp: 用来传输 Linux 启动时用到核心文件
- dhcp: dhcp 服务器
- syslinux: 提供 Linux 启动时所需的核心文件，像 pxelinux.0 之类的
- nginx: 提供 Linux 安装时的 http 服务
