FROM monsterdb-base AS db
COPY ./sql /build/sql
RUN apk add sqlite
RUN just db

FROM monsterdb-base AS backend
COPY ./src /build/src
COPY ./composer.json /build
COPY ./composer.lock /build
COPY ./public/index.php /build/public/
RUN apk add \
    composer \
    php82 \
    php82-pdo \
    php82-dom \
    php82-tokenizer \
    php82-xml \
    php82-simplexml \
    php82-xmlwriter \
    php82-ctype
RUN just backend

FROM php:8-fpm
COPY --from=db /build/db.sqlite /var/www/html
COPY --from=backend /build/public /var/www/html/public
COPY --from=backend /build/vendor /var/www/html/vendor
COPY --from=backend /build/src /var/www/html/src
COPY --from=monsterdb-base /build/.env /var/www/html/
