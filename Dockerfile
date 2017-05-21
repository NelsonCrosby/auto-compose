FROM node:7.10-alpine

RUN mkdir -pv /opt/auto-compose/source /opt/auto-compose/state
COPY . /opt/auto-compose/source
RUN cd /opt/auto-compose/source && npm install && npm cache clean

EXPOSE 8886

WORKDIR /opt/auto-compose/state
ENTRYPOINT ["/opt/auto-compose/source/bin/auto-compose"]
