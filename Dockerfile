FROM ubuntu

# ADD app /app

# RUN apt-get update && \
#     apt-get install -yq python python-dev python-pip && \
#     pip install -r /app/requirements.txt

# EXPOSE 500

# CMD ["python", "/app/app.py"]


RUN apt-get update -qq && \
    apt-get install -yqq curl nginx

VOLUME ["/usr/share/nginx/html/"]

EXPOSE 80 443

CMD ["nginx"]
