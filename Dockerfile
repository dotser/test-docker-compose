FROM ubuntu:14-04

RUN apt-get update \
    && apt-get install
    && pip install -r requirements.txt

ADD . /srv
EXPOSE 5000

ENTRYPOINT
