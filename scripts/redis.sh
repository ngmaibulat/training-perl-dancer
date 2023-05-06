docker pull redis

docker run --name redis01 -d redis

docker inspect redis01 | grep IPAddr

ping -c 1 172.17.0.5

redis-cli -h 172.17.0.5

redis-cli -h 172.17.0.5 -p 6379 ping
