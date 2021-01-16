# Check with Cmd
kubectl get nodes

sudo cp /etc/kubernetes/kubelet.conf $HOME/
sudo chown $(id -u):$(id -g) $HOME/kubelet.conf
export KUBECONFIG=$HOME/kubelet.conf

# Check Again
kubectl get nodes