FROM nginx:alpine

RUN echo "include /etc/nginx/conf.d/*.conf;" > /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/templates/default.conf.template

EXPOSE 443 80
