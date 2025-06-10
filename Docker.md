sudo yum update
sudo yum install docker -y
sudo systemctl enable --now docker

curl -fsSL https://get.docker.com -o get-docker.sh
 sudo sh get-docker.sh



docker images  // to list the images
docker run -it image:tag // to run a continer and login to the container
docker run -d image:tag // to run a continer in a backgrond

docker ps // to list the running conters

docker ps -a // to list the all the states of conters

											  Host:continer
ca8847f35784   nginx     "/docker-entrypoint.…"   4 minutes ago   Up 3 seconds   0.0.0.0:32769->80/tcp, :::32769->80/tcp   vigorous_montalcini

using singe image can create multiple containers
multiple container are isolated with each other continers

docker stop $(docker ps -a -q) // to stop all the containers

docker rm $(docker ps -a -q) // to remove all the containers

docker rmi $(docker images  -q) // to remove all the images

docker run -itd --name mvn2 --rm maven /bin/bash  // --name [give custamize name] --rm [one the container stop then it will remove by default]

docker exec -it mvn1 /bin/bash  // login to the running container

docker cp feb-maven 7a6f6be24e95:/work

/work/target/vithya.war

docker cp 7a6f6be24e95:/work/target/vithya.war .

/usr/local/tomcat/webapps

docker cp vithya.war f280b1aacad5:/usr/local/tomcat/webapps

docker attach <continer name/id>

docker exec -it <continer name/id> /bin/bash

docker inspect <image_name>

docker inspect <continer_name>

docker history <image_name>

docker logs <continer_name>

docker login -u <user_name>

docker push <imageid:version>

docker tag 2a9d8f35e1cb dockerpandian/testtag:1

docker stats <continer name/id>

docker ps -q | docker stats

docker ps -q | docker stats --no-stream

docker run -itd --cpus=".5" --name web --rm -P dockerpandian/jtom:1

docker stats <continer name/id>
