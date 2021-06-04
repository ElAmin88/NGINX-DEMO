docker login -u elamin88 -p aminAMIN##1234
docker build -t myapp https://github.com/ElAmin88/NGINX-DEMO.git
docker run --name myapp -p 3000:80 -d myapp 
docker commit myapp elamin88/kube_test:latest
docker push elamin88/kube_test:latest
