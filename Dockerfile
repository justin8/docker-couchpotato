FROM justin8/python
MAINTAINER justin@dray.be

ENV version 3.0.1
RUN echo $version > /version
RUN apk add --update py-lxml
RUN wget -O couchpotato.tar.gz https://github.com/RuudBurger/CouchPotatoServer/archive/build/$version.tar.gz && \
    tar xzf couchpotato.tar.gz && \
    rm couchpotato.tar.gz && \
    mv CouchPotatoServer-build-$version couchpotato

VOLUME "/config"

EXPOSE 5050
CMD /usr/bin/python /couchpotato/CouchPotato.py --config_file "/config/config.ini" --data_dir "/config" --console_log
