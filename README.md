# monsterdb

A web app designed to serve information about the popular video game, Pokemon.

[Production Demo](https://pkmn.gioarc.me)

## Architecture
-   The frontend uses Vue and Tailwind
-   The backend uses Slim 4 with PHP-DI
    -   The database is sqlite

## Development

- Clone the repo
- Run `make build`
- Run `docker compose up`

## Assets
The data provided in the `sql` and `public/assets` directories are sourced from [Bulbapedia](https://bulbapedia.bulbagarden.net).
This data should be unmodified and used under the terms of the [Creative Commons Attribution-NonCommercial-ShareAlike 2.5 license](https://creativecommons.org/licenses/by-nc-sa/2.5/legalcode).

## License
The source code contained within this repository is available under the terms of the [ISC license](https://opensource.org/license/isc-license-txt/).
