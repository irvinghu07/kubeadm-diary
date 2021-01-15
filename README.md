Reference: [简书](https://www.jianshu.com/p/f2d4dd4d1fb1)

# ALL

## // Set up Swap, Hostname, Docker, K8s

```bash
chmod u+x kubeadm.sh
./kubeadm.sh
```



# MASTER

## // Set up flannel



```bash
chmod u+x master.sh
./master.sh
```



# SLAVE

## Join Master

## Master

```bash
kubeadm token create --print-join-command
```

---

# SCP Syntax

```bash
# Host to Remote
scp local_file remote_username@remote_ip:remote_folder 
# or 
scp local_file remote_username@remote_ip:remote_file 
# or 
scp local_file remote_ip:remote_folder 
# or 
scp local_file remote_ip:remote_file 


# Remote to Host
scp root@www.runoob.com:/home/root/others/music /home/space/music/1.mp3
```

---

# Ubuntu Modify Hostname

```bash
vim /etc/hostname
vim /etc/hosts
```

