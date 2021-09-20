云服务器上搭建饥荒的一些实用脚本，命令参考 https://www.bilibili.com/video/BV14b4y1S7uS

# 搭建云服务器

- [full.sh](full.sh) 记录了云服务器上搭建服务器的命令，具体教程可以参考 https://www.bilibili.com/video/

- 由于云服务器磁盘资源无论是否启动服务器都会计费（系统盘最低 40G，比较贵），我的做法是将游戏全部装到外接数据盘（只要 10G，便宜很多），需要开游戏时，重新买一个服务器，挂载数据盘，玩完了直接删除服务器，首次配置完成后，挂载相关指令参考 [initenv.sh](initenv.sh)

# MOD 自动更新
mods 文件夹可以通过写 dedicated_server_mods_setup.lua 文件实现自动更新，但是拷贝到服务器上的 mods 文件夹一般该文件是空的，可以在 mods 文件夹下运行 [generate_setup.py](generate_setup.py) 脚本，自动生成该文件。
