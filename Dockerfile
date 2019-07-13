FROM python:latest
COPY requirements.txt /usr/src/code/
WORKDIR /usr/src/code
RUN pip install -r requirements.txt
COPY . /usr/src/code/
CMD gunicorn --bind 0.0.0.0:8000 app:app

