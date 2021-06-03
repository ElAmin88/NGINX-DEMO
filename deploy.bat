kubectl apply -f nginx_deployment.yaml
kubectl expose deployment nginx-deployment --type="NodePort"
