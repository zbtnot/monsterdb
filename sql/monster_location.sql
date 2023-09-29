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
((SELECT id FROM monster WHERE name = 'Nidorina'), (SELECT id FROM location WHERE name = 'Route 11'))

;
