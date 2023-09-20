--- move_animation table
CREATE TABLE IF NOT EXISTS move_animation
(
    id
        integer
        constraint move_animation_pk
            primary key autoincrement,
    move_id
        integer
        not null
        constraint
            move_animation_move_id_fk
            references
                move,
    path TEXT
);

INSERT INTO move_animation (move_id, path)
VALUES ((SELECT id FROM move WHERE name = 'Absorb'),        '/assets/moves/animations/absorb.webm'),
       ((SELECT id FROM move WHERE name = 'Acid'),          '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Acid Armor'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Agility'),       '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Amnesia'),       '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Aurora Beam'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Barrage'),       '/assets/moves/animations/barrage.webm'),
       ((SELECT id FROM move WHERE name = 'Barrier'),       '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Bide'),          '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Bind'),          '/assets/moves/animations/bind.webm'),
       ((SELECT id FROM move WHERE name = 'Bite'),          '/assets/moves/animations/bite.webm'),
       ((SELECT id FROM move WHERE name = 'Blizzard'),      '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Body Slam'),     '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Bone Club'),     '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Bonemerang'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Bubble'),        '/assets/moves/animations/bubble.webm'),
       ((SELECT id FROM move WHERE name = 'Bubble Beam'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Clamp'),         '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Comet Punch'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Confuse Ray'),   '/assets/moves/animations/confuseray.webm'),
       ((SELECT id FROM move WHERE name = 'Confusion'),     '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Constrict'),     '/assets/moves/animations/constrict.webm'),
       ((SELECT id FROM move WHERE name = 'Conversion'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Counter'),       '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Crabhammer'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Cut'),           '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Defense Curl'),  '/assets/moves/animations/defensecurl.webm'),
       ((SELECT id FROM move WHERE name = 'Dig'),           '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Disable'),       '/assets/moves/animations/disable.webm'),
       ((SELECT id FROM move WHERE name = 'Dizzy Punch'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Double Kick'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Double Slap'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Double Team'),   '/assets/moves/animations/doubleteam.webm'),
       ((SELECT id FROM move WHERE name = 'Double-Edge'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Dragon Rage'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Dream Eater'),   '/assets/moves/animations/dreameater.webm'),
       ((SELECT id FROM move WHERE name = 'Drill Peck'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Earthquake'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Egg Bomb'),      '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Ember'),         '/assets/moves/animations/ember.webm'),
       ((SELECT id FROM move WHERE name = 'Explosion'),     '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Fire Blast'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Fire Punch'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Fire Spin'),     '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Fissure'),       '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Flamethrower'),  '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Flash'),         '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Fly'),           '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Focus Energy'),  '/assets/moves/animations/focusenergy.webm'),
       ((SELECT id FROM move WHERE name = 'Fury Attack'),   '/assets/moves/animations/furyattack.webm'),
       ((SELECT id FROM move WHERE name = 'Fury Swipes'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Glare'),         '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Growl'),         '/assets/moves/animations/growl.webm'),
       ((SELECT id FROM move WHERE name = 'Growth'),        '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Guillotine'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Gust'),          '/assets/moves/animations/gust.webm'),
       ((SELECT id FROM move WHERE name = 'Harden'),        '/assets/moves/animations/harden.webm'),
       ((SELECT id FROM move WHERE name = 'Haze'),          '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Headbutt'),      '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'High Jump Kick'),'/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Horn Attack'),   '/assets/moves/animations/hornattack.webm'),
       ((SELECT id FROM move WHERE name = 'Horn Drill'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Hydro Pump'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Hyper Beam'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Hyper Fang'),    '/assets/moves/animations/hyperfang.webm'),
       ((SELECT id FROM move WHERE name = 'Hypnosis'),      '/assets/moves/animations/hypnosis.webm'),
       ((SELECT id FROM move WHERE name = 'Ice Beam'),      '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Ice Punch'),     '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Jump Kick'),     '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Karate Chop'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Kinesis'),       '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Leech Life'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Leech Seed'),    '/assets/moves/animations/leechseed.webm'),
       ((SELECT id FROM move WHERE name = 'Leer'),          '/assets/moves/animations/leer.webm'),
       ((SELECT id FROM move WHERE name = 'Lick'),          '/assets/moves/animations/lick.webm'),
       ((SELECT id FROM move WHERE name = 'Light Screen'),  '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Lovely Kiss'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Low Kick'),      '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Meditate'),      '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Mega Drain'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Mega Kick'),     '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Mega Punch'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Metronome'),     '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Mimic'),         '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Minimize'),      '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Mirror Move'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Mist'),          '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Night Shade'),   '/assets/moves/animations/nightshade.webm'),
       ((SELECT id FROM move WHERE name = 'Pay Day'),       '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Peck'),          '/assets/moves/animations/peck.webm'),
       ((SELECT id FROM move WHERE name = 'Petal Dance'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Pin Missile'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Poison Gas'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Poison Powder'), '/assets/moves/animations/poisonpowder.webm'),
       ((SELECT id FROM move WHERE name = 'Poison Sting'),  '/assets/moves/animations/poisonsting.webm'),
       ((SELECT id FROM move WHERE name = 'Pound'),         '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Psybeam'),       '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Psychic'),       '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Psywave'),       '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Quick Attack'),  '/assets/moves/animations/quickattack.webm'),
       ((SELECT id FROM move WHERE name = 'Rage'),          '/assets/moves/animations/rage.webm'),
       ((SELECT id FROM move WHERE name = 'Razor Leaf'),    '/assets/moves/animations/razorleaf.webm'),
       ((SELECT id FROM move WHERE name = 'Razor Wind'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Recover'),       '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Reflect'),       '/assets/moves/animations/reflect.webm'),
       ((SELECT id FROM move WHERE name = 'Rest'),          '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Roar'),          '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Rock Slide'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Rock Throw'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Rolling Kick'),  '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Sand Attack'),   '/assets/moves/animations/sandattack.webm'),
       ((SELECT id FROM move WHERE name = 'Scratch'),       '/assets/moves/animations/scratch.webm'),
       ((SELECT id FROM move WHERE name = 'Screech'),       '/assets/moves/animations/screech.webm'),
       ((SELECT id FROM move WHERE name = 'Seismic Toss'),  '/assets/moves/animations/seismictoss.webm'),
       ((SELECT id FROM move WHERE name = 'Self-Destruct'), '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Sharpen'),       '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Sing'),          '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Skull Bash'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Sky Attack'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Slam'),          '/assets/moves/animations/slam.webm'),
       ((SELECT id FROM move WHERE name = 'Slash'),         '/assets/moves/animations/slash.webm'),
       ((SELECT id FROM move WHERE name = 'Sleep Powder'),  '/assets/moves/animations/sleeppowder.webm'),
       ((SELECT id FROM move WHERE name = 'Sludge'),        '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Smog'),          '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Smokescreen'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Soft-Boiled'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Solar Beam'),    '/assets/moves/animations/solarbeam.webm'),
       ((SELECT id FROM move WHERE name = 'Sonic Boom'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Spike Cannon'),  '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Splash'),        '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Spore'),         '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Stomp'),         '/assets/moves/animations/stomp.webm'),
       ((SELECT id FROM move WHERE name = 'Strength'),      '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'String Shot'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Struggle'),      '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Stun Spore'),    '/assets/moves/animations/stunspore.webm'),
       ((SELECT id FROM move WHERE name = 'Submission'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Substitute'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Super Fang'),    '/assets/moves/animations/superfang.webm'),
       ((SELECT id FROM move WHERE name = 'Supersonic'),    '/assets/moves/animations/supersonic.webm'),
       ((SELECT id FROM move WHERE name = 'Surf'),          '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Swift'),         '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Swords Dance'),  '/assets/moves/animations/swordsdance.webm'),
       ((SELECT id FROM move WHERE name = 'Tackle'),        '/assets/moves/animations/tackle.webm'),
       ((SELECT id FROM move WHERE name = 'Tail Whip'),     '/assets/moves/animations/tailwhip.webm'),
       ((SELECT id FROM move WHERE name = 'Take Down'),     '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Teleport'),      '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Thrash'),        '/assets/moves/animations/thrash.webm'),
       ((SELECT id FROM move WHERE name = 'Thunder'),       '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Thunder Punch'), '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Thunder Shock'), '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Thunder Wave'),  '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Thunderbolt'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Toxic'),         '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Transform'),     '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Tri Attack'),    '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Twineedle'),     '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Vice Grip'),     '/assets/moves/animations/vicegrip.webm'),
       ((SELECT id FROM move WHERE name = 'Vine Whip'),     '/assets/moves/animations/vinewhip.webm'),
       ((SELECT id FROM move WHERE name = 'Water Gun'),     '/assets/moves/animations/watergun.webm'),
       ((SELECT id FROM move WHERE name = 'Waterfall'),     '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Whirlwind'),     '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Wing Attack'),   '/assets/moves/animations/'),
       ((SELECT id FROM move WHERE name = 'Withdraw'),      '/assets/moves/animations/withdraw.webm'),
       ((SELECT id FROM move WHERE name = 'Wrap'),          '/assets/moves/animations/wrap.webm');