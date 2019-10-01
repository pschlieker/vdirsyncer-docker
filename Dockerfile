FROM python:3.7-alpine

WORKDIR /

RUN pip install vdirsyncer

ENV VDIRSYNCER_CONFIG /config
ENV CRONTIMETABLE */10 * * * *

VOLUME /status

COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY sync.sh /sync.sh
RUN chmod +x /docker-entrypoint.sh && chmod +x /sync.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["cron"]
