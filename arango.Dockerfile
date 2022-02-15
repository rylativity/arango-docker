FROM arangodb/arangodb:3.8.5.1

RUN apk add bash npm

RUN npm install --global foxx-cli && \
    foxx install -u root -P -H http://localhost:8529 -D _system /grafana \
    https://github.com/arangodb-foxx/grafana-connector/archive/master.zip