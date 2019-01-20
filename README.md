# KIXEYE Test Application - Phuoc Tran

'[{"userId":3,"score":-950776544},{"userId":1,"score":645407318}]'

Sending a GET request to localhost:8080/leaderboard should return a json array of users ids and scores like:

## Dependencies

### Java Runtime Environment: version 1.8.0_121
### Redis server: redis.local:6379
### Logging: local file system at /var/log/testapp.log

#######################################

- Install Docker and Docker-Compose in your host.
- Download all files and directories in this link into the same folder: https://github.com/minhphuoc275/testapp
- Go to your directory that you have downloaded, run command:
    Ex: sudo docker-compose -f Docker-compose.yml up
- Send Get or go to the link: http://localhost:8080/leaderboard
- Go to /tmp/testapp.log to check view log details
- Please contact me if you have any queries.

Some evidences:

``vagrant@ubuntu-xenial:/testapp/testapp-master/testapp$ sudo docker-compose ps
   Name                  Command               State           Ports         
-----------------------------------------------------------------------------
redis.local   docker-entrypoint.sh redis ...   Up      0.0.0.0:6379->6379/tcp
testapp       bash -c java -cp ./testapp ...   Up      0.0.0.0:8080->8080/tcp
vagrant@ubuntu-xenial:/testapp/testapp-master/testapp$``
