FROM nginx:1.23.1
ENV PORT 8080

ADD ./nginx.conf /etc/nginx/conf.d/default.conf
COPY public/ /root/public/

RUN mkdir /root/logs
RUN chmod 755 -R /root

CMD ["nginx", "-g", "daemon off;"]
