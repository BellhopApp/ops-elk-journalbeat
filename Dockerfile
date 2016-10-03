FROM sebjay/journalbeat:latest
COPY journalbeat.yml /journalbeat.yml
CMD  /journalbeat
