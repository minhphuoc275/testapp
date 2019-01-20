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

`vagrant@ubuntu-xenial:/testapp/testapp-master/testapp$ sudo docker-compose ps
   Name                  Command               State           Ports         
-----------------------------------------------------------------------------
redis.local   docker-entrypoint.sh redis ...   Up      0.0.0.0:6379->6379/tcp
testapp       bash -c java -cp ./testapp ...   Up      0.0.0.0:8080->8080/tcp
vagrant@ubuntu-xenial:/testapp/testapp-master/testapp$`

`vagrant@ubuntu-xenial:/testapp/testapp-master/testapp$ sudo docker-compose -f Docker-compose.yml up
Starting redis.local ... done
Starting testapp     ... done
Attaching to redis.local, testapp
redis.local    | 1:C 20 Jan 2019 02:54:11.911 # oO0OoO0OoO0Oo Redis is starting oO0OoO0OoO0Oo
redis.local    | 1:C 20 Jan 2019 02:54:11.911 # Redis version=5.0.3, bits=64, commit=00000000, modified=0, pid=1, just started
redis.local    | 1:C 20 Jan 2019 02:54:11.911 # Warning: no config file specified, using the default config. In order to specify a config file use redis-server /path/to/redis.conf
redis.local    | 1:M 20 Jan 2019 02:54:11.912 * Running mode=standalone, port=6379.
redis.local    | 1:M 20 Jan 2019 02:54:11.912 # WARNING: The TCP backlog setting of 511 cannot be enforced because /proc/sys/net/core/somaxconn is set to the lower value of 128.
redis.local    | 1:M 20 Jan 2019 02:54:11.912 # Server initialized
redis.local    | 1:M 20 Jan 2019 02:54:11.912 # WARNING overcommit_memory is set to 0! Background save may fail under low memory condition. To fix this issue add 'vm.overcommit_memory = 1' to /etc/sysctl.conf and then reboot or run the command 'sysctl vm.overcommit_memory=1' for this to take effect.
redis.local    | 1:M 20 Jan 2019 02:54:11.912 # WARNING you have Transparent Huge Pages (THP) support enabled in your kernel. This will create latency and memory usage issues with Redis. To fix this issue run the command 'echo never > /sys/kernel/mm/transparent_hugepage/enabled' as root, and add it to your /etc/rc.local in order to retain the setting after a reboot. Redis must be restarted after THP is disabled.
redis.local    | 1:M 20 Jan 2019 02:54:11.912 * DB loaded from disk: 0.000 seconds
redis.local    | 1:M 20 Jan 2019 02:54:11.912 * Ready to accept connections
testapp        | 02:54:13 [leaderboard-akka.actor.default-dispatcher-5] INFO  akka.event.slf4j.Slf4jLogger - Slf4jLogger started
testapp        | 02:54:14 [main] INFO  kixeye.testapp.Redis$ - generated scores: List((6.45407318E8,1), (1.926540469E9,2), (-9.50776544E8,3), (1.244157571E9,4))
testapp        | 02:54:14 [leaderboard-akka.actor.default-dispatcher-4] INFO  kixeye.testapp.Main$ - Loaded data into Redis
testapp        | 02:54:14 [Main-akka.actor.default-dispatcher-5] INFO  akka.event.slf4j.Slf4jLogger - Slf4jLogger started
testapp        | 02:59:20 [Main-akka.actor.default-dispatcher-11] TRACE kixeye.testapp.routes.Leaderboard - HTTP request for leaderboard
testapp        | 02:59:20 [leaderboard-akka.actor.default-dispatcher-9] DEBUG kixeye.testapp.RequestHandler - getting leaderboard from redis
testapp        | 02:59:20 [scala-execution-context-global-47] DEBUG kixeye.testapp.RequestHandler - got leaderboard: List(LeaderboardEntry(3,-950776544), LeaderboardEntry(1,645407318))
testapp        | 02:59:20 [Main-akka.actor.default-dispatcher-11] DEBUG kixeye.testapp.routes.Leaderboard - Got status response List(LeaderboardEntry(3,-950776544), LeaderboardEntry(1,645407318)) for HTTP leaderboard request`
