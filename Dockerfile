FROM python:3.5.9-alpine3.10

RUN mkdir /code
RUN mkdir /code/data
COPY requirements.txt /code
RUN pip install -r /code/requirements.txt

COPY scrappy.py /code

CMD python /code/scrappy.py
