FROM debian:10
LABEL MAINTAINER="https://github.com/htr-tech/zphisher"

WORKDIR C642Y963D4T06/
ADD . /C642Y963D4T06

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install --no-install-recommends -y php
RUN apt-get install -y unzip
RUN apt-get clean
RUN apt-get install -y wget

CMD ["./C-PHISHER.sh"]
