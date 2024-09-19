FROM ubuntu:16.04

EXPOSE 9306
EXPOSE 9312

RUN apt update && apt install -y wget libpq5 libodbc1 libmysqlclient20 libexpat1

RUN wget https://sphinxsearch.com/files/sphinxsearch_2.3.2-beta-1~xenial_amd64.deb -O /tmp/sphinxsearch.deb

RUN dpkg -i /tmp/sphinxsearch.deb

RUN mkdir -p /etc/sphinxsearch /var/log/sphinxsearch /var/lib/sphinxsearch

ENTRYPOINT ["/usr/bin/searchd", "--nodetach", "--config", "/etc/sphinxsearch/sphinx.conf"]