FROM mheese/journalbeat:latest
COPY journalbeat.yml /journalbeat.yml
CMD ["./journalbeat", "-e", "-c", "journalbeat.yml"]
