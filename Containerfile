FROM quay-registry.apps.rjoseant.vmware.tamlab.rdu2.redhat.com/quay-registry/nginx:latest
MAINTAINER RedHat <rjoseant@redhat.com>

ENV SERVICE="mapasculturais"

RUN mkdir -p /var/www/html
RUN touch /var/www/html/index.php

COPY default.conf.template /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]
