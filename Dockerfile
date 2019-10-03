FROM ruby:alpine

RUN apk add --no-cache --update build-base ruby ruby-dev libxml2-dev mariadb-client redis gpgme tzdata tar
RUN gem install backup -v 4.3.0 --no-document 
RUN apk del build-base ruby-dev libxml2-dev

RUN mkdir -p /backup
WORKDIR /backup

CMD backup perform -t 
