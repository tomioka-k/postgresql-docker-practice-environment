FROM postgres:11-alpine
ENV LANG ja_JP.utf8
RUN mkdir /var/lib/postgres/data/sample-db