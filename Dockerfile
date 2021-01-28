FROM postgres:13.1-alpine

COPY /scripts /

RUN apk --update --no-cache add dcron

VOLUME /backups
VOLUME /log

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/docker-cmd.sh"]