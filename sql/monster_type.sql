--- monster_type table
CREATE TABLE IF NOT EXISTS monster_type
(
    id
    integer
    constraint
    monster_type_pk
    primary
    key
    autoincrement,
    monster_id
    integer
    not
    null
    constraint
    monster_type_monster_id_fk
    references
    monster,
    type_id
    integer
    not
    null
    constraint
    monster_type_type_id_fk
    references
    type
);

INSERT INTO monster_type (monster_id, type_id)
VALUES ((SELECT id FROM monster WHERE name = 'Bulbasaur'), (SELECT id FROM type WHERE name = 'Grass')),
       ((SELECT id FROM monster WHERE name = 'Bulbasaur'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Ivysaur'), (SELECT id FROM type WHERE name = 'Grass')),
       ((SELECT id FROM monster WHERE name = 'Ivysaur'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Venusaur'), (SELECT id FROM type WHERE name = 'Grass')),
       ((SELECT id FROM monster WHERE name = 'Venusaur'), (SELECT id FROM type WHERE name = 'Poison')),

       ((SELECT id FROM monster WHERE name = 'Charmander'), (SELECT id FROM type WHERE name = 'Fire')),
       ((SELECT id FROM monster WHERE name = 'Charmeleon'), (SELECT id FROM type WHERE name = 'Fire')),
       ((SELECT id FROM monster WHERE name = 'Charizard'), (SELECT id FROM type WHERE name = 'Fire')),
       ((SELECT id FROM monster WHERE name = 'Charizard'), (SELECT id FROM type WHERE name = 'Flying')),

       ((SELECT id FROM monster WHERE name = 'Squirtle'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Wartortle'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Blastoise'), (SELECT id FROM type WHERE name = 'Water')),

       ((SELECT id FROM monster WHERE name = 'Caterpie'), (SELECT id FROM type WHERE name = 'Bug')),
       ((SELECT id FROM monster WHERE name = 'Metapod'), (SELECT id FROM type WHERE name = 'Bug')),
       ((SELECT id FROM monster WHERE name = 'Butterfree'), (SELECT id FROM type WHERE name = 'Bug')),
       ((SELECT id FROM monster WHERE name = 'Butterfree'), (SELECT id FROM type WHERE name = 'Flying')),

       ((SELECT id FROM monster WHERE name = 'Weedle'), (SELECT id FROM type WHERE name = 'Bug')),
       ((SELECT id FROM monster WHERE name = 'Weedle'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Kakuna'), (SELECT id FROM type WHERE name = 'Bug')),
       ((SELECT id FROM monster WHERE name = 'Kakuna'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Beedrill'), (SELECT id FROM type WHERE name = 'Bug')),
       ((SELECT id FROM monster WHERE name = 'Beedrill'), (SELECT id FROM type WHERE name = 'Poison')),

       ((SELECT id FROM monster WHERE name = 'Pidgey'), (SELECT id FROM type WHERE name = 'Normal')),
       ((SELECT id FROM monster WHERE name = 'Pidgey'), (SELECT id FROM type WHERE name = 'Flying')),
       ((SELECT id FROM monster WHERE name = 'Pidgeotto'), (SELECT id FROM type WHERE name = 'Normal')),
       ((SELECT id FROM monster WHERE name = 'Pidgeotto'), (SELECT id FROM type WHERE name = 'Flying')),
       ((SELECT id FROM monster WHERE name = 'Pidgeot'), (SELECT id FROM type WHERE name = 'Normal')),
       ((SELECT id FROM monster WHERE name = 'Pidgeot'), (SELECT id FROM type WHERE name = 'Flying')),

       ((SELECT id FROM monster WHERE name = 'Rattata'), (SELECT id FROM type WHERE name = 'Normal')),
       ((SELECT id FROM monster WHERE name = 'Raticate'), (SELECT id FROM type WHERE name = 'Normal')),

       ((SELECT id FROM monster WHERE name = 'Spearow'), (SELECT id FROM type WHERE name = 'Normal')),
       ((SELECT id FROM monster WHERE name = 'Spearow'), (SELECT id FROM type WHERE name = 'Flying')),
       ((SELECT id FROM monster WHERE name = 'Fearow'), (SELECT id FROM type WHERE name = 'Normal')),
       ((SELECT id FROM monster WHERE name = 'Fearow'), (SELECT id FROM type WHERE name = 'Flying')),

       ((SELECT id FROM monster WHERE name = 'Ekans'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Arbok'), (SELECT id FROM type WHERE name = 'Poison')),

       ((SELECT id FROM monster WHERE name = 'Pikachu'), (SELECT id FROM type WHERE name = 'Electric')),
       ((SELECT id FROM monster WHERE name = 'Raichu'), (SELECT id FROM type WHERE name = 'Electric')),

       ((SELECT id FROM monster WHERE name = 'Sandshrew'), (SELECT id FROM type WHERE name = 'Ground')),
       ((SELECT id FROM monster WHERE name = 'Sandslash'), (SELECT id FROM type WHERE name = 'Ground')),

       ((SELECT id FROM monster WHERE name = 'Nidoran♀'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Nidorina'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Nidoqueen'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Nidoqueen'), (SELECT id FROM type WHERE name = 'Ground')),

       ((SELECT id FROM monster WHERE name = 'Nidoran♂'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Nidorino'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Nidoking'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Nidoking'), (SELECT id FROM type WHERE name = 'Ground')),

       ((SELECT id FROM monster WHERE name = 'Clefairy'), (SELECT id FROM type WHERE name = 'Normal')),
       ((SELECT id FROM monster WHERE name = 'Clefable'), (SELECT id FROM type WHERE name = 'Normal')),

       ((SELECT id FROM monster WHERE name = 'Vulpix'), (SELECT id FROM type WHERE name = 'Fire')),
       ((SELECT id FROM monster WHERE name = 'Ninetales'), (SELECT id FROM type WHERE name = 'Fire')),

       ((SELECT id FROM monster WHERE name = 'Jigglypuff'), (SELECT id FROM type WHERE name = 'Normal')),
       ((SELECT id FROM monster WHERE name = 'Wigglytuff'), (SELECT id FROM type WHERE name = 'Normal')),

       ((SELECT id FROM monster WHERE name = 'Zubat'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Zubat'), (SELECT id FROM type WHERE name = 'Flying')),
       ((SELECT id FROM monster WHERE name = 'Golbat'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Golbat'), (SELECT id FROM type WHERE name = 'Flying')),

       ((SELECT id FROM monster WHERE name = 'Oddish'), (SELECT id FROM type WHERE name = 'Grass')),
       ((SELECT id FROM monster WHERE name = 'Oddish'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Gloom'), (SELECT id FROM type WHERE name = 'Grass')),
       ((SELECT id FROM monster WHERE name = 'Gloom'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Vileplume'), (SELECT id FROM type WHERE name = 'Grass')),
       ((SELECT id FROM monster WHERE name = 'Vileplume'), (SELECT id FROM type WHERE name = 'Poison')),

       ((SELECT id FROM monster WHERE name = 'Paras'), (SELECT id FROM type WHERE name = 'Bug')),
       ((SELECT id FROM monster WHERE name = 'Paras'), (SELECT id FROM type WHERE name = 'Grass')),
       ((SELECT id FROM monster WHERE name = 'Parasect'), (SELECT id FROM type WHERE name = 'Bug')),
       ((SELECT id FROM monster WHERE name = 'Parasect'), (SELECT id FROM type WHERE name = 'Grass')),

       ((SELECT id FROM monster WHERE name = 'Venonat'), (SELECT id FROM type WHERE name = 'Bug')),
       ((SELECT id FROM monster WHERE name = 'Venonat'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Venomoth'), (SELECT id FROM type WHERE name = 'Bug')),
       ((SELECT id FROM monster WHERE name = 'Venomoth'), (SELECT id FROM type WHERE name = 'Poison')),

       ((SELECT id FROM monster WHERE name = 'Diglett'), (SELECT id FROM type WHERE name = 'Ground')),
       ((SELECT id FROM monster WHERE name = 'Dugtrio'), (SELECT id FROM type WHERE name = 'Ground')),

       ((SELECT id FROM monster WHERE name = 'Meowth'), (SELECT id FROM type WHERE name = 'Normal')),
       ((SELECT id FROM monster WHERE name = 'Persian'), (SELECT id FROM type WHERE name = 'Normal')),

       ((SELECT id FROM monster WHERE name = 'Psyduck'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Golduck'), (SELECT id FROM type WHERE name = 'Water')),

       ((SELECT id FROM monster WHERE name = 'Mankey'), (SELECT id FROM type WHERE name = 'Fighting')),
       ((SELECT id FROM monster WHERE name = 'Primeape'), (SELECT id FROM type WHERE name = 'Fighting')),

       ((SELECT id FROM monster WHERE name = 'Growlithe'), (SELECT id FROM type WHERE name = 'Fire')),
       ((SELECT id FROM monster WHERE name = 'Arcanine'), (SELECT id FROM type WHERE name = 'Fire')),

       ((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Poliwhirl'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Poliwrath'), (SELECT id FROM type WHERE name = 'Water')),

       ((SELECT id FROM monster WHERE name = 'Abra'), (SELECT id FROM type WHERE name = 'Psychic')),
       ((SELECT id FROM monster WHERE name = 'Kadabra'), (SELECT id FROM type WHERE name = 'Psychic')),
       ((SELECT id FROM monster WHERE name = 'Alakazam'), (SELECT id FROM type WHERE name = 'Psychic')),

       ((SELECT id FROM monster WHERE name = 'Machop'), (SELECT id FROM type WHERE name = 'Fighting')),
       ((SELECT id FROM monster WHERE name = 'Machoke'), (SELECT id FROM type WHERE name = 'Fighting')),
       ((SELECT id FROM monster WHERE name = 'Machamp'), (SELECT id FROM type WHERE name = 'Fighting')),

       ((SELECT id FROM monster WHERE name = 'Bellsprout'), (SELECT id FROM type WHERE name = 'Grass')),
       ((SELECT id FROM monster WHERE name = 'Bellsprout'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Weepinbell'), (SELECT id FROM type WHERE name = 'Grass')),
       ((SELECT id FROM monster WHERE name = 'Weepinbell'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Victreebel'), (SELECT id FROM type WHERE name = 'Grass')),
       ((SELECT id FROM monster WHERE name = 'Victreebel'), (SELECT id FROM type WHERE name = 'Poison')),

       ((SELECT id FROM monster WHERE name = 'Tentacool'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Tentacool'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Tentacruel'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Tentacruel'), (SELECT id FROM type WHERE name = 'Poison')),

       ((SELECT id FROM monster WHERE name = 'Geodude'), (SELECT id FROM type WHERE name = 'Rock')),
       ((SELECT id FROM monster WHERE name = 'Geodude'), (SELECT id FROM type WHERE name = 'Ground')),
       ((SELECT id FROM monster WHERE name = 'Graveler'), (SELECT id FROM type WHERE name = 'Rock')),
       ((SELECT id FROM monster WHERE name = 'Graveler'), (SELECT id FROM type WHERE name = 'Ground')),
       ((SELECT id FROM monster WHERE name = 'Golem'), (SELECT id FROM type WHERE name = 'Rock')),
       ((SELECT id FROM monster WHERE name = 'Golem'), (SELECT id FROM type WHERE name = 'Ground')),

       ((SELECT id FROM monster WHERE name = 'Ponyta'), (SELECT id FROM type WHERE name = 'Fire')),
       ((SELECT id FROM monster WHERE name = 'Rapidash'), (SELECT id FROM type WHERE name = 'Fire')),

       ((SELECT id FROM monster WHERE name = 'Slowpoke'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Slowpoke'), (SELECT id FROM type WHERE name = 'Psychic')),
       ((SELECT id FROM monster WHERE name = 'Slowbro'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Slowbro'), (SELECT id FROM type WHERE name = 'Psychic')),

       ((SELECT id FROM monster WHERE name = 'Magnemite'), (SELECT id FROM type WHERE name = 'Electric')),
       ((SELECT id FROM monster WHERE name = 'Magneton'), (SELECT id FROM type WHERE name = 'Electric')),

       ((SELECT id FROM monster WHERE name = 'Farfetch''d'), (SELECT id FROM type WHERE name = 'Normal')),
       ((SELECT id FROM monster WHERE name = 'Farfetch''d'), (SELECT id FROM type WHERE name = 'Flying')),

       ((SELECT id FROM monster WHERE name = 'Doduo'), (SELECT id FROM type WHERE name = 'Normal')),
       ((SELECT id FROM monster WHERE name = 'Doduo'), (SELECT id FROM type WHERE name = 'Flying')),
       ((SELECT id FROM monster WHERE name = 'Dodrio'), (SELECT id FROM type WHERE name = 'Normal')),
       ((SELECT id FROM monster WHERE name = 'Dodrio'), (SELECT id FROM type WHERE name = 'Flying')),

       ((SELECT id FROM monster WHERE name = 'Seel'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Dewgong'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Dewgong'), (SELECT id FROM type WHERE name = 'Ice')),

       ((SELECT id FROM monster WHERE name = 'Grimer'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Muk'), (SELECT id FROM type WHERE name = 'Poison')),

       ((SELECT id FROM monster WHERE name = 'Shellder'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Cloyster'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Cloyster'), (SELECT id FROM type WHERE name = 'Ice')),

       ((SELECT id FROM monster WHERE name = 'Gastly'), (SELECT id FROM type WHERE name = 'Ghost')),
       ((SELECT id FROM monster WHERE name = 'Gastly'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Haunter'), (SELECT id FROM type WHERE name = 'Ghost')),
       ((SELECT id FROM monster WHERE name = 'Haunter'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Gengar'), (SELECT id FROM type WHERE name = 'Ghost')),
       ((SELECT id FROM monster WHERE name = 'Gengar'), (SELECT id FROM type WHERE name = 'Poison')),

       ((SELECT id FROM monster WHERE name = 'Onix'), (SELECT id FROM type WHERE name = 'Rock')),
       ((SELECT id FROM monster WHERE name = 'Onix'), (SELECT id FROM type WHERE name = 'Ground')),

       ((SELECT id FROM monster WHERE name = 'Drowzee'), (SELECT id FROM type WHERE name = 'Psychic')),
       ((SELECT id FROM monster WHERE name = 'Hypno'), (SELECT id FROM type WHERE name = 'Psychic')),

       ((SELECT id FROM monster WHERE name = 'Krabby'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Kingler'), (SELECT id FROM type WHERE name = 'Water')),

       ((SELECT id FROM monster WHERE name = 'Voltorb'), (SELECT id FROM type WHERE name = 'Electric')),
       ((SELECT id FROM monster WHERE name = 'Electrode'), (SELECT id FROM type WHERE name = 'Electric')),

       ((SELECT id FROM monster WHERE name = 'Exeggcute'), (SELECT id FROM type WHERE name = 'Grass')),
       ((SELECT id FROM monster WHERE name = 'Exeggcute'), (SELECT id FROM type WHERE name = 'Psychic')),
       ((SELECT id FROM monster WHERE name = 'Exeggutor'), (SELECT id FROM type WHERE name = 'Grass')),
       ((SELECT id FROM monster WHERE name = 'Exeggutor'), (SELECT id FROM type WHERE name = 'Psychic')),

       ((SELECT id FROM monster WHERE name = 'Cubone'), (SELECT id FROM type WHERE name = 'Ground')),
       ((SELECT id FROM monster WHERE name = 'Marowak'), (SELECT id FROM type WHERE name = 'Ground')),

       ((SELECT id FROM monster WHERE name = 'Hitmonlee'), (SELECT id FROM type WHERE name = 'Fighting')),
       ((SELECT id FROM monster WHERE name = 'Hitmonchan'), (SELECT id FROM type WHERE name = 'Fighting')),
       ((SELECT id FROM monster WHERE name = 'Lickitung'), (SELECT id FROM type WHERE name = 'Normal')),

       ((SELECT id FROM monster WHERE name = 'Koffing'), (SELECT id FROM type WHERE name = 'Poison')),
       ((SELECT id FROM monster WHERE name = 'Weezing'), (SELECT id FROM type WHERE name = 'Poison')),

       ((SELECT id FROM monster WHERE name = 'Rhyhorn'), (SELECT id FROM type WHERE name = 'Ground')),
       ((SELECT id FROM monster WHERE name = 'Rhyhorn'), (SELECT id FROM type WHERE name = 'Rock')),
       ((SELECT id FROM monster WHERE name = 'Rhydon'), (SELECT id FROM type WHERE name = 'Ground')),
       ((SELECT id FROM monster WHERE name = 'Rhydon'), (SELECT id FROM type WHERE name = 'Rock')),

       ((SELECT id FROM monster WHERE name = 'Chansey'), (SELECT id FROM type WHERE name = 'Normal')),
       ((SELECT id FROM monster WHERE name = 'Tangela'), (SELECT id FROM type WHERE name = 'Grass')),
       ((SELECT id FROM monster WHERE name = 'Kangaskhan'), (SELECT id FROM type WHERE name = 'Normal')),

       ((SELECT id FROM monster WHERE name = 'Horsea'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Seadra'), (SELECT id FROM type WHERE name = 'Water')),

       ((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Seaking'), (SELECT id FROM type WHERE name = 'Water')),

       ((SELECT id FROM monster WHERE name = 'Staryu'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Starmie'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Starmie'), (SELECT id FROM type WHERE name = 'Psychic')),

       ((SELECT id FROM monster WHERE name = 'Mr. Mime'), (SELECT id FROM type WHERE name = 'Psychic')),
       ((SELECT id FROM monster WHERE name = 'Scyther'), (SELECT id FROM type WHERE name = 'Grass')),

       ((SELECT id FROM monster WHERE name = 'Jynx'), (SELECT id FROM type WHERE name = 'Ice')),
       ((SELECT id FROM monster WHERE name = 'Jynx'), (SELECT id FROM type WHERE name = 'Psychic')),

       ((SELECT id FROM monster WHERE name = 'Electabuzz'), (SELECT id FROM type WHERE name = 'Electric')),
       ((SELECT id FROM monster WHERE name = 'Magmar'), (SELECT id FROM type WHERE name = 'Fire')),
       ((SELECT id FROM monster WHERE name = 'Pinsir'), (SELECT id FROM type WHERE name = 'Bug')),
       ((SELECT id FROM monster WHERE name = 'Tauros'), (SELECT id FROM type WHERE name = 'Normal')),

       ((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Gyarados'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Gyarados'), (SELECT id FROM type WHERE name = 'Flying')),

       ((SELECT id FROM monster WHERE name = 'Lapras'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Ditto'), (SELECT id FROM type WHERE name = 'Normal')),

       ((SELECT id FROM monster WHERE name = 'Eevee'), (SELECT id FROM type WHERE name = 'Normal')),
       ((SELECT id FROM monster WHERE name = 'Vaporeon'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Jolteon'), (SELECT id FROM type WHERE name = 'Electric')),
       ((SELECT id FROM monster WHERE name = 'Flareon'), (SELECT id FROM type WHERE name = 'Fire')),

       ((SELECT id FROM monster WHERE name = 'Porygon'), (SELECT id FROM type WHERE name = 'Normal')),

       ((SELECT id FROM monster WHERE name = 'Omanyte'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Omanyte'), (SELECT id FROM type WHERE name = 'Rock')),
       ((SELECT id FROM monster WHERE name = 'Omastar'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Omastar'), (SELECT id FROM type WHERE name = 'Rock')),

       ((SELECT id FROM monster WHERE name = 'Kabuto'), (SELECT id FROM type WHERE name = 'Rock')),
       ((SELECT id FROM monster WHERE name = 'Kabuto'), (SELECT id FROM type WHERE name = 'Water')),
       ((SELECT id FROM monster WHERE name = 'Kabutops'), (SELECT id FROM type WHERE name = 'Rock')),
       ((SELECT id FROM monster WHERE name = 'Kabutops'), (SELECT id FROM type WHERE name = 'Water')),

       ((SELECT id FROM monster WHERE name = 'Aerodactyl'), (SELECT id FROM type WHERE name = 'Rock')),
       ((SELECT id FROM monster WHERE name = 'Aerodactyl'), (SELECT id FROM type WHERE name = 'Flying')),

       ((SELECT id FROM monster WHERE name = 'Snorlax'), (SELECT id FROM type WHERE name = 'Normal')),

       ((SELECT id FROM monster WHERE name = 'Articuno'), (SELECT id FROM type WHERE name = 'Flying')),
       ((SELECT id FROM monster WHERE name = 'Articuno'), (SELECT id FROM type WHERE name = 'Ice')),

       ((SELECT id FROM monster WHERE name = 'Zapdos'), (SELECT id FROM type WHERE name = 'Flying')),
       ((SELECT id FROM monster WHERE name = 'Zapdos'), (SELECT id FROM type WHERE name = 'Electric')),

       ((SELECT id FROM monster WHERE name = 'Moltres'), (SELECT id FROM type WHERE name = 'Flying')),
       ((SELECT id FROM monster WHERE name = 'Moltres'), (SELECT id FROM type WHERE name = 'Fire')),

       ((SELECT id FROM monster WHERE name = 'Dratini'), (SELECT id FROM type WHERE name = 'Dragon')),
       ((SELECT id FROM monster WHERE name = 'Dragonair'), (SELECT id FROM type WHERE name = 'Dragon')),
       ((SELECT id FROM monster WHERE name = 'Dragonite'), (SELECT id FROM type WHERE name = 'Dragon')),
       ((SELECT id FROM monster WHERE name = 'Dragonite'), (SELECT id FROM type WHERE name = 'Flying')),

       ((SELECT id FROM monster WHERE name = 'Mewtwo'), (SELECT id FROM type WHERE name = 'Psychic')),
       ((SELECT id FROM monster WHERE name = 'Mew'), (SELECT id FROM type WHERE name = 'Psychic'))
;
