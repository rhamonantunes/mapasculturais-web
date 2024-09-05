FROM quay-registry.apps.rjoseant.vmware.tamlab.rdu2.redhat.com/quay-registry/nginx:latest
MAINTAINER RedHat <rjoseant@redhat.com>

ENV UPSTREAM="mapasculturais:9000"

RUN mkdir -p /var/www/html
RUN touch /var/www/html/index.php
COPY index.html /usr/share/nginx/html/index.html
COPY default.conf.template /etc/nginx/conf.d/default.conf
