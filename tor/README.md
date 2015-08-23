Alpine TOR Agent
================

For Kitematic, you have to sync your date with an external time server :
```shell
docker-machine ssh dev 'sudo ntpclient -s -h pool.ntp.org'
```

To run a tor client :
```shell
docker run -d --name tor_1 -p 9050:9050 -e TIMEZONE=Europe/Paris
zenithar/nano-tor
```