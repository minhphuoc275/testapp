# KIXEYE Test Application - Phuoc Tran

'[
    {
        "userId": 4,
        "score": 1256336489
    },
    {
        "userId": 3,
        "score": 462027042
    }
]'

Sending a GET request to localhost:8080/leaderboard should return a json array of users ids and scores like:

## Dependencies

Java Runtime Environment: version 1.8.0_121
Redis server available at: redis.local:6379 (a working redis.conf file is included in ./resources)
Logging: local file system at /var/log/testapp.log

#######################################

- Install Docker and Docker-Compose in your host.
- Download all files and directories in this link into the same folder: https://github.com/minhphuoc275/testapp
- Go to your directory that you have downloaded, run command:
    Ex: sudo docker-compose -f Docker-compose.yml up
- Send Get or go to the link: http://localhost:8080/leaderboard
- Go to /tmp/testapp.log to check view log details
- Please contact me if you have any queries.
