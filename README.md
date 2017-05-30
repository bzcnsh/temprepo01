# steps to re-create DNS issue  
## create a single node/two nodes swarm with limited resource. single CPU/768MB mem  
## overload swarm with non-functional container spec and frequent restarts for 5 minutes, then normalize the stack  
bash ./reproduce.sh  
## check if the DNS issue has been reproduced  
docker exec into one container  
yum install bind-utils  
nslookup tasks.srv1  
nslookup tasks.srv2  
if you see more than 2 IPs returned, then the DNS issue has been reproduced  
## clean-up  
docker stack rm test  
docker network rm lab-network  

## confirmed on these versions:
Server Version: 17.03.1-ee-3 with UCP
7.05.ce without UCP
13.1 without UCP


