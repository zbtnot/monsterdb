-- monster_location table
CREATE TABLE IF NOT EXISTS monster_location (
    id INTEGER
        CONSTRAINT monster_location_pk PRIMARY KEY AUTOINCREMENT,
    monster_id INTEGER NOT NULL
        CONSTRAINT monster_id_fk REFERENCES monster,
    location_id INTEGER NOT NULL
        CONSTRAINT location_id_fk REFERENCES location
);

INSERT INTO monster_location (monster_id, location_id) VALUES
((SELECT id FROM monster WHERE name = 'Bulbasaur'), (SELECT id FROM location WHERE name = 'Pallet Town')),
((SELECT id FROM monster WHERE name = 'Charmander'), (SELECT id FROM location WHERE name = 'Pallet Town')),
((SELECT id FROM monster WHERE name = 'Squirtle'), (SELECT id FROM location WHERE name = 'Pallet Town')),

((SELECT id FROM monster WHERE name = 'Caterpie'), (SELECT id FROM location WHERE name = 'Route 2')),
((SELECT id FROM monster WHERE name = 'Caterpie'), (SELECT id FROM location WHERE name = 'Route 24')),
((SELECT id FROM monster WHERE name = 'Caterpie'), (SELECT id FROM location WHERE name = 'Route 25')),
((SELECT id FROM monster WHERE name = 'Caterpie'), (SELECT id FROM location WHERE name = 'Viridian Forest')),

((SELECT id FROM monster WHERE name = 'Metapod'), (SELECT id FROM location WHERE name = 'Route 24')),
((SELECT id FROM monster WHERE name = 'Metapod'), (SELECT id FROM location WHERE name = 'Route 25')),
((SELECT id FROM monster WHERE name = 'Metapod'), (SELECT id FROM location WHERE name = 'Viridian Forest')),

((SELECT id FROM monster WHERE name = 'Weedle'), (SELECT id FROM location WHERE name = 'Route 2')),
((SELECT id FROM monster WHERE name = 'Weedle'), (SELECT id FROM location WHERE name = 'Route 24')),
((SELECT id FROM monster WHERE name = 'Weedle'), (SELECT id FROM location WHERE name = 'Route 25')),
((SELECT id FROM monster WHERE name = 'Weedle'), (SELECT id FROM location WHERE name = 'Viridian Forest')),

((SELECT id FROM monster WHERE name = 'Kakuna'), (SELECT id FROM location WHERE name = 'Route 24')),
((SELECT id FROM monster WHERE name = 'Kakuna'), (SELECT id FROM location WHERE name = 'Route 25')),
((SELECT id FROM monster WHERE name = 'Kakuna'), (SELECT id FROM location WHERE name = 'Viridian Forest')),

((SELECT id FROM monster WHERE name = 'Pidgey'), (SELECT id FROM location WHERE name = 'Route 1')),
((SELECT id FROM monster WHERE name = 'Pidgey'), (SELECT id FROM location WHERE name = 'Route 2')),
((SELECT id FROM monster WHERE name = 'Pidgey'), (SELECT id FROM location WHERE name = 'Route 3')),
((SELECT id FROM monster WHERE name = 'Pidgey'), (SELECT id FROM location WHERE name = 'Route 5')),
((SELECT id FROM monster WHERE name = 'Pidgey'), (SELECT id FROM location WHERE name = 'Route 6')),
((SELECT id FROM monster WHERE name = 'Pidgey'), (SELECT id FROM location WHERE name = 'Route 7')),
((SELECT id FROM monster WHERE name = 'Pidgey'), (SELECT id FROM location WHERE name = 'Route 8')),
((SELECT id FROM monster WHERE name = 'Pidgey'), (SELECT id FROM location WHERE name = 'Route 12')),
((SELECT id FROM monster WHERE name = 'Pidgey'), (SELECT id FROM location WHERE name = 'Route 13')),
((SELECT id FROM monster WHERE name = 'Pidgey'), (SELECT id FROM location WHERE name = 'Route 14')),
((SELECT id FROM monster WHERE name = 'Pidgey'), (SELECT id FROM location WHERE name = 'Route 15')),
((SELECT id FROM monster WHERE name = 'Pidgey'), (SELECT id FROM location WHERE name = 'Route 21')),
((SELECT id FROM monster WHERE name = 'Pidgey'), (SELECT id FROM location WHERE name = 'Route 24')),
((SELECT id FROM monster WHERE name = 'Pidgey'), (SELECT id FROM location WHERE name = 'Route 25')),

((SELECT id FROM monster WHERE name = 'Pidgeotto'), (SELECT id FROM location WHERE name = 'Route 14')),
((SELECT id FROM monster WHERE name = 'Pidgeotto'), (SELECT id FROM location WHERE name = 'Route 15')),
((SELECT id FROM monster WHERE name = 'Pidgeotto'), (SELECT id FROM location WHERE name = 'Route 21')),

((SELECT id FROM monster WHERE name = 'Rattata'), (SELECT id FROM location WHERE name = 'Route 1')),
((SELECT id FROM monster WHERE name = 'Rattata'), (SELECT id FROM location WHERE name = 'Route 2')),
((SELECT id FROM monster WHERE name = 'Rattata'), (SELECT id FROM location WHERE name = 'Route 4')),
((SELECT id FROM monster WHERE name = 'Rattata'), (SELECT id FROM location WHERE name = 'Route 9')),
((SELECT id FROM monster WHERE name = 'Rattata'), (SELECT id FROM location WHERE name = 'Route 16')),
((SELECT id FROM monster WHERE name = 'Rattata'), (SELECT id FROM location WHERE name = 'Route 21')),
((SELECT id FROM monster WHERE name = 'Rattata'), (SELECT id FROM location WHERE name = 'Route 22')),

((SELECT id FROM monster WHERE name = 'Raticate'), (SELECT id FROM location WHERE name = 'Route 16')),
((SELECT id FROM monster WHERE name = 'Raticate'), (SELECT id FROM location WHERE name = 'Route 17')),
((SELECT id FROM monster WHERE name = 'Raticate'), (SELECT id FROM location WHERE name = 'Route 18')),
((SELECT id FROM monster WHERE name = 'Raticate'), (SELECT id FROM location WHERE name = 'Route 21')),

((SELECT id FROM monster WHERE name = 'Spearow'), (SELECT id FROM location WHERE name = 'Route 3')),
((SELECT id FROM monster WHERE name = 'Spearow'), (SELECT id FROM location WHERE name = 'Route 4')),
((SELECT id FROM monster WHERE name = 'Spearow'), (SELECT id FROM location WHERE name = 'Route 9')),
((SELECT id FROM monster WHERE name = 'Spearow'), (SELECT id FROM location WHERE name = 'Route 10')),
((SELECT id FROM monster WHERE name = 'Spearow'), (SELECT id FROM location WHERE name = 'Route 11')),
((SELECT id FROM monster WHERE name = 'Spearow'), (SELECT id FROM location WHERE name = 'Route 16')),
((SELECT id FROM monster WHERE name = 'Spearow'), (SELECT id FROM location WHERE name = 'Route 17')),
((SELECT id FROM monster WHERE name = 'Spearow'), (SELECT id FROM location WHERE name = 'Route 18')),
((SELECT id FROM monster WHERE name = 'Spearow'), (SELECT id FROM location WHERE name = 'Route 22')),
((SELECT id FROM monster WHERE name = 'Spearow'), (SELECT id FROM location WHERE name = 'Route 23')),

((SELECT id FROM monster WHERE name = 'Fearow'), (SELECT id FROM location WHERE name = 'Route 17')),
((SELECT id FROM monster WHERE name = 'Fearow'), (SELECT id FROM location WHERE name = 'Route 18')),
((SELECT id FROM monster WHERE name = 'Fearow'), (SELECT id FROM location WHERE name = 'Route 23')),

((SELECT id FROM monster WHERE name = 'Ekans'), (SELECT id FROM location WHERE name = 'Route 4')),
((SELECT id FROM monster WHERE name = 'Ekans'), (SELECT id FROM location WHERE name = 'Route 8')),
((SELECT id FROM monster WHERE name = 'Ekans'), (SELECT id FROM location WHERE name = 'Route 9')),
((SELECT id FROM monster WHERE name = 'Ekans'), (SELECT id FROM location WHERE name = 'Route 10')),
((SELECT id FROM monster WHERE name = 'Ekans'), (SELECT id FROM location WHERE name = 'Route 11')),
((SELECT id FROM monster WHERE name = 'Ekans'), (SELECT id FROM location WHERE name = 'Route 23')),

((SELECT id FROM monster WHERE name = 'Arbok'), (SELECT id FROM location WHERE name = 'Route 23')),
((SELECT id FROM monster WHERE name = 'Arbok'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),

((SELECT id FROM monster WHERE name = 'Pikachu'), (SELECT id FROM location WHERE name = 'Viridian Forest')),
((SELECT id FROM monster WHERE name = 'Pikachu'), (SELECT id FROM location WHERE name = 'Power Plant')),

((SELECT id FROM monster WHERE name = 'Raichu'), (SELECT id FROM location WHERE name = 'Viridian Forest')),
((SELECT id FROM monster WHERE name = 'Raichu'), (SELECT id FROM location WHERE name = 'Power Plant')),

((SELECT id FROM monster WHERE name = 'Sandshrew'), (SELECT id FROM location WHERE name = 'Route 4')),
((SELECT id FROM monster WHERE name = 'Sandshrew'), (SELECT id FROM location WHERE name = 'Route 8')),
((SELECT id FROM monster WHERE name = 'Sandshrew'), (SELECT id FROM location WHERE name = 'Route 9')),
((SELECT id FROM monster WHERE name = 'Sandshrew'), (SELECT id FROM location WHERE name = 'Route 10')),
((SELECT id FROM monster WHERE name = 'Sandshrew'), (SELECT id FROM location WHERE name = 'Route 11')),
((SELECT id FROM monster WHERE name = 'Sandshrew'), (SELECT id FROM location WHERE name = 'Route 23')),

((SELECT id FROM monster WHERE name = 'Sandslash'), (SELECT id FROM location WHERE name = 'Route 23')),
((SELECT id FROM monster WHERE name = 'Sandslash'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),

((SELECT id FROM monster WHERE name = 'Nidoran♀'), (SELECT id FROM location WHERE name = 'Route 22')),
((SELECT id FROM monster WHERE name = 'Nidoran♀'), (SELECT id FROM location WHERE name = 'Safari Zone')),
((SELECT id FROM monster WHERE name = 'Nidoran♀'), (SELECT id FROM location WHERE name = 'Underground Path (North)')),
((SELECT id FROM monster WHERE name = 'Nidoran♀'), (SELECT id FROM location WHERE name = 'Underground Path (South)')),

((SELECT id FROM monster WHERE name = 'Nidorina'), (SELECT id FROM location WHERE name = 'Safari Zone')),
((SELECT id FROM monster WHERE name = 'Nidorina'), (SELECT id FROM location WHERE name = 'Celadon City')),
((SELECT id FROM monster WHERE name = 'Nidorina'), (SELECT id FROM location WHERE name = 'Route 11')),

((SELECT id FROM monster WHERE name = 'Nidoran♂'), (SELECT id FROM location WHERE name = 'Route 22')),
((SELECT id FROM monster WHERE name = 'Nidoran♂'), (SELECT id FROM location WHERE name = 'Safari Zone')),
((SELECT id FROM monster WHERE name = 'Nidoran♂'), (SELECT id FROM location WHERE name = 'Underground Path (North)')),
((SELECT id FROM monster WHERE name = 'Nidoran♂'), (SELECT id FROM location WHERE name = 'Underground Path (South)')),

((SELECT id FROM monster WHERE name = 'Nidorino'), (SELECT id FROM location WHERE name = 'Safari Zone')),
((SELECT id FROM monster WHERE name = 'Nidorino'), (SELECT id FROM location WHERE name = 'Celadon City')),

((SELECT id FROM monster WHERE name = 'Clefairy'), (SELECT id FROM location WHERE name = 'Mt. Moon')),
((SELECT id FROM monster WHERE name = 'Clefairy'), (SELECT id FROM location WHERE name = 'Celadon City')),

((SELECT id FROM monster WHERE name = 'Vulpix'), (SELECT id FROM location WHERE name = 'Route 7')),
((SELECT id FROM monster WHERE name = 'Vulpix'), (SELECT id FROM location WHERE name = 'Route 8')),
((SELECT id FROM monster WHERE name = 'Vulpix'), (SELECT id FROM location WHERE name = 'Pokemon Mansion')),

((SELECT id FROM monster WHERE name = 'Jigglypuff'), (SELECT id FROM location WHERE name = 'Route 3')),

((SELECT id FROM monster WHERE name = 'Wigglytuff'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),

((SELECT id FROM monster WHERE name = 'Zubat'), (SELECT id FROM location WHERE name = 'Mt. Moon')),
((SELECT id FROM monster WHERE name = 'Zubat'), (SELECT id FROM location WHERE name = 'Rock Tunnel')),
((SELECT id FROM monster WHERE name = 'Zubat'), (SELECT id FROM location WHERE name = 'Seafoam Islands')),
((SELECT id FROM monster WHERE name = 'Zubat'), (SELECT id FROM location WHERE name = 'Victory Road')),

((SELECT id FROM monster WHERE name = 'Golbat'), (SELECT id FROM location WHERE name = 'Seafoam Islands')),
((SELECT id FROM monster WHERE name = 'Golbat'), (SELECT id FROM location WHERE name = 'Victory Road')),
((SELECT id FROM monster WHERE name = 'Golbat'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),

((SELECT id FROM monster WHERE name = 'Oddish'), (SELECT id FROM location WHERE name = 'Route 5')),
((SELECT id FROM monster WHERE name = 'Oddish'), (SELECT id FROM location WHERE name = 'Route 6')),
((SELECT id FROM monster WHERE name = 'Oddish'), (SELECT id FROM location WHERE name = 'Route 7')),
((SELECT id FROM monster WHERE name = 'Oddish'), (SELECT id FROM location WHERE name = 'Route 12')),
((SELECT id FROM monster WHERE name = 'Oddish'), (SELECT id FROM location WHERE name = 'Route 13')),
((SELECT id FROM monster WHERE name = 'Oddish'), (SELECT id FROM location WHERE name = 'Route 14')),
((SELECT id FROM monster WHERE name = 'Oddish'), (SELECT id FROM location WHERE name = 'Route 15')),
((SELECT id FROM monster WHERE name = 'Oddish'), (SELECT id FROM location WHERE name = 'Route 24')),
((SELECT id FROM monster WHERE name = 'Oddish'), (SELECT id FROM location WHERE name = 'Route 25')),

((SELECT id FROM monster WHERE name = 'Gloom'), (SELECT id FROM location WHERE name = 'Route 12')),
((SELECT id FROM monster WHERE name = 'Gloom'), (SELECT id FROM location WHERE name = 'Route 13')),
((SELECT id FROM monster WHERE name = 'Gloom'), (SELECT id FROM location WHERE name = 'Route 14')),
((SELECT id FROM monster WHERE name = 'Gloom'), (SELECT id FROM location WHERE name = 'Route 15')),

((SELECT id FROM monster WHERE name = 'Paras'), (SELECT id FROM location WHERE name = 'Mt. Moon')),
((SELECT id FROM monster WHERE name = 'Paras'), (SELECT id FROM location WHERE name = 'Safari Zone')),

((SELECT id FROM monster WHERE name = 'Parasect'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),
((SELECT id FROM monster WHERE name = 'Parasect'), (SELECT id FROM location WHERE name = 'Safari Zone')),

((SELECT id FROM monster WHERE name = 'Venonat'), (SELECT id FROM location WHERE name = 'Route 12')),
((SELECT id FROM monster WHERE name = 'Venonat'), (SELECT id FROM location WHERE name = 'Route 13')),
((SELECT id FROM monster WHERE name = 'Venonat'), (SELECT id FROM location WHERE name = 'Route 14')),
((SELECT id FROM monster WHERE name = 'Venonat'), (SELECT id FROM location WHERE name = 'Route 15')),
((SELECT id FROM monster WHERE name = 'Venonat'), (SELECT id FROM location WHERE name = 'Safari Zone')),

((SELECT id FROM monster WHERE name = 'Venomoth'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),
((SELECT id FROM monster WHERE name = 'Venomoth'), (SELECT id FROM location WHERE name = 'Safari Zone')),
((SELECT id FROM monster WHERE name = 'Venomoth'), (SELECT id FROM location WHERE name = 'Victory Road')),

((SELECT id FROM monster WHERE name = 'Diglett'), (SELECT id FROM location WHERE name = 'Diglett''s Cave')),

((SELECT id FROM monster WHERE name = 'Dugtrio'), (SELECT id FROM location WHERE name = 'Diglett''s Cave')),

((SELECT id FROM monster WHERE name = 'Meowth'), (SELECT id FROM location WHERE name = 'Route 5')),
((SELECT id FROM monster WHERE name = 'Meowth'), (SELECT id FROM location WHERE name = 'Route 6')),
((SELECT id FROM monster WHERE name = 'Meowth'), (SELECT id FROM location WHERE name = 'Route 7')),
((SELECT id FROM monster WHERE name = 'Meowth'), (SELECT id FROM location WHERE name = 'Route 8')),

((SELECT id FROM monster WHERE name = 'Psyduck'), (SELECT id FROM location WHERE name = 'Seafoam Islands')),
((SELECT id FROM monster WHERE name = 'Psyduck'), (SELECT id FROM location WHERE name = 'Route 24')),
((SELECT id FROM monster WHERE name = 'Psyduck'), (SELECT id FROM location WHERE name = 'Route 25')),
((SELECT id FROM monster WHERE name = 'Psyduck'), (SELECT id FROM location WHERE name = 'Cerulean City')),
((SELECT id FROM monster WHERE name = 'Psyduck'), (SELECT id FROM location WHERE name = 'Safari Zone')),

((SELECT id FROM monster WHERE name = 'Golduck'), (SELECT id FROM location WHERE name = 'Seafoam Islands')),

((SELECT id FROM monster WHERE name = 'Mankey'), (SELECT id FROM location WHERE name = 'Route 5')),
((SELECT id FROM monster WHERE name = 'Mankey'), (SELECT id FROM location WHERE name = 'Route 6')),
((SELECT id FROM monster WHERE name = 'Mankey'), (SELECT id FROM location WHERE name = 'Route 7')),
((SELECT id FROM monster WHERE name = 'Mankey'), (SELECT id FROM location WHERE name = 'Route 8')),

((SELECT id FROM monster WHERE name = 'Growlithe'), (SELECT id FROM location WHERE name = 'Route 7')),
((SELECT id FROM monster WHERE name = 'Growlithe'), (SELECT id FROM location WHERE name = 'Route 8')),
((SELECT id FROM monster WHERE name = 'Growlithe'), (SELECT id FROM location WHERE name = 'Pokemon Mansion')),

((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Route 6')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Route 10')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Route 11')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Route 12')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Route 13')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Route 17')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Route 18')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Route 19')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Route 20')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Route 21')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Route 22')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Route 23')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Route 24')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Route 25')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Pallet Town')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Viridian City')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Cerulean City')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Vermilion City')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Celadon City')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Fuschia City')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Safari Zone')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Seafoam Islands')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Cinnabar Island')),
((SELECT id FROM monster WHERE name = 'Poliwag'), (SELECT id FROM location WHERE name = 'Indigo Plateau')),

((SELECT id FROM monster WHERE name = 'Poliwhirl'), (SELECT id FROM location WHERE name = 'Route 10')),
((SELECT id FROM monster WHERE name = 'Poliwhirl'), (SELECT id FROM location WHERE name = 'Celadon City')),

((SELECT id FROM monster WHERE name = 'Abra'), (SELECT id FROM location WHERE name = 'Route 24')),
((SELECT id FROM monster WHERE name = 'Abra'), (SELECT id FROM location WHERE name = 'Route 25')),
((SELECT id FROM monster WHERE name = 'Abra'), (SELECT id FROM location WHERE name = 'Celadon City')),

((SELECT id FROM monster WHERE name = 'Kadabra'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),

((SELECT id FROM monster WHERE name = 'Machop'), (SELECT id FROM location WHERE name = 'Rock Tunnel')),
((SELECT id FROM monster WHERE name = 'Machop'), (SELECT id FROM location WHERE name = 'Victory Road')),

((SELECT id FROM monster WHERE name = 'Machoke'), (SELECT id FROM location WHERE name = 'Victory Road')),

((SELECT id FROM monster WHERE name = 'Bellsprout'), (SELECT id FROM location WHERE name = 'Route 5')),
((SELECT id FROM monster WHERE name = 'Bellsprout'), (SELECT id FROM location WHERE name = 'Route 6')),
((SELECT id FROM monster WHERE name = 'Bellsprout'), (SELECT id FROM location WHERE name = 'Route 7')),
((SELECT id FROM monster WHERE name = 'Bellsprout'), (SELECT id FROM location WHERE name = 'Route 12')),
((SELECT id FROM monster WHERE name = 'Bellsprout'), (SELECT id FROM location WHERE name = 'Route 13')),
((SELECT id FROM monster WHERE name = 'Bellsprout'), (SELECT id FROM location WHERE name = 'Route 14')),
((SELECT id FROM monster WHERE name = 'Bellsprout'), (SELECT id FROM location WHERE name = 'Route 15')),
((SELECT id FROM monster WHERE name = 'Bellsprout'), (SELECT id FROM location WHERE name = 'Route 24')),
((SELECT id FROM monster WHERE name = 'Bellsprout'), (SELECT id FROM location WHERE name = 'Route 25')),

((SELECT id FROM monster WHERE name = 'Weepinbell'), (SELECT id FROM location WHERE name = 'Route 12')),
((SELECT id FROM monster WHERE name = 'Weepinbell'), (SELECT id FROM location WHERE name = 'Route 13')),
((SELECT id FROM monster WHERE name = 'Weepinbell'), (SELECT id FROM location WHERE name = 'Route 14')),
((SELECT id FROM monster WHERE name = 'Weepinbell'), (SELECT id FROM location WHERE name = 'Route 15')),

((SELECT id FROM monster WHERE name = 'Tentacool'), (SELECT id FROM location WHERE name = 'Route 12')),
((SELECT id FROM monster WHERE name = 'Tentacool'), (SELECT id FROM location WHERE name = 'Route 13')),
((SELECT id FROM monster WHERE name = 'Tentacool'), (SELECT id FROM location WHERE name = 'Route 17')),
((SELECT id FROM monster WHERE name = 'Tentacool'), (SELECT id FROM location WHERE name = 'Route 18')),
((SELECT id FROM monster WHERE name = 'Tentacool'), (SELECT id FROM location WHERE name = 'Pallet Town')),
((SELECT id FROM monster WHERE name = 'Tentacool'), (SELECT id FROM location WHERE name = 'Viridian City')),
((SELECT id FROM monster WHERE name = 'Tentacool'), (SELECT id FROM location WHERE name = 'Route 19')),
((SELECT id FROM monster WHERE name = 'Tentacool'), (SELECT id FROM location WHERE name = 'Route 20')),
((SELECT id FROM monster WHERE name = 'Tentacool'), (SELECT id FROM location WHERE name = 'Route 21')),

((SELECT id FROM monster WHERE name = 'Geodude'), (SELECT id FROM location WHERE name = 'Mt. Moon')),
((SELECT id FROM monster WHERE name = 'Geodude'), (SELECT id FROM location WHERE name = 'Rock Tunnel')),
((SELECT id FROM monster WHERE name = 'Geodude'), (SELECT id FROM location WHERE name = 'Victory Road')),

((SELECT id FROM monster WHERE name = 'Graveler'), (SELECT id FROM location WHERE name = 'Victory Road')),

((SELECT id FROM monster WHERE name = 'Ponyta'), (SELECT id FROM location WHERE name = 'Pokemon Mansion')),

((SELECT id FROM monster WHERE name = 'Slowpoke'), (SELECT id FROM location WHERE name = 'Seafoam Islands')),
((SELECT id FROM monster WHERE name = 'Slowpoke'), (SELECT id FROM location WHERE name = 'Route 10')),
((SELECT id FROM monster WHERE name = 'Slowpoke'), (SELECT id FROM location WHERE name = 'Celadon City')),
((SELECT id FROM monster WHERE name = 'Slowpoke'), (SELECT id FROM location WHERE name = 'Safari Zone')),

((SELECT id FROM monster WHERE name = 'Slowbro'), (SELECT id FROM location WHERE name = 'Route 23')),
((SELECT id FROM monster WHERE name = 'Slowbro'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),
((SELECT id FROM monster WHERE name = 'Slowbro'), (SELECT id FROM location WHERE name = 'Seafoam Islands')),

((SELECT id FROM monster WHERE name = 'Magnemite'), (SELECT id FROM location WHERE name = 'Power Plant')),

((SELECT id FROM monster WHERE name = 'Magneton'), (SELECT id FROM location WHERE name = 'Power Plant')),
((SELECT id FROM monster WHERE name = 'Magneton'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),

((SELECT id FROM monster WHERE name = 'Farfetch''d'), (SELECT id FROM location WHERE name = 'Vermilion City')),

((SELECT id FROM monster WHERE name = 'Doduo'), (SELECT id FROM location WHERE name = 'Route 16')),
((SELECT id FROM monster WHERE name = 'Doduo'), (SELECT id FROM location WHERE name = 'Route 17')),
((SELECT id FROM monster WHERE name = 'Doduo'), (SELECT id FROM location WHERE name = 'Route 18')),
((SELECT id FROM monster WHERE name = 'Doduo'), (SELECT id FROM location WHERE name = 'Safari Zone')),

((SELECT id FROM monster WHERE name = 'Dodrio'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),

((SELECT id FROM monster WHERE name = 'Seel'), (SELECT id FROM location WHERE name = 'Seafoam Islands')),
((SELECT id FROM monster WHERE name = 'Seel'), (SELECT id FROM location WHERE name = 'Pokemon Lab')),

((SELECT id FROM monster WHERE name = 'Dewgong'), (SELECT id FROM location WHERE name = 'Seafoam Islands')),

((SELECT id FROM monster WHERE name = 'Grimer'), (SELECT id FROM location WHERE name = 'Pokemon Mansion')),
((SELECT id FROM monster WHERE name = 'Muk'), (SELECT id FROM location WHERE name = 'Pokemon Mansion')),

((SELECT id FROM monster WHERE name = 'Shellder'), (SELECT id FROM location WHERE name = 'Seafoam Islands')),
((SELECT id FROM monster WHERE name = 'Shellder'), (SELECT id FROM location WHERE name = 'Route 6')),
((SELECT id FROM monster WHERE name = 'Shellder'), (SELECT id FROM location WHERE name = 'Route 11')),
((SELECT id FROM monster WHERE name = 'Shellder'), (SELECT id FROM location WHERE name = 'Route 19')),
((SELECT id FROM monster WHERE name = 'Shellder'), (SELECT id FROM location WHERE name = 'Route 20')),
((SELECT id FROM monster WHERE name = 'Shellder'), (SELECT id FROM location WHERE name = 'Route 21')),
((SELECT id FROM monster WHERE name = 'Shellder'), (SELECT id FROM location WHERE name = 'Vermilion City')),
((SELECT id FROM monster WHERE name = 'Shellder'), (SELECT id FROM location WHERE name = 'Cinnabar Island')),

((SELECT id FROM monster WHERE name = 'Gastly'), (SELECT id FROM location WHERE name = 'Pokemon Tower')),

((SELECT id FROM monster WHERE name = 'Haunter'), (SELECT id FROM location WHERE name = 'Pokemon Tower')),

((SELECT id FROM monster WHERE name = 'Onix'), (SELECT id FROM location WHERE name = 'Rock Tunnel')),
((SELECT id FROM monster WHERE name = 'Onix'), (SELECT id FROM location WHERE name = 'Victory Road')),

((SELECT id FROM monster WHERE name = 'Drowzee'), (SELECT id FROM location WHERE name = 'Route 11')),

((SELECT id FROM monster WHERE name = 'Hypno'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),

((SELECT id FROM monster WHERE name = 'Krabby'), (SELECT id FROM location WHERE name = 'Route 6')),
((SELECT id FROM monster WHERE name = 'Krabby'), (SELECT id FROM location WHERE name = 'Route 11')),
((SELECT id FROM monster WHERE name = 'Krabby'), (SELECT id FROM location WHERE name = 'Route 12')),
((SELECT id FROM monster WHERE name = 'Krabby'), (SELECT id FROM location WHERE name = 'Route 13')),
((SELECT id FROM monster WHERE name = 'Krabby'), (SELECT id FROM location WHERE name = 'Route 17')),
((SELECT id FROM monster WHERE name = 'Krabby'), (SELECT id FROM location WHERE name = 'Route 18')),
((SELECT id FROM monster WHERE name = 'Krabby'), (SELECT id FROM location WHERE name = 'Route 24')),
((SELECT id FROM monster WHERE name = 'Krabby'), (SELECT id FROM location WHERE name = 'Route 25')),
((SELECT id FROM monster WHERE name = 'Krabby'), (SELECT id FROM location WHERE name = 'Cerulean City')),
((SELECT id FROM monster WHERE name = 'Krabby'), (SELECT id FROM location WHERE name = 'Vermilion City')),
((SELECT id FROM monster WHERE name = 'Krabby'), (SELECT id FROM location WHERE name = 'Fuschia City')),
((SELECT id FROM monster WHERE name = 'Krabby'), (SELECT id FROM location WHERE name = 'Safari Zone')),
((SELECT id FROM monster WHERE name = 'Krabby'), (SELECT id FROM location WHERE name = 'Seafoam Islands')),

((SELECT id FROM monster WHERE name = 'Kingler'), (SELECT id FROM location WHERE name = 'Route 23')),
((SELECT id FROM monster WHERE name = 'Kingler'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),
((SELECT id FROM monster WHERE name = 'Kingler'), (SELECT id FROM location WHERE name = 'Seafoam Islands')),

((SELECT id FROM monster WHERE name = 'Voltorb'), (SELECT id FROM location WHERE name = 'Route 10')),
((SELECT id FROM monster WHERE name = 'Voltorb'), (SELECT id FROM location WHERE name = 'Power Plant')),

((SELECT id FROM monster WHERE name = 'Electrode'), (SELECT id FROM location WHERE name = 'Power Plant')),
((SELECT id FROM monster WHERE name = 'Electrode'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),
((SELECT id FROM monster WHERE name = 'Electrode'), (SELECT id FROM location WHERE name = 'Pokemon Lab')),

((SELECT id FROM monster WHERE name = 'Exeggcute'), (SELECT id FROM location WHERE name = 'Safari Zone')),

((SELECT id FROM monster WHERE name = 'Cubone'), (SELECT id FROM location WHERE name = 'Pokemon Tower')),

((SELECT id FROM monster WHERE name = 'Marowak'), (SELECT id FROM location WHERE name = 'Victory Road')),
((SELECT id FROM monster WHERE name = 'Marowak'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),

((SELECT id FROM monster WHERE name = 'Hitmonlee'), (SELECT id FROM location WHERE name = 'Saffron City')),

((SELECT id FROM monster WHERE name = 'Hitmonchan'), (SELECT id FROM location WHERE name = 'Saffron City')),

((SELECT id FROM monster WHERE name = 'Lickitung'), (SELECT id FROM location WHERE name = 'Route 18')),

((SELECT id FROM monster WHERE name = 'Koffing'), (SELECT id FROM location WHERE name = 'Pokemon Mansion')),

((SELECT id FROM monster WHERE name = 'Weezing'), (SELECT id FROM location WHERE name = 'Pokemon Mansion')),

((SELECT id FROM monster WHERE name = 'Rhyhorn'), (SELECT id FROM location WHERE name = 'Safari Zone')),

((SELECT id FROM monster WHERE name = 'Rhydon'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),

((SELECT id FROM monster WHERE name = 'Chansey'), (SELECT id FROM location WHERE name = 'Safari Zone')),
((SELECT id FROM monster WHERE name = 'Chansey'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),

((SELECT id FROM monster WHERE name = 'Tangela'), (SELECT id FROM location WHERE name = 'Route 21')),
((SELECT id FROM monster WHERE name = 'Tangela'), (SELECT id FROM location WHERE name = 'Pokemon Lab')),

((SELECT id FROM monster WHERE name = 'Kangaskhan'), (SELECT id FROM location WHERE name = 'Safari Zone')),

((SELECT id FROM monster WHERE name = 'Horsea'), (SELECT id FROM location WHERE name = 'Seafoam Islands')),
((SELECT id FROM monster WHERE name = 'Horsea'), (SELECT id FROM location WHERE name = 'Route 19')),
((SELECT id FROM monster WHERE name = 'Horsea'), (SELECT id FROM location WHERE name = 'Route 20')),
((SELECT id FROM monster WHERE name = 'Horsea'), (SELECT id FROM location WHERE name = 'Route 21')),
((SELECT id FROM monster WHERE name = 'Horsea'), (SELECT id FROM location WHERE name = 'Cinnabar Island')),

((SELECT id FROM monster WHERE name = 'Seadra'), (SELECT id FROM location WHERE name = 'Seafoam Islands')),
((SELECT id FROM monster WHERE name = 'Seadra'), (SELECT id FROM location WHERE name = 'Route 23')),
((SELECT id FROM monster WHERE name = 'Seadra'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),

((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Route 6')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Route 10')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Route 11')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Route 12')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Route 13')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Route 17')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Route 18')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Route 19')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Route 20')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Route 21')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Route 22')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Route 23')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Route 24')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Route 25')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Pallet Town')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Viridian City')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Cerulean City')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Vermilion City')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Celadon City')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Fuschia City')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Safari Zone')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Seafoam Islands')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Cinnabar Island')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Indigo Plateau')),
((SELECT id FROM monster WHERE name = 'Goldeen'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),

((SELECT id FROM monster WHERE name = 'Seaking'), (SELECT id FROM location WHERE name = 'Route 23')),
((SELECT id FROM monster WHERE name = 'Seaking'), (SELECT id FROM location WHERE name = 'Fuschia City')),
((SELECT id FROM monster WHERE name = 'Seaking'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),

((SELECT id FROM monster WHERE name = 'Staryu'), (SELECT id FROM location WHERE name = 'Seafoam Islands')),
((SELECT id FROM monster WHERE name = 'Staryu'), (SELECT id FROM location WHERE name = 'Route 19')),
((SELECT id FROM monster WHERE name = 'Staryu'), (SELECT id FROM location WHERE name = 'Route 20')),
((SELECT id FROM monster WHERE name = 'Staryu'), (SELECT id FROM location WHERE name = 'Route 21')),
((SELECT id FROM monster WHERE name = 'Staryu'), (SELECT id FROM location WHERE name = 'Cinnabar Island')),

((SELECT id FROM monster WHERE name = 'Mr. Mime'), (SELECT id FROM location WHERE name = 'Route 2')),

((SELECT id FROM monster WHERE name = 'Scyther'), (SELECT id FROM location WHERE name = 'Safari Zone')),
((SELECT id FROM monster WHERE name = 'Scyther'), (SELECT id FROM location WHERE name = 'Celadon City')),

((SELECT id FROM monster WHERE name = 'Jynx'), (SELECT id FROM location WHERE name = 'Cerulean City')),

((SELECT id FROM monster WHERE name = 'Electabuzz'), (SELECT id FROM location WHERE name = 'Power Plant')),

((SELECT id FROM monster WHERE name = 'Magmar'), (SELECT id FROM location WHERE name = 'Pokemon Mansion')),

((SELECT id FROM monster WHERE name = 'Pinsir'), (SELECT id FROM location WHERE name = 'Safari Zone')),
((SELECT id FROM monster WHERE name = 'Pinsir'), (SELECT id FROM location WHERE name = 'Celadon City')),

((SELECT id FROM monster WHERE name = 'Tauros'), (SELECT id FROM location WHERE name = 'Safari Zone')),

((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Route 6')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Route 10')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Route 11')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Route 12')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Route 13')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Route 17')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Route 18')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Route 19')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Route 20')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Route 21')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Route 22')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Route 23')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Route 24')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Route 25')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Pallet Town')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Viridian City')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Cerulean City')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Vermilion City')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Celadon City')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Fuschia City')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Safari Zone')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Seafoam Islands')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Cinnabar Island')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Indigo Plateau')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),
((SELECT id FROM monster WHERE name = 'Magikarp'), (SELECT id FROM location WHERE name = 'Route 4')),

((SELECT id FROM monster WHERE name = 'Lapras'), (SELECT id FROM location WHERE name = 'Saffron City')),

((SELECT id FROM monster WHERE name = 'Ditto'), (SELECT id FROM location WHERE name = 'Route 13')),
((SELECT id FROM monster WHERE name = 'Ditto'), (SELECT id FROM location WHERE name = 'Route 14')),
((SELECT id FROM monster WHERE name = 'Ditto'), (SELECT id FROM location WHERE name = 'Route 15')),
((SELECT id FROM monster WHERE name = 'Ditto'), (SELECT id FROM location WHERE name = 'Route 23')),
((SELECT id FROM monster WHERE name = 'Ditto'), (SELECT id FROM location WHERE name = 'Cerulean Cave')),

((SELECT id FROM monster WHERE name = 'Eevee'), (SELECT id FROM location WHERE name = 'Celadon Mansion')),

((SELECT id FROM monster WHERE name = 'Porygon'), (SELECT id FROM location WHERE name = 'Celadon City')),

-- where their key items are located
((SELECT id FROM monster WHERE name = 'Omanyte'), (SELECT id FROM location WHERE name = 'Mt. Moon')),
((SELECT id FROM monster WHERE name = 'Kabuto'), (SELECT id FROM location WHERE name = 'Mt. Moon')),
((SELECT id FROM monster WHERE name = 'Aerodactyl'), (SELECT id FROM location WHERE name = 'Pewter City')),

((SELECT id FROM monster WHERE name = 'Snorlax'), (SELECT id FROM location WHERE name = 'Route 12')),
((SELECT id FROM monster WHERE name = 'Snorlax'), (SELECT id FROM location WHERE name = 'Route 16')),

((SELECT id FROM monster WHERE name = 'Articuno'), (SELECT id FROM location WHERE name = 'Seafoam Islands')),
((SELECT id FROM monster WHERE name = 'Zapdos'), (SELECT id FROM location WHERE name = 'Power Plant')),
((SELECT id FROM monster WHERE name = 'Moltres'), (SELECT id FROM location WHERE name = 'Victory Road')),

((SELECT id FROM monster WHERE name = 'Dratini'), (SELECT id FROM location WHERE name = 'Safari Zone')),
((SELECT id FROM monster WHERE name = 'Dratini'), (SELECT id FROM location WHERE name = 'Celadon City')),

((SELECT id FROM monster WHERE name = 'Mewtwo'), (SELECT id FROM location WHERE name = 'Cerulean Cave'))
;
