FROM python:2.7

ADD app/ /code
WORKDIR /code
RUN pip install -r requirements.txt

CMD python app.py
