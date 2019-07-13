FROM python:latest
COPY requirements.txt /usr/src/code/
WORKDIR /usr/src/code
RUN pip install -r requirements.txt
COPY . /usr/src/code/
ENV env prod
CMD gunicorn -c configuration.py app:app
