FROM docker.io/nginx:1.19.6

COPY test-npm/ /usr/vue/test-npm

EXPOSE 80
