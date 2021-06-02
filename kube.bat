echo 'cleaning stage'
for /f %%i in ('kubectl get deployments nginx-deployment') do set containerId=%%i
echo %containerId%
If "%containerId%" == "" (
  echo "No Container running"
) ELSE (
  kubectl delete deployments nginx-deployment
)

for /f %%i in ('docker ps -af "name=myapp"') do set containerId=%%i
echo %containerId%
If "%containerId%" == "" (
  echo "No Container running"
) ELSE (
  docker stop %ContainerId%
  docker rm -f %ContainerId%
)


echo 'update application image stage'
docker login -u elamin88 -p aminAMIN##1234
docker build -t myapp https://github.com/ElAmin88/NGINX-DEMO.git
docker run --name myapp -p 3000:80 -d myapp 
docker commit myapp elamin88/kube_test:latest
docker push elamin88/kube_test:latest

echo 'deploy kubernetes stage'
kubectl apply -f nginx_deployment.yaml
kubectl expose deployment nginx-deployment --type="NodePort"
minikube service nginx-deployment --url