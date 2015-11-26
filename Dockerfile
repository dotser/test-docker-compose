FROM ubuntu:14.04

ADD . /code

RUN apt-get update && \
    apt-get install -yq python-pip && \
    pip install -r /code/requirements.txt

EXPOSE 5000

CMD ["python", "/code/server.py"]
