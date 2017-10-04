FROM nethost/alpine:latest

MAINTAINER billgo <cocobill@vip.qq.com>

RUN apk update && apk upgrade && \
    apk add --no-cache bash mongodb && \
    rm -rf /var/cache/apk/*

VOLUME /var/lib/mongo

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 27017

ENTRYPOINT ["/entrypoint.sh"]

CMD [ "mongod", "--dbpath","/var/lib/mongo"]