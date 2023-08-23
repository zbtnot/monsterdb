--- Type table
CREATE TABLE IF NOT EXISTS type
(
    id integer
    constraint type_pk
    primary key autoincrement,
    name text
);

INSERT INTO type (name)
VALUES
    ('Normal'),
    ('Fighting'),
    ('Flying'),
    ('Poison'),
    ('Ground'),
    ('Rock'),
    ('Bug'),
    ('Ghost'),
    ('Fire'),
    ('Water'),
    ('Grass'),
    ('Electric'),
    ('Psychic'),
    ('Ice'),
    ('Dragon')
;
