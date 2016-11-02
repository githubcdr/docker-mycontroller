FROM alpine:latest
MAINTAINER me codar nl
ENV MYCONTROLLER_URL="http://github.com/mycontroller-org/mycontroller/releases/download/0.0.3.Alpha2/mycontroller-dist-standalone-0.0.3.Alpha2-bundle.tar.gz"

# pin to /tmp
WORKDIR /tmp

# dependencies
RUN apk add --update --no-cache s6 ca-certificates openjdk8-jre-base

# install
RUN	   wget $MYCONTROLLER_URL -O mycontroller.tar.gz \
	&& tar zxf mycontroller.tar.gz -C /usr/local \
	&& rm -f /tmp/*

# add files
COPY files/root/ /

# fixes
RUN	chmod +x /service/*/run

# expose mqtt and web
EXPOSE 1883/tcp 8443/tcp

# launch s6
ENTRYPOINT ["/bin/s6-svscan","/service"]
