FROM nginx:1.23.1
ENV PORT 8080

ADD ./nginx.conf /etc/nginx/conf.d/default.conf
COPY public/index.html /root/public/index.html
COPY public/ads.txt /root/public/ads.txt

RUN mkdir /root/logs
RUN chmod 755 -R /root

CMD ["nginx", "-g", "daemon off;"]
