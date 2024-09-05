FROM quay-registry.apps.rjoseant.vmware.tamlab.rdu2.redhat.com/quay-registry/nginx:latest
COPY index.html /usr/share/nginx/html/index.html
COPY default.conf.template /etc/nginx/conf.d/default.conf.template
