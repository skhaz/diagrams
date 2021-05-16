FROM python:3.9-slim

RUN apt-get update && apt-get install --yes graphviz \
    && pip install --no-cache-dir diagrams

WORKDIR /data

VOLUME [ "/data" ]
