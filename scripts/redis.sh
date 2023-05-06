docker pull redis

docker run --name redis01 -d redis

docker inspect redis01 | grep IPAddr

ping -c 1 172.17.0.5
