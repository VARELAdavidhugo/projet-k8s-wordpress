# 🚀 Projet Kubernetes WordPress – K3s + Ansible + NFS

## 🎯 Objectif

Mettre en place un environnement de production pour WordPress et MySQL sur un cluster Kubernetes allégé (K3s), orchestré avec Ansible, et avec persistance des données via un serveur NFS.

---

## ⚙️ Stack technique

- Kubernetes (K3s)
- Ansible
- MySQL
- WordPress
- NFS (persistance des données)
- 3 VM sur Azure (Free Tier)
- GitHub (CI/CD manuel ou via Jenkins en option)

---

## 🧱 Architecture

               +---------------------+
               |    admin-master     |  ← K3s Master + Ansible
               +---------------------+
                         |
     -----------------------------------------
     |                                       |
+----------------+               +--------------------+
|    worker1     |               |    worker2-nfs     |
|  (WordPress)   |               |  (MySQL + NFS)      |
+----------------+               +--------------------+


---

## 📁 Structure du projet


├── hosts.ini # Inventaire Ansible
├── install_k3s.yml # Installation K3s master + agents
├── install_nfs_server.yml # Installation et config du serveur NFS
├── mysql-secret.yaml # Secrets MySQL
├── mysql-déploiement.yaml # Déploiement MySQL avec PVC NFS
├── pv-nfs.yaml / pvc-nfs.yaml # Volumes persistants NFS
├── wordpress-configmap.yaml # Configuration WordPress
├── déploiement-wordpress.yaml # Déploiement WordPress
├── service-wordpress.yaml # Exposition du service WordPress
├── pod-test-nfs.yaml # Test du montage NFS
└── .gitignore # Exclusions Git


---

## 🚀 Déploiement

```bash
ansible-playbook -i hosts.ini install_k3s.yml
ansible-playbook -i hosts.ini install_nfs_server.yml

kubectl apply -f mysql-secret.yaml
kubectl apply -f pv-nfs.yaml
kubectl apply -f pvc-nfs.yaml
kubectl apply -f mysql-déploiement.yaml
kubectl apply -f wordpress-configmap.yaml
kubectl apply -f déploiement-wordpress.yaml
kubectl apply -f service-wordpress.yaml


👤 Auteur
David Hugo VARELA DURAN
📧 davidhugovarela@gmail.com
🎓 Titre Pro ASDEV – Projet final DevOps
