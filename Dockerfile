FROM python:3.7-alpine

RUN apk add --no-cache pdftk texlive

WORKDIR /app/dragon-sheets

COPY ./ ./

RUN python setup.py install

WORKDIR /examples

ENTRYPOINT [ "makesheets" ]
