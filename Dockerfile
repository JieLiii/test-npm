FROM docker.io/nginx:1.19.6

COPY dist/ /usr/vue/test-npm

EXPOSE 80
