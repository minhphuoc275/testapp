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

```vagrant@ubuntu-xenial:/testapp/testapp-master/testapp$ sudo docker-compose ps
   Name                  Command               State           Ports         
-----------------------------------------------------------------------------
redis.local   docker-entrypoint.sh redis ...   Up      0.0.0.0:6379->6379/tcp
testapp       bash -c java -cp ./testapp ...   Up      0.0.0.0:8080->8080/tcp
vagrant@ubuntu-xenial:/testapp/testapp-master/testapp$

vagrant@ubuntu-xenial:/tmp$ tail -f testapp.log 
02:49:30.957 INFO [spatcher-2] a.e.s.Slf4jLogger Slf4jLogger started
02:49:31.079 INFO [main] k.t.Redis$ generated scores: List((-9.55111879E8,1), (-1.292787996E9,2), (-6.61508751E8,3), (2.049288803E9,4))
02:49:31.257 INFO [spatcher-3] k.t.Main$ Loaded data into Redis
02:49:31.537 INFO [spatcher-2] a.e.s.Slf4jLogger Slf4jLogger started
```

![alt](https://github.com/minhphuoc275/testapp/blob/master/images/success.png)
