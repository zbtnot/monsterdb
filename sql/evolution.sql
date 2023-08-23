-- Evolution table
CREATE TABLE IF NOT EXISTS evolution
(
    id integer
        constraint evolution_pk
            primary key autoincrement,
    from_monster_id integer,
    to_monster_id   integer,
    constraint evolution_monster_id_id_fk
        foreign key (from_monster_id, to_monster_id) references monster (id, id)
);

INSERT INTO evolution (from_monster_id, to_monster_id)
VALUES
    ((SELECT id from monster WHERE name = 'Bulbasaur'),
     ((SELECT id from monster WHERE name = 'Ivysaur'))),
    ((SELECT id from monster WHERE name = 'Ivysaur'),
     ((SELECT id from monster WHERE name = 'Venusaur'))),

    ((SELECT id from monster WHERE name = 'Charmander'),
     ((SELECT id from monster WHERE name = 'Charmeleon'))),
    ((SELECT id from monster WHERE name = 'Charmeleon'),
     ((SELECT id from monster WHERE name = 'Charizard'))),

    ((SELECT id from monster WHERE name = 'Squirtle'),
     ((SELECT id from monster WHERE name = 'Wartortle'))),
    ((SELECT id from monster WHERE name = 'Wartortle'),
     ((SELECT id from monster WHERE name = 'Blastoise'))),

    ((SELECT id from monster WHERE name = 'Caterpie'),
     ((SELECT id from monster WHERE name = 'Metapod'))),
    ((SELECT id from monster WHERE name = 'Metapod'),
     ((SELECT id from monster WHERE name = 'Butterfree'))),

    ((SELECT id from monster WHERE name = 'Weedle'),
     ((SELECT id from monster WHERE name = 'Kakuna'))),
    ((SELECT id from monster WHERE name = 'Kakuna'),
     ((SELECT id from monster WHERE name = 'Beedrill'))),

    ((SELECT id from monster WHERE name = 'Pidgey'),
     ((SELECT id from monster WHERE name = 'Pidgeotto'))),
    ((SELECT id from monster WHERE name = 'Pidgeotto'),
     ((SELECT id from monster WHERE name = 'Pidgeot'))),

    ((SELECT id from monster WHERE name = 'Rattata'),
     ((SELECT id from monster WHERE name = 'Raticate'))),

    ((SELECT id from monster WHERE name = 'Spearow'),
     ((SELECT id from monster WHERE name = 'Fearow'))),

    ((SELECT id from monster WHERE name = 'Ekans'),
     ((SELECT id from monster WHERE name = 'Arbok'))),

    ((SELECT id from monster WHERE name = 'Pikachu'),
     ((SELECT id from monster WHERE name = 'Raichu'))),

    ((SELECT id from monster WHERE name = 'Sandshrew'),
     ((SELECT id from monster WHERE name = 'Sandslash'))),

    ((SELECT id from monster WHERE name = 'Nidoran♀'),
     ((SELECT id from monster WHERE name = 'Nidorina'))),
    ((SELECT id from monster WHERE name = 'Nidorina'),
     ((SELECT id from monster WHERE name = 'Nidoqueen'))),

    ((SELECT id from monster WHERE name = 'Nidoran♂'),
     ((SELECT id from monster WHERE name = 'Nidorino'))),
    ((SELECT id from monster WHERE name = 'Nidorino'),
     ((SELECT id from monster WHERE name = 'Nidoking'))),

    ((SELECT id from monster WHERE name = 'Clefairy'),
     ((SELECT id from monster WHERE name = 'Clefable'))),

    ((SELECT id from monster WHERE name = 'Vulpix'),
     ((SELECT id from monster WHERE name = 'Ninetales'))),

    ((SELECT id from monster WHERE name = 'Jigglypuff'),
     ((SELECT id from monster WHERE name = 'Wigglytuff'))),

    ((SELECT id from monster WHERE name = 'Zubat'),
     ((SELECT id from monster WHERE name = 'Golbat'))),

    ((SELECT id from monster WHERE name = 'Oddish'),
     ((SELECT id from monster WHERE name = 'Gloom'))),
    ((SELECT id from monster WHERE name = 'Gloom'),
     ((SELECT id from monster WHERE name = 'Vileplume'))),

    ((SELECT id from monster WHERE name = 'Paras'),
     ((SELECT id from monster WHERE name = 'Parasect'))),

    ((SELECT id from monster WHERE name = 'Venonat'),
     ((SELECT id from monster WHERE name = 'Venomoth'))),

    ((SELECT id from monster WHERE name = 'Diglett'),
     ((SELECT id from monster WHERE name = 'Dugtrio'))),

    ((SELECT id from monster WHERE name = 'Meowth'),
     ((SELECT id from monster WHERE name = 'Persian'))),

    ((SELECT id from monster WHERE name = 'Psyduck'),
     ((SELECT id from monster WHERE name = 'Golduck'))),

    ((SELECT id from monster WHERE name = 'Mankey'),
     ((SELECT id from monster WHERE name = 'Primeape'))),

    ((SELECT id from monster WHERE name = 'Growlithe'),
     ((SELECT id from monster WHERE name = 'Arcanine'))),

    ((SELECT id from monster WHERE name = 'Poliwag'),
     ((SELECT id from monster WHERE name = 'Poliwhirl'))),
    ((SELECT id from monster WHERE name = 'Poliwhirl'),
     ((SELECT id from monster WHERE name = 'Poliwrath'))),

    ((SELECT id from monster WHERE name = 'Abra'),
     ((SELECT id from monster WHERE name = 'Kadabra'))),
    ((SELECT id from monster WHERE name = 'Kadabra'),
     ((SELECT id from monster WHERE name = 'Alakazam'))),

    ((SELECT id from monster WHERE name = 'Machop'),
     ((SELECT id from monster WHERE name = 'Machoke'))),
    ((SELECT id from monster WHERE name = 'Machoke'),
     ((SELECT id from monster WHERE name = 'Machamp'))),

    ((SELECT id from monster WHERE name = 'Bellsprout'),
     ((SELECT id from monster WHERE name = 'Weepinbell'))),
    ((SELECT id from monster WHERE name = 'Weepinbell'),
     ((SELECT id from monster WHERE name = 'Victreebel'))),

    ((SELECT id from monster WHERE name = 'Tentacool'),
     ((SELECT id from monster WHERE name = 'Tentacruel'))),

    ((SELECT id from monster WHERE name = 'Geodude'),
     ((SELECT id from monster WHERE name = 'Graveler'))),
    ((SELECT id from monster WHERE name = 'Graveler'),
     ((SELECT id from monster WHERE name = 'Golem'))),

    ((SELECT id from monster WHERE name = 'Ponyta'),
     ((SELECT id from monster WHERE name = 'Rapidash'))),

    ((SELECT id from monster WHERE name = 'Slowpoke'),
     ((SELECT id from monster WHERE name = 'Slowbro'))),

    ((SELECT id from monster WHERE name = 'Magnemite'),
     ((SELECT id from monster WHERE name = 'Magneton'))),

    ((SELECT id from monster WHERE name = 'Magnemite'),
     ((SELECT id from monster WHERE name = 'Magneton'))),

    ((SELECT id from monster WHERE name = 'Doduo'),
     ((SELECT id from monster WHERE name = 'Dodrio'))),

    ((SELECT id from monster WHERE name = 'Seel'),
     ((SELECT id from monster WHERE name = 'Dewgong'))),

    ((SELECT id from monster WHERE name = 'Grimer'),
     ((SELECT id from monster WHERE name = 'Muk'))),

    ((SELECT id from monster WHERE name = 'Shellder'),
     ((SELECT id from monster WHERE name = 'Cloyster'))),

    ((SELECT id from monster WHERE name = 'Gastly'),
     ((SELECT id from monster WHERE name = 'Haunter'))),
    ((SELECT id from monster WHERE name = 'Haunter'),
     ((SELECT id from monster WHERE name = 'Gengar'))),

    ((SELECT id from monster WHERE name = 'Drowzee'),
     ((SELECT id from monster WHERE name = 'Hypno'))),

    ((SELECT id from monster WHERE name = 'Krabby'),
     ((SELECT id from monster WHERE name = 'Kingler'))),

    ((SELECT id from monster WHERE name = 'Voltorb'),
     ((SELECT id from monster WHERE name = 'Electrode'))),

    ((SELECT id from monster WHERE name = 'Exeggcute'),
     ((SELECT id from monster WHERE name = 'Exeggutor'))),

    ((SELECT id from monster WHERE name = 'Cubone'),
     ((SELECT id from monster WHERE name = 'Marowak'))),

    ((SELECT id from monster WHERE name = 'Koffing'),
     ((SELECT id from monster WHERE name = 'Weezing'))),

    ((SELECT id from monster WHERE name = 'Rhyhorn'),
     ((SELECT id from monster WHERE name = 'Rhydon'))),

    ((SELECT id from monster WHERE name = 'Horsea'),
     ((SELECT id from monster WHERE name = 'Seadra'))),

    ((SELECT id from monster WHERE name = 'Goldeen'),
     ((SELECT id from monster WHERE name = 'Seaking'))),

    ((SELECT id from monster WHERE name = 'Staryu'),
     ((SELECT id from monster WHERE name = 'Starmie'))),

    ((SELECT id from monster WHERE name = 'Magikarp'),
     ((SELECT id from monster WHERE name = 'Gyarados'))),

    ((SELECT id from monster WHERE name = 'Eevee'),
     ((SELECT id from monster WHERE name = 'Vaporeon'))),
    ((SELECT id from monster WHERE name = 'Eevee'),
     ((SELECT id from monster WHERE name = 'Jolteon'))),
    ((SELECT id from monster WHERE name = 'Eevee'),
     ((SELECT id from monster WHERE name = 'Flareon'))),

    ((SELECT id from monster WHERE name = 'Omanyte'),
     ((SELECT id from monster WHERE name = 'Omastar'))),

    ((SELECT id from monster WHERE name = 'Kabuto'),
     ((SELECT id from monster WHERE name = 'Kabutops'))),

    ((SELECT id from monster WHERE name = 'Dratini'),
     ((SELECT id from monster WHERE name = 'Dragonair'))),
    ((SELECT id from monster WHERE name = 'Dragonair'),
     ((SELECT id from monster WHERE name = 'Dragonite')))
;
