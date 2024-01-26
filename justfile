build: db composer vite env

db:
	rm -f db.sqlite
	touch db.sqlite
	sqlite3 db.sqlite < sql/monster.sql
	sqlite3 db.sqlite < sql/type.sql
	sqlite3 db.sqlite < sql/monster_type.sql
	sqlite3 db.sqlite < sql/illustration.sql
	sqlite3 db.sqlite < sql/item.sql
	sqlite3 db.sqlite < sql/evolution_how.sql
	sqlite3 db.sqlite < sql/evolution.sql
	sqlite3 db.sqlite < sql/move.sql
	sqlite3 db.sqlite < sql/move_animation.sql
	sqlite3 db.sqlite < sql/monster_move.sql
	sqlite3 db.sqlite < sql/sprite.sql
	sqlite3 db.sqlite < sql/cry.sql
	sqlite3 db.sqlite < sql/stat.sql
	sqlite3 db.sqlite < sql/location.sql
	sqlite3 db.sqlite < sql/monster_location.sql

frontend:
    npm ci
    npx vite build

backend:
    composer install

env:
    -test ! -f .env && cp .env.dist .env

docker:
    docker build -t monsterdb-base . -f ./docker/base.dockerfile
    docker build -t monsterdb-frontend . -f ./docker/frontend.dockerfile
    docker build -t monsterdb-backend . -f ./docker/backend.dockerfile

docker-compose:
    docker compose -f ./docker-compose.dev.yml up

vite:
	npx vite build

watch:
	NODE_ENV=development npx vite build -w

composer:
	composer install

logger:
	tail -f -n 0 ./var/log/*.log

unit:
	XDEBUG_MODE=coverage ./vendor/bin/phpunit --coverage-html test-coverage

hurl:
	hurl --variable host=http://localhost:8080 --test test/hurl/*.hurl

stan:
	vendor/bin/phpstan analyze -l 6 ./src

phpcs:
	vendor/bin/phpcs --standard=PSR12 ./src

clean:
	rm db.sqlite
	rm -rf vendor
	rm -rf node_modules
	rm -rf test-coverage
