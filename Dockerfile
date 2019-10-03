FROM ruby:alpine

RUN apk add --no-cache --update build-base ruby ruby-dev libxml2-dev mariadb-client redis gpgme tzdata tar
RUN gem install backup -v 5.0.0.beta.2 --no-document 
RUN apk del build-base ruby-dev libxml2-dev

RUN mkdir -p /root/Backup
WORKDIR /root/Backup

CMD backup perform -t 
