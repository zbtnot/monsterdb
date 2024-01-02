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
