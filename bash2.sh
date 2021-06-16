
gcloud auth list
gcloud config list project
gcloud config set compute/zone us-central1-a
gcloud container clusters create [CLUSTER-NAME] --num-nodes 1
kubectl create deployment hello-server --image=gcr.io/google-samples/hello-app:1.0
kubectl expose deployment hello-server --type=LoadBalancer --port 8080
kubectl get services
helm repo add stable https://charts.helm.sh/stable
helm repo update
helm install nginx-ingress stable/nginx-ingress --set rbac.create=true
kubectl get service nginx-ingress-controller
annotations: kubernetes.io/ingress.class: nginx
annotations: kubernetes.io/ingress.class: gce
kubectl apply -f ingress-resource.yaml
kubectl get ingress ingress-resource

