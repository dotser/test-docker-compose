FROM ubuntu

ADD app /app

# RUN apt-get update && \
#     apt-get install -yq python python-dev python-pip && \
#     pip install -r /app/requirements.txt

RUN apt-get update && \
    apt-get install -yq nginx

EXPOSE 80

# CMD ["python", "/app/app.py"]
