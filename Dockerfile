FROM ubuntu:16.04
LABEL author="Tri Mai-Quoc"

ENV PING_TARGER=google.com

RUN apt-get update \
    && apt-get install -y iputils-ping \
    && apt-get clean \
    && cd /var/lib/apt/lists && rm -rf *Release* *Sources* *Packages* \
    && truncate -s 0 /var/log/*log

CMD ["sh", "-c", "ping $PING_TARGER"]