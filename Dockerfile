FROM alpine:latest

################################
# Add mongodb package from older Alpine Release
# Last release with MongoDB APK is Alpine:3.9
RUN apk add --no-cache --purge -l -X https://dl-cdn.alpinelinux.org/alpine/v3.9/community -X https://dl-cdn.alpinelinux.org/alpine/v3.9/main mongodb
#RUN apk upgrade --no-cache --purge

VOLUME /data/db
EXPOSE 27017 28017

COPY run.sh /root
ENTRYPOINT [ "/root/run.sh" ]
CMD [ "mongod", "--bind_ip", "0.0.0.0" ]