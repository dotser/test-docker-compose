FROM ubuntu

ADD app /app

RUN apt-get update && \
    apt-get install -yq python python-dev python-pip && \
    pip install -r /app/requirements.txt

EXPOSE 5000

CMD ["python", "/app/app.py"]
