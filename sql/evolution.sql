-- evolution table
CREATE TABLE IF NOT EXISTS evolution
(
    id integer
        constraint evolution_pk
        primary key autoincrement,
    from_monster_id integer,
    to_monster_id   integer,
    evolution_how_id integer,
    constraint evolution_monster_id_id_fk
        foreign key (from_monster_id, to_monster_id) references monster (id, id),
    constraint evolution_how_id_fk
        foreign key (evolution_how_id) references evolution_how (id)
);

INSERT INTO evolution (from_monster_id, to_monster_id, evolution_how_id)
VALUES
    (
        (SELECT id from monster WHERE name = 'Bulbasaur'),
        (SELECT id from monster WHERE name = 'Ivysaur'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 16)
    ),
    (
        (SELECT id from monster WHERE name = 'Ivysaur'),
        (SELECT id from monster WHERE name = 'Venusaur'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 32)
    ),

    (
        (SELECT id from monster WHERE name = 'Charmander'),
        (SELECT id from monster WHERE name = 'Charmeleon'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 16)
    ),
    (
        (SELECT id from monster WHERE name = 'Charmeleon'),
        (SELECT id from monster WHERE name = 'Charizard'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 36)
    ),

    (
        (SELECT id from monster WHERE name = 'Squirtle'),
        (SELECT id from monster WHERE name = 'Wartortle'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 16)
    ),
    (
        (SELECT id from monster WHERE name = 'Wartortle'),
        (SELECT id from monster WHERE name = 'Blastoise'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 36)
    ),

    (
        (SELECT id from monster WHERE name = 'Caterpie'),
        (SELECT id from monster WHERE name = 'Metapod'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 7)
    ),
    (
        (SELECT id from monster WHERE name = 'Metapod'),
        (SELECT id from monster WHERE name = 'Butterfree'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 10)
    ),

    (
        (SELECT id from monster WHERE name = 'Weedle'),
        (SELECT id from monster WHERE name = 'Kakuna'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 7)
    ),
    (
        (SELECT id from monster WHERE name = 'Kakuna'),
        (SELECT id from monster WHERE name = 'Beedrill'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 10)
    ),

    (
        (SELECT id from monster WHERE name = 'Pidgey'),
        (SELECT id from monster WHERE name = 'Pidgeotto'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 18)
    ),
    (
        (SELECT id from monster WHERE name = 'Pidgeotto'),
        (SELECT id from monster WHERE name = 'Pidgeot'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 36)
    ),

    (
        (SELECT id from monster WHERE name = 'Rattata'),
        (SELECT id from monster WHERE name = 'Raticate'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 20)
    ),


    (
        (SELECT id from monster WHERE name = 'Spearow'),
        (SELECT id from monster WHERE name = 'Fearow'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 20)
    ),

    (
        (SELECT id from monster WHERE name = 'Ekans'),
        (SELECT id from monster WHERE name = 'Arbok'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 22)
    ),

    (
        (SELECT id from monster WHERE name = 'Pikachu'),
        (SELECT id from monster WHERE name = 'Raichu'),
        (SELECT id FROM evolution_how WHERE how = 'Item'
            AND item_id = (SELECT id FROM item WHERE name = 'Thunderstone')
        )
    ),

    (
        (SELECT id from monster WHERE name = 'Sandshrew'),
        (SELECT id from monster WHERE name = 'Sandslash'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 22)
    ),

    (
        (SELECT id from monster WHERE name = 'Nidoran♀'),
        (SELECT id from monster WHERE name = 'Nidorina'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 16)
    ),
    (
        (SELECT id from monster WHERE name = 'Nidorina'),
        (SELECT id from monster WHERE name = 'Nidoqueen'),
        (SELECT id FROM evolution_how WHERE how = 'Item'
            AND item_id = (SELECT id FROM item WHERE name = 'Moon Stone')
        )
    ),

    (
        (SELECT id from monster WHERE name = 'Nidoran♂'),
        (SELECT id from monster WHERE name = 'Nidorino'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 16)
    ),
    (
        (SELECT id from monster WHERE name = 'Nidorino'),
        (SELECT id from monster WHERE name = 'Nidoking'),
        (SELECT id FROM evolution_how WHERE how = 'Item'
            AND item_id = (SELECT id FROM item WHERE name = 'Moon Stone')
        )
    ),

    (
        (SELECT id from monster WHERE name = 'Clefairy'),
        (SELECT id from monster WHERE name = 'Clefable'),
        (SELECT id FROM evolution_how WHERE how = 'Item'
            AND item_id = (SELECT id FROM item WHERE name = 'Moon Stone')
        )
    ),

    (
        (SELECT id from monster WHERE name = 'Vulpix'),
        (SELECT id from monster WHERE name = 'Ninetales'),
        (SELECT id FROM evolution_how WHERE how = 'Item'
            AND item_id = (SELECT id FROM item WHERE name = 'Fire Stone')
        )
    ),

    (
        (SELECT id from monster WHERE name = 'Jigglypuff'),
        (SELECT id from monster WHERE name = 'Wigglytuff'),
        (SELECT id FROM evolution_how WHERE how = 'Item'
            AND item_id = (SELECT id FROM item WHERE name = 'Moon Stone')
        )
     ),

    (
        (SELECT id from monster WHERE name = 'Zubat'),
        (SELECT id from monster WHERE name = 'Golbat'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 22)
    ),

    (
        (SELECT id from monster WHERE name = 'Oddish'),
        (SELECT id from monster WHERE name = 'Gloom'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 22)
    ),
    (
        (SELECT id from monster WHERE name = 'Gloom'),
        (SELECT id from monster WHERE name = 'Vileplume'),
        (SELECT id FROM evolution_how WHERE how = 'Item'
            AND item_id = (SELECT id FROM item WHERE name = 'Leaf Stone')
        )
    ),

    (
        (SELECT id from monster WHERE name = 'Paras'),
        (SELECT id from monster WHERE name = 'Parasect'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 24)
    ),


    (
        (SELECT id from monster WHERE name = 'Venonat'),
        (SELECT id from monster WHERE name = 'Venomoth'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 31)
    ),

    (
        (SELECT id from monster WHERE name = 'Diglett'),
        (SELECT id from monster WHERE name = 'Dugtrio'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 26)
    ),

    (
        (SELECT id from monster WHERE name = 'Meowth'),
        (SELECT id from monster WHERE name = 'Persian'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 28)
    ),

    (
        (SELECT id from monster WHERE name = 'Psyduck'),
        (SELECT id from monster WHERE name = 'Golduck'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 33)
    ),

    (
        (SELECT id from monster WHERE name = 'Mankey'),
        (SELECT id from monster WHERE name = 'Primeape'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 28)
    ),

    (
        (SELECT id from monster WHERE name = 'Growlithe'),
        (SELECT id from monster WHERE name = 'Arcanine'),
        (SELECT id FROM evolution_how WHERE how = 'Item'
            AND item_id = (SELECT id FROM item WHERE name = 'Fire Stone')
        )
    ),

    (
        (SELECT id from monster WHERE name = 'Poliwag'),
        (SELECT id from monster WHERE name = 'Poliwhirl'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 25)
    ),
    (
        (SELECT id from monster WHERE name = 'Poliwhirl'),
        (SELECT id from monster WHERE name = 'Poliwrath'),
        (SELECT id FROM evolution_how WHERE how = 'Item'
            AND item_id = (SELECT id FROM item WHERE name = 'Water Stone')
        )
    ),

    (
        (SELECT id from monster WHERE name = 'Abra'),
        (SELECT id from monster WHERE name = 'Kadabra'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 16)
    ),
    (
        (SELECT id from monster WHERE name = 'Kadabra'),
        (SELECT id from monster WHERE name = 'Alakazam'),
        (SELECT id FROM evolution_how WHERE how = 'Trade')
    ),

    (
        (SELECT id from monster WHERE name = 'Machop'),
        (SELECT id from monster WHERE name = 'Machoke'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 28)
    ),
    (
        (SELECT id from monster WHERE name = 'Machoke'),
        (SELECT id from monster WHERE name = 'Machamp'),
        (SELECT id FROM evolution_how WHERE how = 'Trade')
    ),

    (
        (SELECT id from monster WHERE name = 'Bellsprout'),
        (SELECT id from monster WHERE name = 'Weepinbell'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 21)
    ),
    (
        (SELECT id from monster WHERE name = 'Weepinbell'),
        (SELECT id from monster WHERE name = 'Victreebel'),
        (SELECT id FROM evolution_how WHERE how = 'Item' AND item_id = (SELECT id FROM item WHERE name = 'Leaf Stone'))
    ),

    (
        (SELECT id from monster WHERE name = 'Tentacool'),
        (SELECT id from monster WHERE name = 'Tentacruel'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 30)
    ),

    (
        (SELECT id from monster WHERE name = 'Geodude'),
        (SELECT id from monster WHERE name = 'Graveler'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 25)
    ),
    (
        (SELECT id from monster WHERE name = 'Graveler'),
        (SELECT id from monster WHERE name = 'Golem'),
        (SELECT id FROM evolution_how WHERE how = 'Trade')
    ),

    (
        (SELECT id from monster WHERE name = 'Ponyta'),
        (SELECT id from monster WHERE name = 'Rapidash'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 40)
    ),

    (
        (SELECT id from monster WHERE name = 'Slowpoke'),
        (SELECT id from monster WHERE name = 'Slowbro'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 37)
    ),

    (
        (SELECT id from monster WHERE name = 'Magnemite'),
        (SELECT id from monster WHERE name = 'Magneton'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 30)
    ),

    (
        (SELECT id from monster WHERE name = 'Doduo'),
        (SELECT id from monster WHERE name = 'Dodrio'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 31)
    ),

    (
        (SELECT id from monster WHERE name = 'Seel'),
        (SELECT id from monster WHERE name = 'Dewgong'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 34)
    ),

    (
        (SELECT id from monster WHERE name = 'Grimer'),
        (SELECT id from monster WHERE name = 'Muk'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 38)
    ),
    (
        (SELECT id from monster WHERE name = 'Shellder'),
        (SELECT id from monster WHERE name = 'Cloyster'),
        (SELECT id FROM evolution_how WHERE how = 'Item'
            AND item_id = (SELECT id FROM item WHERE name = 'Water Stone')
        )
    ),

    (
        (SELECT id from monster WHERE name = 'Gastly'),
        (SELECT id from monster WHERE name = 'Haunter'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 25)
    ),
    (
        (SELECT id from monster WHERE name = 'Haunter'),
        (SELECT id from monster WHERE name = 'Gengar'),
        (SELECT id FROM evolution_how WHERE how = 'Trade')
    ),

    (
        (SELECT id from monster WHERE name = 'Drowzee'),
        (SELECT id from monster WHERE name = 'Hypno'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 26)
    ),

    (
        (SELECT id from monster WHERE name = 'Krabby'),
        (SELECT id from monster WHERE name = 'Kingler'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 28)
    ),

    (
        (SELECT id from monster WHERE name = 'Voltorb'),
        (SELECT id from monster WHERE name = 'Electrode'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 30)
    ),

    (
        (SELECT id from monster WHERE name = 'Exeggcute'),
        (SELECT id from monster WHERE name = 'Exeggutor'),
        (SELECT id FROM evolution_how WHERE how = 'Item'
            AND item_id = (SELECT id FROM item WHERE name = 'Leaf Stone')
        )
    ),

    (
        (SELECT id from monster WHERE name = 'Cubone'),
        (SELECT id from monster WHERE name = 'Marowak'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 28)
    ),

    (
        (SELECT id from monster WHERE name = 'Koffing'),
        (SELECT id from monster WHERE name = 'Weezing'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 35)
    ),

    (
        (SELECT id from monster WHERE name = 'Rhyhorn'),
        (SELECT id from monster WHERE name = 'Rhydon'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 42)
    ),

    (
        (SELECT id from monster WHERE name = 'Horsea'),
        (SELECT id from monster WHERE name = 'Seadra'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 32)
    ),

    (
        (SELECT id from monster WHERE name = 'Goldeen'),
        (SELECT id from monster WHERE name = 'Seaking'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 33)
    ),

    (
        (SELECT id from monster WHERE name = 'Staryu'),
        (SELECT id from monster WHERE name = 'Starmie'),
        (SELECT id FROM evolution_how WHERE how = 'Item'
            AND item_id = (SELECT id FROM item WHERE name = 'Water Stone')
        )
     ),

    (
        (SELECT id from monster WHERE name = 'Magikarp'),
        (SELECT id from monster WHERE name = 'Gyarados'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 20)
    ),

    (
        (SELECT id from monster WHERE name = 'Eevee'),
        (SELECT id from monster WHERE name = 'Vaporeon'),
        (SELECT id FROM evolution_how WHERE how = 'Item'
            AND item_id = (SELECT id FROM item WHERE name = 'Water Stone')
        )
    ),
    (
        (SELECT id from monster WHERE name = 'Eevee'),
        (SELECT id from monster WHERE name = 'Jolteon'),
        (SELECT id FROM evolution_how WHERE how = 'Item'
            AND item_id = (SELECT id FROM item WHERE name = 'Thunderstone')
        )
    ),
    (
        (SELECT id from monster WHERE name = 'Eevee'),
        (SELECT id from monster WHERE name = 'Flareon'),
        (SELECT id FROM evolution_how WHERE how = 'Item'
            AND item_id = (SELECT id FROM item WHERE name = 'Fire Stone')
        )
    ),

    (
        (SELECT id from monster WHERE name = 'Omanyte'),
        (SELECT id from monster WHERE name = 'Omastar'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 40)
    ),

    (
        (SELECT id from monster WHERE name = 'Kabuto'),
        (SELECT id from monster WHERE name = 'Kabutops'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 40)
    ),

    (
        (SELECT id from monster WHERE name = 'Dratini'),
        (SELECT id from monster WHERE name = 'Dragonair'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 30)
    ),
    (
        (SELECT id from monster WHERE name = 'Dragonair'),
        (SELECT id from monster WHERE name = 'Dragonite'),
        (SELECT id FROM evolution_how WHERE how = 'Level Up' AND level = 55)
    )
;
