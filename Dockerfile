FROM python:3.7-slim

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get dist-upgrade -y && \
    apt-get install -y --no-install-recommends \
      iproute2 iputils-ping && \
    apt-get clean && apt-get autoremove

ADD ./run.sh /run.sh

ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
CMD ["/run.sh"]
