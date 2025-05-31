pipeline {
    agent any

    environment {
        KUBECONFIG = "${HOME}/.kube/config"
    }

    stages {
        stage('Déployer MySQL') {
            steps {
                sh 'kubectl apply -f mysql-secret.yaml'
                sh 'kubectl apply -f pv-nfs.yaml'
                sh 'kubectl apply -f pvc-nfs.yaml'
                sh 'kubectl apply -f mysql-deployment.yaml'
            }
        }

        stage('Déployer WordPress') {
            steps {
                sh 'kubectl apply -f wordpress-configmap.yaml'
                sh 'kubectl apply -f wordpress-deployment.yaml'
                sh 'kubectl apply -f wordpress-service.yaml'
            }
        }

        stage('Vérification des pods') {
            steps {
                sh 'kubectl get pods -o wide'
            }
        }
    }

    post {
        success {
            echo "✅ Déploiement réussi"
        }
        failure {
            echo "❌ Erreur dans le pipeline"
        }
    }
}
