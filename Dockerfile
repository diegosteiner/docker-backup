FROM ruby:alpine

RUN apk add --no-cache --update build-base ruby ruby-dev libxml2-dev mariadb-client mongodb-tools redis gpgme tzdata tar && \
    gem install backup -v 5.0.0.beta.2 --no-document && \
    apk del build-base ruby-dev libxml2-dev

RUN mkdir -p /backup
WORKDIR /backup

CMD ls -al
