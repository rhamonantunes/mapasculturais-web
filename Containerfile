FROM quay-registry.apps.rjoseant.vmware.tamlab.rdu2.redhat.com/quay-registry/nginx:latest
COPY index.html /usr/share/nginx/html/index.html
COPY mapasculturais.conf /etc/nginx/conf.d/mapasculturais.conf
