FROM sebjay/journalbeat:latest
COPY logstash-forwarder.crt /logstash-forwarder.crt
COPY journalbeat.yml /journalbeat.yml
CMD  /journalbeat
