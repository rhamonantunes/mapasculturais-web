FROM nginx:stable-alpine
COPY index.html /usr/share/nginx/html/index.html
COPY mapasculturais.conf /etc/nginx/conf.d/mapasculturais.conf
