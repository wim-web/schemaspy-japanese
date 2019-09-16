FROM schemaspy/schemaspy

USER root

RUN apk add --update \
            udev \
            ttf-freefont \
            curl

RUN mkdir /noto

ADD https://noto-website.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip /noto

WORKDIR /noto

RUN unzip NotoSansCJKjp-hinted.zip && \
    mkdir -p /usr/share/fonts/ && \
    cp *.otf /usr/share/fonts/ && \
    chmod 644 -R /usr/share/fonts/ && \
    fc-cache -fv

WORKDIR /
RUN rm -rf /noto

RUN rm -f drivers_inc/*
RUN curl -L https://jdbc.postgresql.org/download/postgresql-42.2.7.jar -o drivers_inc/postgresql-42.2.7.jar
RUN curl -L http://central.maven.org/maven2/mysql/mysql-connector-java/8.0.16/mysql-connector-java-8.0.16.jar -o drivers_inc/mysql-connector-java-8.0.16.jar
ENV LANG=ja_JP.UTF-8
ENV LC_ALL=ja_JP.UTF-8