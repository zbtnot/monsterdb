FROM monsterdb-base AS frontend
COPY ./src/View /build/src/View
COPY ./css /build/css
COPY ./js /build/js
COPY ./public/assets /build/public/assets
COPY ./tailwind.config.js /build
COPY ./vite.config.js /build
COPY ./postcss.config.js /build
COPY ./package.json /build
COPY ./package-lock.json /build
COPY ./.eslintrc.cjs /build
RUN apk add nodejs npm
RUN just frontend

FROM nginx:latest
COPY --from=frontend /build/public /var/www/html/public
COPY ./docker/nginx.conf /etc/nginx/conf.d/default.conf
