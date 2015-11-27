FROM ubuntu

ADD app /app

RUN apt-get update && \
    apt-get install -yq curl python python-pip && \
    pip install -r /app/requirements.txt

EXPOSE 80

CMD ["/app/app.py"]
