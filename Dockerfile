FROM nginx:1.23.1

ADD ./nginx.conf /etc/nginx/conf.d/default.conf
COPY public/index.html /root/public/index.html

RUN mkdir /root/logs
RUN chmod 755 -R /root

CMD ["nginx", "-g", "daemon off;"]
