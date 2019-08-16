FROM node:12.8.1-alpine
ENV NEWMAN_VERSION 4.5.4
RUN npm config set registry https://registry.npm.taobao.org \
    && npm install -g newman@${NEWMAN_VERSION};
WORKDIR /test
CMD ["newman", "--version"]