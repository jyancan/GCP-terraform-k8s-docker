#!/bin/bash
#creando imagen
name=imageAPI
cd container
docker build -t $name .
imageID="$(docker images | grep ${name} | awk '{print $3}'  )"
#docker run -ti -p 8080:3000 $imageID

#subiedo imagen a gcr.io
gcloud auth configure-docker
docker tag gcr.io/google-samples/hello-app:1.0 gcr.io/PROJECT_ID/quickstart-image:tag1
docker push gcr.io/PROJECT_ID/quickstart-image:tag1

kubectl create -f deployment.yaml
kubectl create -f ingress.yaml
