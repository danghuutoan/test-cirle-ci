# syntax=docker/dockerfile:1.0.0-experimental

FROM python:3.6.8

WORKDIR /src

ADD ./src/requirements.txt requirements.txt
RUN pip install pip --upgrade
RUN pip install -r requirements.txt
EXPOSE 5000
ENV FLASK_RUN_HOST 0.0.0.0


COPY src .
ENTRYPOINT [ "flask",  "run" ]