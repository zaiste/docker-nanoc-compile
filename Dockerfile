FROM zaiste/nanoc
MAINTAINER Zaiste <oh [at] zaiste.net>

RUN apt-get update
RUN apt-get install -q -y openjdk-7-jre-headless && apt-get clean

VOLUME /data

ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

CMD ["/usr/local/bin/run"]
