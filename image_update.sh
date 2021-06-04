docker login -u elamin88 -p aminAMIN##1234
docker build -t nginx https://github.com/ElAmin88/NGINX-DEMO.git
docker run --name nginx -p 3000:80 -d nginx 
docker commit nginx elamin88/kube_test:latest
docker push elamin88/kube_test:latest
