FROM ubuntu:latest
RUN rm -rf /var/www/html/*
ADD build/web /var/www/html/kjaehyeok21.dev

EXPOSE 80
EXPOSE 443
EXPOSE 22