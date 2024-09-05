FROM quay-registry.apps.rjoseant.vmware.tamlab.rdu2.redhat.com/quay-registry/nginx:latest
MAINTAINER RedHat <rjoseant@redhat.com>

ENV SERVICE="mapasculturais"

RUN mkdir -p /var/www/html
RUN touch /var/www/html/index.php

COPY default.conf.template /etc/nginx/conf.d/default.conf.template
COPY docker-entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
