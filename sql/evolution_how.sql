--- evolution_how table
CREATE TABLE IF NOT EXISTS evolution_how
(
    id
        integer
        constraint
            evolution_how_pk
        primary key autoincrement,
    how
        text
        not null
        check (how IN ('Level Up', 'Item', 'Trade')),
    level integer,
    item_id
        integer
        constraint
            monster_type_monster_id_fk
            references item (id)
);


INSERT INTO evolution_how (how, level, item_id) VALUES
    -- Caterpie => Metapod
    -- Weedle => Kakuna
    ('Level Up', 7, null),

    -- Metapod => Butterfree
    -- Kakuna => Beedrill
    ('Level Up', 10, null),

    -- Bulbasaur => Ivysaur
    -- Charmander => Charmeleon
    -- Squirtle => Wartortle
    -- Nidoran♀ => Nidorina
    -- Nidoran♂ => Nidorino
    -- Abra => Kadabra
    ('Level Up', 16, null),

    -- Pidgey => Pidgeotto
    ('Level Up', 18, null),

    -- Rattata => Raticate
    -- Spearow => Fearow
    -- Magikarp => Gyarados
    ('Level Up', 20, null),

    -- Oddish => Gloom
    -- Bellsprout => Weepinbell
    ('Level Up', 21, null),

    -- Ekans => Arbok
    -- Sandshrew => Sandslash
    -- Zubat => Golbat
    ('Level Up', 22, null),

    -- Paras => Parasect
    ('Level Up', 24, null),

    -- Poliwag => Poliwhirl
    -- Geodude => Graveler
    -- Gastly => Haunter
    ('Level Up', 25, null),

    -- Diglett => Dugtrio
    -- Drowzee => Hypno
    ('Level Up', 26, null),

    -- Meowth => Persian
    -- Mankey => Primeape
    -- Machop => Machoke
    -- Krabby => Kingler
    -- Cubone => Marowak
    ('Level Up', 28, null),

    -- Tentacool => Tentacruel
    -- Magnemite => Magneton
    -- Voltorb => Electrode
    -- Dratini => Dragonair
    ('Level Up', 30, null),

    -- Venonat => Venomoth
    -- Doduo => Dodrio
    ('Level Up', 31, null),

    -- Ivysaur => Venusaur
    -- Horsea => Seadra
    ('Level Up', 32, null),

    -- Psyduck => Golduck
    -- Goldeen => Seaking
    ('Level Up', 33, null),

    -- Seel => Dewgong
    ('Level Up', 34, null),

    -- Koffing => Weezing
    ('Level Up', 35, null),

    -- Charmeleon => Charizard
    -- Wartortle => Blastoise
    -- Pidgeotto => Pidgeot
    ('Level Up', 36, null),

    -- Slowpoke => Slowbro
    ('Level Up', 37, null),

    -- Grimer => Muk
    ('Level Up', 38, null),

    -- Ponyta => Rapidash
    -- Omanyte => Omastar
    -- Kabuto => Kabutops
    ('Level Up', 40, null),

    -- Rhyhorn => Rhydon
    ('Level Up', 42, null),

    -- Dragonair => Dragonite
    ('Level Up', 55, null),

    -- Pikachu => Raichu
    -- Eevee => Jolteon
    ('Item', null, (SELECT id FROM item WHERE name = 'Thunderstone')),

    -- Nidorina => Nidoqueen
    -- Nidorino => Nidoking
    -- Clefairy => Clefable
    -- Jigglypuff => Wigglytuff
    ('Item', null, (SELECT id FROM item WHERE name = 'Moon Stone')),

    -- Vulpix => Ninetailes
    -- Growlithe => Arcanine
    -- Eevee => Flareon
    ('Item', null, (SELECT id FROM item WHERE name = 'Fire Stone')),

    -- Gloom => Vileplume
    -- Weepinbell => Victreebell
    -- Exeggucte => Exeggutor
    ('Item', null, (SELECT id FROM item WHERE name = 'Leaf Stone')),

    -- Poliwhirl => Poliwrath
    -- Shellder => Cloyster
    -- Staryu => Starmie
    -- Eevee => Vaporeon
    ('Item', null, (SELECT id FROM item WHERE name = 'Water Stone')),

    -- Kadabra => Alakazam
    -- Machoke => Machamp
    -- Graveler => Golem
    -- Haunter => Gengar
    ('Trade', null, null);
