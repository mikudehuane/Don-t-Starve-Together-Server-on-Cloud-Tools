sudo -i
 
yum update
yum -y install glibc.i686 libstdc++.i686 libcurl.i686 tmux
 
cd /home && mkdir steamcmd && cd steamcmd
 
yum -y install wget
 
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
 
tar -xvzf steamcmd_linux.tar.gz
 
./steamcmd.sh
 
login anonymous
 
force_install_dir /home/dstserver
 
app_update 343050 validate
 
ln -s /usr/lib/libcurl.so.4 /home/dstserver/bin/lib32/libcurl-gnutls.so.4
 
cd /home/dstserver/bin
 
# 用于外接磁盘
# echo "./dontstarve_dedicated_server_nullrenderer -console -persistent_storage_root /mnt/dst/dstsave -conf_dir dst -cluster Cluster_4 -shard Master" > master_start.sh
# echo "./dontstarve_dedicated_server_nullrenderer -console -persistent_storage_root /mnt/dst/dstsave -conf_dir dst -cluster Cluster_4 -shard Caves" > cave_start.sh

echo "./dontstarve_dedicated_server_nullrenderer -console -persistent_storage_root /home/dstsave -conf_dir dst -cluster Cluster_4 -shard Master" > master_start.sh
echo "./dontstarve_dedicated_server_nullrenderer -console -persistent_storage_root /home/dstsave -conf_dir dst -cluster Cluster_4 -shard Caves" > cave_start.sh
 
chmod +x master_start.sh cave_start.sh
 