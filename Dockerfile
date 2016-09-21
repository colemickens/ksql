FROM docker.io/library/node:6.6.0
ADD . /opt/ksql
WORKDIR /opt/ksql
RUN npm install
CMD node ./ksql.js
