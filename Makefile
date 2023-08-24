db:
	rm -f db.sqlite
	touch db.sqlite
	sqlite3 db.sqlite < sql/monster.sql
	sqlite3 db.sqlite < sql/type.sql
	sqlite3 db.sqlite < sql/monster_type.sql
	sqlite3 db.sqlite < sql/illustration.sql
	sqlite3 db.sqlite < sql/evolution.sql

npm:
	npm ci

vite:
	npx vite build

composer:
	composer install

build: db composer npm vite

unit:
	./vendor/bin/phpunit test

clean:
	rm db.sqlite
	rm -r vendor
	rm -r node_modules

.PHONY: unit composer npm  vite db build clean
