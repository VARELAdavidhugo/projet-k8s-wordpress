exit
whomai
hostname
curl -s http://google.com
sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible
ansible --version
nano hosts.ini
ansible -i hosts.ini all -m ping
[200~ssh azureuser@158.23.178.251     # worker1
ssh azureuser@158.23.84.140      # worker2-nfs
ssh-copy-id azureuser@158.23.84.140
ssh-keygen -t rsa -b 4096
ssh-copy-id azureuser@158.23.84.140      # worker2-nfs
ssh-copy-id azureuser@158.23.178.251     # worker1
ssh-copy-id azureuser@158.23.184.27      # admin-master lui-même (pour test)
exit
ansible -i hosts.ini all -m ping
nano hosts.ini
ansible -i hosts.ini all -m ping
ls -l ~/.ssh/id_rsa
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
ansible -i hosts.ini all -m ping -vvv
ansible -i hosts.ini all -m ping
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
ansible -i hosts.ini all -m ping
nano hosts.ini
ansible -i hosts.ini all -m ping -vvv
cat ~/.ssh/id_rsa.pub
exit
ssh azureuser@158.23.178.251
ssh azureuser@158.23.84.140
ansible -i hosts.ini all -m ping
mkdir -p ~/.ssh
nano ~/.ssh/authorized_keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
ansible -i hosts.ini all -m ping
cat ~/.ssh/id_rsa.pub
ssh azureuser@158.23.178.251
ansible -i inventory/hosts.ini all -m ping
cat hosts.ini 
ansible -i ~/hosts.ini all -m ping
nano install_k3s.yml
ansible-playbook -i ~/hosts.ini install_k3s.yml
kubectl get nodes
sudo chmod +r /etc/rancher/k3s/k3s.yaml
export KUBECONFIG=/etc/rancher/k3s/k3s.yaml
kubectl get nodes
sudo cat /var/lib/rancher/k3s/server/node-token
curl -sfL https://get.k3s.io | K3S_URL=https://10.0.0.4:6443 K3S_TOKEN=K1079918203f6d94fdc5393ae58a144c3bd9c0263511c56bb59da35869423cd8115::server:5df3b0c65bfa4e33128a409dda4d2bd1 sh -
ssh azureuser@158.23.178.251
ssh azureuser@158.23.84.140
kubectl get nodes
ansible-playbook -i ~/hosts.ini install_nfs_server.yml
nano install_nfs_server.yml
ansible-playbook -i ~/hosts.ini install_nfs_server.yml
showmount -e 158.23.84.140
sudo apt update && sudo apt install -y nfs-common
showmount -e 158.23.84.140
ssh azureuser@158.23.84.140
sudo showmount -e 158.23.84.140
exit
showmount -e 158.23.84.140
ssh azureuser@158.23.84.140
exit
showmount -e 158.23.84.140
showmount -e 10.0.0.6
nano pv-nfs.yaml
kubectl apply -f pv-nfs.yaml
kubectl get pv
nano pvc-nfs.yaml
kubectl apply -f pvc-nfs.yaml
kubectl get pvc
nano pvc-nfs.yaml
kubectl delete pvc pvc-nfs-kubedata
nano pvc-nfs.yaml
kubectl get pvc
nano pvc-nfs.yaml
kubectl apply -f pvc-nfs.yaml
kubectl get pvc
nano mysql-secret.yaml
kubectl apply -f mysql-secret.yaml
nano mysql-deployment.yaml
kubectl apply -f mysql-deployment.yaml
kubectl get pods
nano wordpress-configmap.yaml
kubectl apply -f wordpress-configmap.yaml
nano wordpress-deployment.yaml
nano wordpress-service.yaml
kubectl apply -f wordpress-deployment.yaml
kubectl apply -f wordpress-service.yaml
kubectl get pods
kubectl get svc
kubectl describe pod wordpress-655775957b-7rp2n
ssh azureuser@10.0.0.5
kubectl delete pod -l app=wordpress
kubectl get pods -l app=wordpress
kubectl get svc wordpress
exit
kubectl get pods -l app=mysql
kubectl logs -l app=mysql
kubectl get configmap wordpress-config -o yaml
kubectl edit configmap wordpress-config
vi
kubectl delete configmap wordpress-config
nano wordpress-configmap.yaml
kubectl apply -f wordpress-configmap.yaml
kubectl delete pod -l app=wordpress
kubectl get pods -l app=wordpress
kubectl get secret mysql-pass -o yaml
echo 'bXlzcWw=' | base64 -d
nano wordpress-configmap.yaml
cat  wordpress-configmap.yaml
kubectl delete pod -l app=wordpress
kubectl get pods -l app=wordpress -w
kubectl get secret mysql-pass -o jsonpath="{.data.password}" | base64 -d
kubectl run test-mysql --rm -i -t --image=mysql:5.7 --restart=Never -- bash
ssh azureuser@158.23.84.140
kubectl delete pod -l app=mysql
kubectl run test-mysql --rm -i -t --image=mysql:5.7 --restart=Never -- bash
kubectl delete pod -l app=wordpress
kubectl get pods -l app=wordpress -w
kubectl get configmap wordpress-config -o yaml
kubectl delete configmap wordpress-config
nano wordpress-configmap.yaml
kubectl apply -f wordpress-configmap.yaml
kubectl delete pod -l app=wordpress
kubectl get pods -l app=wordpress -w
scp ~/.ssh/id_ed25519 azureuser@158.23.184.27:~/.ssh/
ansible -i ~/hosts.ini all -m ping
kubectl get nodes
kubectl get pods -A
sudo kubectl get nodes
sudo kubectl get pods -A
sudo systemctl status k3s
kubectl get nodes
kubectl get pods -A
mkdir -p ~/.kube
sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
sudo chown azureuser:azureuser ~/.kube/config
export KUBECONFIG=~/.kube/config
echo 'export KUBECONFIG=~/.kube/config' >> ~/.bashrc
source ~/.bashrc
kubectl get nodes
kubectl get pods -A
ssh -i ~/.ssh/id_ed25519 azureuser@158.23.84.140
ssh -i ~/.ssh/id_ed25519 azureuser@158.23.178.251
ssh -i ~/.ssh/id_ed25519 azureuser@158.23.84.140
exit
ssh -i ~/.ssh/id_ed25519 azureuser@158.23.178.251
ssh -i ~/.ssh/id_ed25519 azureuser@158.23.84.140
ssh -i ~/.ssh/id_ed25519 azureuser@158.23.178.251
nano pv-nfs.yaml
kubectl apply -f pv-nfs.yaml
nano pvc-nfs.yaml
kubectl get pvc
nano pod-test-nfs.yaml
kubectl apply -f pod-test-nfs.yaml
kubectl get pods
kubectl exec -it pod-test-nfs -- sh
ssh -i ~/.ssh/id_ed25519 azureuser@158.23.178.251
ssh -i ~/.ssh/id_ed25519 azureuser@158.23.84.140
cd ~/ton-projet-k8s/
# (ou là où sont tes fichiers de déploiement Kubernetes)
ls
nano wordpress-deployment.yaml
cat  wordpress-deployment.yaml
kubectl get configmap wordpress-config -o yaml
ls
nano wordpress-configmap.yaml 
kubectl get secret mysql-pass -o yaml
kubectl delete pod -l app=wordpress
cat wordpress-configmap.yaml 
kubectl get pods -l app=wordpress -o wide
kubectl get nodes -o wide
kubectl get svc
kubectl describe pod -l app=wordpress
kubectl exec -it pod/<nom_du_pod_mysql> -- bash
kubectl get pods -l app=mysql
kubectl exec -it mysql-847c7db468-p7r8z -- bash
nano wordpress-deployment.yaml 
kubectl apply -f wordpress-deployment.yaml
kubectl delete pod -l app=wordpress
echo "bXlzcWw=" | base64 --decode
kubectl get svc mysql -o wide
kubectl exec -it -l app=wordpress -- sh
kubectl get pods -l app=wordpress
kubectl exec -it wordpress-cd6954c94-vjndr -- sh
exit
kubectl exec -it mysql-847c7db468-p7r8z -- bash
kubectl exec -it <nom_pod_wordpress> -- sh
kubectl get pods -l app=wordpress
kubectl exec -it wordpress-cd6954c94-vjndr -- sh
kubectl delete secret mysql-pass
kubectl create secret generic mysql-pass   --from-literal=WORDPRESS_DB_PASSWORD=mysql
kubectl delete pod -l app=wordpress
exit
