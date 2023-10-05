-- location table
CREATE TABLE IF NOT EXISTS location
(
    id      INTEGER
            CONSTRAINT location_pk PRIMARY KEY AUTOINCREMENT,
    name    TEXT,
    x       INTEGER, -- the top-left x-coordinate of the location
    y       INTEGER, -- the top-left y-coordinate of the location
    width   INTEGER, -- the width in pixels of the location on the map
    height  INTEGER -- the height in pixels of the location on the map
);

INSERT INTO location (name, x, y, width, height)
VALUES
    ('Route 1',                     32,     72,     8,  16),
    ('Route 2',                     32,     40,     8,  24),
    ('Route 3',                     40,     24,     24, 8),
    ('Route 4',                     56,     16,     40, 8),
    ('Route 5',                     96,     24,     8,  16),
    ('Route 6',                     96,     48,     8,  24),
    ('Route 7',                     80,     40,     16, 8),
    ('Route 8',                     104,    40,     24, 8),
    ('Route 9',                     104,    16,     32, 8),
    ('Route 10',                    128,    32,     8,  8),
    ('Route 11',                    104,    72,     24, 8),
    ('Route 12',                    128,    48,     8,  40),
    ('Route 13',                    104,    88,     32, 8),
    ('Route 14',                    104,    96,     8,  16),
    ('Route 15',                    88,     104,    16, 8),
    ('Route 16',                    48,     40,     24, 8),
    ('Route 17',                    48,     48,     8,  56),
    ('Route 18',                    48,     104,    32, 8),
    ('Route 19',                    80,     112,    8,  16),
    ('Route 20',                    40,     120,    40, 8),
    ('Route 21',                    32,     96,     8,  24),
    ('Route 22',                    16,     64,     16, 8),
    ('Route 23',                    16,     24,     8,  40),
    ('Route 24',                    96,     8,      8,  8),
    ('Route 25',                    96,     0,      24, 8),
    ('Pallet Town',                 32,     88,     8,  8),
    ('Viridian City',               32,     64,     8,  8),
    ('Pewter City',                 32,     24,     8,  8),
    ('Cerulean City',               96,     16,     8,  8),
    ('Cerulean Cave',               96,     16,     4,  4),
    ('Saffron City',                96,     40,     8,  8),
    ('Vermilion City',              96,     72,     8,  8),
    ('Celadon City',                72,     40,     8,  8),
    ('Celadon Mansion',             72,     40,     4,  4),
    ('Lavender Town',               128,    40,     8,  8),
    ('Pokemon Tower',               128,    40,     4,  4),
    ('Power Plant',                 136,    32,     8,  8),
    ('Fuschia City',                80,     104,    8,  8),
    ('Safari Zone',                 80,     104,    4,  4),
    ('Cinnabar Island',             32,     120,    8,  8),
    ('Pokemon Mansion',             32,     120,    4,  4),
    ('Pokemon Lab',                 32,     124,    4,  4),
    ('Viridian Forest',             32,     32,     8,  8),
    ('Diglett''s Cave',             40,     32,     8,  8),
    ('Mt. Moon',                    64,     16,     8,  8),
    ('Underground Path (North)',    96,     32,     8,  8),
    ('Underground Path (South)',    96,     48,     8,  8),
    ('Rock Tunnel',                 128,    24,     8,  8),
    ('Indigo Plateau',              16,     16,     8,  8),
    ('Victory Road',                16,     32,     8,  8),
    ('Seafoam Islands',             56,     120,    8,  8);
