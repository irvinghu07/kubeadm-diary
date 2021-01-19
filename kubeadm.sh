# install docker
sudo apt install -y docker.io
docker -v
touch /etc/docker/daemon.json
echo -e '{
  "registry-mirrors": [
    "https://dockerhub.azk8s.cn",
    "https://reg-mirror.qiniu.com",
    "https://quay-mirror.qiniu.com"
  ],
  "exec-opts": [ "native.cgroupdriver=systemd" ]
}' > /etc/docker/daemon.json

# reload docker
sudo systemctl daemon-reload
sudo systemctl restart docker
systemctl enable docker.service
docker info | grep Cgroup

# Install Kubernetes
# 使得 apt 支持 ssl 传输
apt-get update && apt-get install -y apt-transport-https
# 下载 gpg 密钥
curl https://mirrors.aliyun.com/kubernetes/apt/doc/apt-key.gpg | apt-key add - 
# 添加 k8s 镜像源
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb https://mirrors.aliyun.com/kubernetes/apt/ kubernetes-xenial main
EOF
# 更新源列表
apt-get update && 
# 下载 kubectl，kubeadm以及 kubelet
apt-get install -y kubelet kubeadm kubectl