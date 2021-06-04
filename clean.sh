if kubectl get deployments | grep nginx-deployment; then
        kubectl delete deployments nginx-deployment
        kubectl delete services nginx-deployment
else
        echo 'nginx deployment not found'
fi

if docker ps -af name=nginx | grep nginx; then
        docker stop nginx
        docker rm -f nginx
else
        echo 'nginx container not found'
fi
