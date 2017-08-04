FROM node:6-alpine

# grab su-exec for easy step-down from root
RUN apk add --no-cache 'su-exec>=0.2'

COPY package.json /web/
WORKDIR /web

RUN set -ex; \
	chown -R node:node "/web"; \
	npm install -g @angular/cli; \
	npm cache -g clean; \
  npm install; \
  npm cache clean

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 4200
CMD ["ng", "serve"]
