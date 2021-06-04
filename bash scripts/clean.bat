for /f %%i in ('kubectl get deployments nginx-deployment') do set containerId=%%i
echo %containerId%
If "%containerId%" == "CONTAINER" (
  echo "No Container running"
) ELSE (
  kubectl delete deployments nginx-deployment
  kubectl delete services nginx-deployment
)

for /f %%i in ('docker ps -af "name=myapp"') do set containerId=%%i
echo %containerId%
If "%containerId%" == "" (
  echo "No Container running"
) ELSE (
  docker stop %ContainerId%
  docker rm -f %ContainerId%
)