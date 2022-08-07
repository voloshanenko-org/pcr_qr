FROM nginx

EXPOSE 80

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY pdf /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
