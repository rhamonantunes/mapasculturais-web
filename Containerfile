FROM nginx:stable-alpine
MAINTAINER RedHat <rjoseant@redhat.com>

ENV MAPASCULTURAIS_SERVICE="mapasculturais"

RUN mkdir -p /var/www/html
RUN touch /var/www/html/index.php

COPY default.conf.template /etc/nginx/conf.d/default.conf.template
COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
