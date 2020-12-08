gcloud config set compute/zone us-central1-b
gcloud container clusters create --preemptible project-kube

echo "Make sure Minikube is running"
minikube status

kubectl apply -f application/rest-deployment.yaml