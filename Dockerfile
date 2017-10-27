FROM mheese/journalbeat:latest
COPY journalbeat.yml /journalbeat.yml
RUN chmod go-w /journalbeat.yml
CMD ["./journalbeat", "-e", "-c", "journalbeat.yml"]
