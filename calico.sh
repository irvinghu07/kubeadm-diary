mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

export KUBECONFIG=/etc/kubernetes/admin.conf

# !!!!!!!Make Sure Proxy is on at this Point !!!!!!!
#Confiruration YAML file from Calico Official

# https://docs.projectcalico.org/manifests/tigera-operator.yaml
#https://docs.projectcalico.org/manifests/custom-resources.yaml


# 启动
kubectl apply -f tigera-operator.yaml

kubectl apply -f custom-resources.yaml

kubectl taint nodes --all node-role.kubernetes.io/master-

# 查看
kubectl get pods --namespace calico-system
kubectl get svc --namespace calico-system
ifconfig

