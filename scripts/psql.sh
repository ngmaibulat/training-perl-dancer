# connect via port forwarding on host
psql -h host.docker.internal -p 5432 -U postgres

# find pgsql container ip via command
docker inspect pgsql | grep IPAddr

# connect via ip:
psql -h 172.17.0.2 -p 5432 -U postgres

# set env
export DB_URL="db:pg://postgres:mysecretpassword@172.17.0.2:5432/postgres"
