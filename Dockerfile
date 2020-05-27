FROM node

RUN set -eux ;\
    apt-get update ;\
    apt-get install git -y 

#CMD nginx -g "daemon off;"
