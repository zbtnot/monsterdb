build: db composer npm vite

db:
	rm -f db.sqlite
	touch db.sqlite
	sqlite3 db.sqlite < sql/monster.sql
	sqlite3 db.sqlite < sql/type.sql
	sqlite3 db.sqlite < sql/monster_type.sql
	sqlite3 db.sqlite < sql/illustration.sql
	sqlite3 db.sqlite < sql/evolution.sql
	sqlite3 db.sqlite < sql/move.sql
	sqlite3 db.sqlite < sql/monster_move.sql
	sqlite3 db.sqlite < sql/sprite.sql

npm:
	npm ci

vite:
	npx vite build

watch:
	NODE_ENV=development npx vite build -w

composer:
	composer install

unit:
	XDEBUG_MODE=coverage ./vendor/bin/phpunit --coverage-html test-coverage

clean:
	rm db.sqlite
	rm -rf vendor
	rm -rf node_modules
	rm -rf test-coverage

.PHONY: unit composer npm vite db build clean watch
