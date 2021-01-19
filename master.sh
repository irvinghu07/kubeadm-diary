kubeadm init \
--image-repository registry.aliyuncs.com/google_containers \
--pod-network-cidr=10.244.0.0/16 \
--pod-network-cidr=192.168.0.0/16 \
--control-plane-endpoint=39.108.72.65:6443 \
--upload-certs


mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config


# Setting up Service Provider Load Banlancing 
# Fill IP and Port into master.sh


# 查看已加入的节点
kubectl get nodes
# 查看集群状态
kubectl get cs



# 查看已加入的节点
kubectl get nodes
# 查看集群状态
kubectl get cs

kubectl get all --all-namespaces

kubeadm token create --print-join-command