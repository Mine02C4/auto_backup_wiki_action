FROM alpine/git:latest
COPY backup.sh /backup.sh
ENTRYPOINT ["/bin/sh", "/backup.sh"]