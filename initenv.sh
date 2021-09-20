# 安装 CentOS 7.5
# 设置安全组 DST (放开 10999 端口)

mkdir /mnt/dst/
chmod 777 /mnt/dst/
mount /dev/vdb /mnt/dst/
# 如果报错，执行 yum update
yum -y install glibc.i686 libstdc++.i686 libcurl.i686 tmux

# 如果需要，则更新游戏
app_update 343050 validate
# 如果需要，上传所有 mods 到 dstserver

cd /mnt/dst/dstserver/bin
# tmux 运行 master_start.sh 和 cave_start.sh
