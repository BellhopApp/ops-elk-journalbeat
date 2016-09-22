# instructions

If we have to create a new ELK one-click Digital Ocean app, get a its
logstash-forwarder.crt and replace this repos' version, and update the private
ip address in the Coreos systemd startup config (as described by `docker run`
below).

# One-click ELK Digital Ocean app - setup instructions:

https://www.digitalocean.com/community/tutorials/how-to-use-the-digitalocean-elk-stack-one-click-application

# journalbeat (logstash-forwarder)

taken from: https://hub.docker.com/r/sebjay/journalbeat/

```sh
docker run --name ops-elk-journalbeat \
  --log-driver=json-file \
  -v /var/log/journal:/var/log/journal \
  -v /etc/machine-id:/etc/machine-id \
  -e LOGSTASH_HOST=${LOGSTASH_HOST} \
  bellhopapp/ops-elk-journalbeat:${OPS_ELK_JOURNALBEAT_VERSION}
```

# build locally

```sh
docker build . -t bellhopapp/ops-elk-journalbeat
```
