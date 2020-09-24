FROM debian:buster

RUN apt-get update && apt-get -y install libpng-dev

ADD ./raspi2png /opt/raspi2png/raspi2png
ADD ./run.sh /opt/raspi2png/run.sh

WORKDIR /opt/raspi2png

ENTRYPOINT ["/opt/raspi2png/run.sh"]