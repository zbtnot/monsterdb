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
    path TEXT,
    mimeType Text
);

INSERT INTO move_animation (move_id, path, mimeType)
VALUES
    ((SELECT id FROM move WHERE name = 'Absorb'),        '/assets/moves/animations/absorb.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Absorb'),        '/assets/moves/animations/absorb.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Acid'),          '/assets/moves/animations/acid.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Acid'),          '/assets/moves/animations/acid.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Acid Armor'),    '/assets/moves/animations/acidarmor.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Acid Armor'),    '/assets/moves/animations/acidarmor.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Agility'),       '/assets/moves/animations/agility.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Agility'),       '/assets/moves/animations/agility.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Amnesia'),       '/assets/moves/animations/amnesia.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Amnesia'),       '/assets/moves/animations/amnesia.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Aurora Beam'),   '/assets/moves/animations/aurorabeam.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Aurora Beam'),   '/assets/moves/animations/aurorabeam.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Barrage'),       '/assets/moves/animations/barrage.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Barrage'),       '/assets/moves/animations/barrage.webm', 'video/webm'),

    ((SELECT id FROM move WHERE name = 'Barrier'),       '/assets/moves/animations/barrier.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Barrier'),       '/assets/moves/animations/barrier.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Bide'),          '/assets/moves/animations/bide.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Bide'),          '/assets/moves/animations/bide.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Bind'),          '/assets/moves/animations/bind.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Bind'),          '/assets/moves/animations/bind.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Bite'),          '/assets/moves/animations/bite.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Bite'),          '/assets/moves/animations/bite.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Blizzard'),      '/assets/moves/animations/blizzard.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Blizzard'),      '/assets/moves/animations/blizzard.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Body Slam'),     '/assets/moves/animations/bodyslam.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Body Slam'),     '/assets/moves/animations/bodyslam.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Bone Club'),     '/assets/moves/animations/boneclub.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Bone Club'),     '/assets/moves/animations/boneclub.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Bonemerang'),    '/assets/moves/animations/bonemerang.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Bonemerang'),    '/assets/moves/animations/bonemerang.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Bubble'),        '/assets/moves/animations/bubble.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Bubble'),        '/assets/moves/animations/bubble.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Bubble Beam'),   '/assets/moves/animations/bubblebeam.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Bubble Beam'),   '/assets/moves/animations/bubblebeam.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Clamp'),         '/assets/moves/animations/clamp.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Clamp'),         '/assets/moves/animations/clamp.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Comet Punch'),   '/assets/moves/animations/cometpunch.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Comet Punch'),   '/assets/moves/animations/cometpunch.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Confuse Ray'),   '/assets/moves/animations/confuseray.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Confuse Ray'),   '/assets/moves/animations/confuseray.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Confusion'),     '/assets/moves/animations/confusion.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Confusion'),     '/assets/moves/animations/confusion.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Constrict'),     '/assets/moves/animations/constrict.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Constrict'),     '/assets/moves/animations/constrict.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Conversion'),    '/assets/moves/animations/conversion.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Conversion'),    '/assets/moves/animations/conversion.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Counter'),       '/assets/moves/animations/counter.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Counter'),       '/assets/moves/animations/counter.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Crabhammer'),    '/assets/moves/animations/crabhammer.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Crabhammer'),    '/assets/moves/animations/crabhammer.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Cut'),           '/assets/moves/animations/cut.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Cut'),           '/assets/moves/animations/cut.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Defense Curl'),  '/assets/moves/animations/defensecurl.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Defense Curl'),  '/assets/moves/animations/defensecurl.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Dig'),           '/assets/moves/animations/dig.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Dig'),           '/assets/moves/animations/dig.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Disable'),       '/assets/moves/animations/disable.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Disable'),       '/assets/moves/animations/disable.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Dizzy Punch'),   '/assets/moves/animations/dizzypunch.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Dizzy Punch'),   '/assets/moves/animations/dizzypunch.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Double Kick'),   '/assets/moves/animations/doublekick.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Double Kick'),   '/assets/moves/animations/doublekick.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Double Slap'),   '/assets/moves/animations/doubleslap.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Double Slap'),   '/assets/moves/animations/doubleslap.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Double Team'),   '/assets/moves/animations/doubleteam.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Double Team'),   '/assets/moves/animations/doubleteam.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Double-Edge'),   '/assets/moves/animations/doubleedge.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Double-Edge'),   '/assets/moves/animations/doubleedge.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Dragon Rage'),   '/assets/moves/animations/dragonrage.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Dragon Rage'),   '/assets/moves/animations/dragonrage.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Dream Eater'),   '/assets/moves/animations/dreameater.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Dream Eater'),   '/assets/moves/animations/dreameater.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Drill Peck'),    '/assets/moves/animations/drillpeck.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Drill Peck'),    '/assets/moves/animations/drillpeck.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Earthquake'),    '/assets/moves/animations/earthquake.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Earthquake'),    '/assets/moves/animations/earthquake.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Egg Bomb'),      '/assets/moves/animations/eggbomb.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Egg Bomb'),      '/assets/moves/animations/eggbomb.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Ember'),         '/assets/moves/animations/ember.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Ember'),         '/assets/moves/animations/ember.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Explosion'),     '/assets/moves/animations/explosion.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Explosion'),     '/assets/moves/animations/explosion.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Fire Blast'),    '/assets/moves/animations/fireblast.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Fire Blast'),    '/assets/moves/animations/fireblast.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Fire Punch'),    '/assets/moves/animations/firepunch.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Fire Punch'),    '/assets/moves/animations/firepunch.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Fire Spin'),     '/assets/moves/animations/firespin.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Fire Spin'),     '/assets/moves/animations/firespin.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Fissure'),       '/assets/moves/animations/fissure.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Fissure'),       '/assets/moves/animations/fissure.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Flamethrower'),  '/assets/moves/animations/flamethrower.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Flamethrower'),  '/assets/moves/animations/flamethrower.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Flash'),         '/assets/moves/animations/flash.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Flash'),         '/assets/moves/animations/flash.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Fly'),           '/assets/moves/animations/fly.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Fly'),           '/assets/moves/animations/fly.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Focus Energy'),  '/assets/moves/animations/focusenergy.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Focus Energy'),  '/assets/moves/animations/focusenergy.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Fury Attack'),   '/assets/moves/animations/furyattack.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Fury Attack'),   '/assets/moves/animations/furyattack.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Fury Swipes'),   '/assets/moves/animations/furyswipes.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Fury Swipes'),   '/assets/moves/animations/furyswipes.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Glare'),         '/assets/moves/animations/glare.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Glare'),         '/assets/moves/animations/glare.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Growl'),         '/assets/moves/animations/growl.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Growl'),         '/assets/moves/animations/growl.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Growth'),        '/assets/moves/animations/growth.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Growth'),        '/assets/moves/animations/growth.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Guillotine'),    '/assets/moves/animations/guillotine.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Guillotine'),    '/assets/moves/animations/guillotine.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Gust'),          '/assets/moves/animations/gust.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Gust'),          '/assets/moves/animations/gust.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Harden'),        '/assets/moves/animations/harden.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Harden'),        '/assets/moves/animations/harden.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Haze'),          '/assets/moves/animations/haze.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Haze'),          '/assets/moves/animations/haze.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Headbutt'),      '/assets/moves/animations/headbutt.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Headbutt'),      '/assets/moves/animations/headbutt.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'High Jump Kick'),'/assets/moves/animations/hijumpkick.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'High Jump Kick'),'/assets/moves/animations/hijumpkick.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Horn Attack'),   '/assets/moves/animations/hornattack.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Horn Attack'),   '/assets/moves/animations/hornattack.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Horn Drill'),    '/assets/moves/animations/horndrill.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Horn Drill'),    '/assets/moves/animations/horndrill.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Hydro Pump'),    '/assets/moves/animations/hydropump.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Hydro Pump'),    '/assets/moves/animations/hydropump.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Hyper Beam'),    '/assets/moves/animations/hyperbeam.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Hyper Beam'),    '/assets/moves/animations/hyperbeam.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Hyper Fang'),    '/assets/moves/animations/hyperfang.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Hyper Fang'),    '/assets/moves/animations/hyperfang.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Hypnosis'),      '/assets/moves/animations/hypnosis.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Hypnosis'),      '/assets/moves/animations/hypnosis.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Ice Beam'),      '/assets/moves/animations/icebeam.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Ice Beam'),      '/assets/moves/animations/icebeam.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Ice Punch'),     '/assets/moves/animations/icepunch.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Ice Punch'),     '/assets/moves/animations/icepunch.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Jump Kick'),     '/assets/moves/animations/jumpkick.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Jump Kick'),     '/assets/moves/animations/jumpkick.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Karate Chop'),   '/assets/moves/animations/karatechop.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Karate Chop'),   '/assets/moves/animations/karatechop.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Kinesis'),       '/assets/moves/animations/kinesis.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Kinesis'),       '/assets/moves/animations/kinesis.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Leech Life'),    '/assets/moves/animations/leechlife.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Leech Life'),    '/assets/moves/animations/leechlife.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Leech Seed'),    '/assets/moves/animations/leechseed.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Leech Seed'),    '/assets/moves/animations/leechseed.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Leer'),          '/assets/moves/animations/leer.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Leer'),          '/assets/moves/animations/leer.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Lick'),          '/assets/moves/animations/lick.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Lick'),          '/assets/moves/animations/lick.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Light Screen'),  '/assets/moves/animations/lightscreen.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Light Screen'),  '/assets/moves/animations/lightscreen.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Lovely Kiss'),   '/assets/moves/animations/lovelykiss.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Lovely Kiss'),   '/assets/moves/animations/lovelykiss.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Low Kick'),      '/assets/moves/animations/lowkick.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Low Kick'),      '/assets/moves/animations/lowkick.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Meditate'),      '/assets/moves/animations/meditate.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Meditate'),      '/assets/moves/animations/meditate.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Mega Drain'),    '/assets/moves/animations/megadrain.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Mega Drain'),    '/assets/moves/animations/megadrain.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Mega Kick'),     '/assets/moves/animations/megakick.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Mega Kick'),     '/assets/moves/animations/megakick.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Mega Punch'),    '/assets/moves/animations/megapunch.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Mega Punch'),    '/assets/moves/animations/megapunch.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Metronome'),     '/assets/moves/animations/metronome.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Metronome'),     '/assets/moves/animations/metronome.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Mimic'),         '/assets/moves/animations/mimic.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Mimic'),         '/assets/moves/animations/mimic.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Minimize'),      '/assets/moves/animations/minimize.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Minimize'),      '/assets/moves/animations/minimize.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Mirror Move'),   '/assets/moves/animations/mirrormove.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Mirror Move'),   '/assets/moves/animations/mirrormove.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Mist'),          '/assets/moves/animations/mist.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Mist'),          '/assets/moves/animations/mist.mp4', 'video/mp4'),
    
    ((SELECT id FROM move WHERE name = 'Night Shade'),   '/assets/moves/animations/nightshade.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Night Shade'),   '/assets/moves/animations/nightshade.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Pay Day'),       '/assets/moves/animations/payday.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Pay Day'),       '/assets/moves/animations/payday.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Peck'),          '/assets/moves/animations/peck.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Peck'),          '/assets/moves/animations/peck.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Petal Dance'),   '/assets/moves/animations/petaldance.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Petal Dance'),   '/assets/moves/animations/petaldance.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Pin Missile'),   '/assets/moves/animations/pinmissile.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Pin Missile'),   '/assets/moves/animations/pinmissile.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Poison Gas'),    '/assets/moves/animations/poisongas.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Poison Gas'),    '/assets/moves/animations/poisongas.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Poison Powder'), '/assets/moves/animations/poisonpowder.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Poison Powder'), '/assets/moves/animations/poisonpowder.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Poison Sting'),  '/assets/moves/animations/poisonsting.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Poison Sting'),  '/assets/moves/animations/poisonsting.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Pound'),         '/assets/moves/animations/pound.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Pound'),         '/assets/moves/animations/pound.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Psybeam'),       '/assets/moves/animations/psybeam.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Psybeam'),       '/assets/moves/animations/psybeam.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Psychic'),       '/assets/moves/animations/psychic.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Psychic'),       '/assets/moves/animations/psychic.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Psywave'),       '/assets/moves/animations/psywave.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Psywave'),       '/assets/moves/animations/psywave.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Quick Attack'),  '/assets/moves/animations/quickattack.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Quick Attack'),  '/assets/moves/animations/quickattack.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Rage'),          '/assets/moves/animations/rage.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Rage'),          '/assets/moves/animations/rage.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Razor Leaf'),    '/assets/moves/animations/razorleaf.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Razor Leaf'),    '/assets/moves/animations/razorleaf.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Razor Wind'),    '/assets/moves/animations/razorwind.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Razor Wind'),    '/assets/moves/animations/razorwind.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Recover'),       '/assets/moves/animations/recover.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Recover'),       '/assets/moves/animations/recover.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Reflect'),       '/assets/moves/animations/reflect.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Reflect'),       '/assets/moves/animations/reflect.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Rest'),          '/assets/moves/animations/rest.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Rest'),          '/assets/moves/animations/rest.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Roar'),          '/assets/moves/animations/roar.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Roar'),          '/assets/moves/animations/roar.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Rock Slide'),    '/assets/moves/animations/rockslide.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Rock Slide'),    '/assets/moves/animations/rockslide.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Rock Throw'),    '/assets/moves/animations/rockthrow.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Rock Throw'),    '/assets/moves/animations/rockthrow.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Rolling Kick'),  '/assets/moves/animations/rollingkick.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Rolling Kick'),  '/assets/moves/animations/rollingkick.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Sand Attack'),   '/assets/moves/animations/sandattack.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Sand Attack'),   '/assets/moves/animations/sandattack.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Scratch'),       '/assets/moves/animations/scratch.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Scratch'),       '/assets/moves/animations/scratch.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Screech'),       '/assets/moves/animations/screech.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Screech'),       '/assets/moves/animations/screech.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Seismic Toss'),  '/assets/moves/animations/seismictoss.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Seismic Toss'),  '/assets/moves/animations/seismictoss.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Self-Destruct'), '/assets/moves/animations/selfdestruct.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Self-Destruct'), '/assets/moves/animations/selfdestruct.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Sharpen'),       '/assets/moves/animations/sharpen.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Sharpen'),       '/assets/moves/animations/sharpen.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Sing'),          '/assets/moves/animations/sing.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Sing'),          '/assets/moves/animations/sing.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Skull Bash'),    '/assets/moves/animations/skullbash.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Skull Bash'),    '/assets/moves/animations/skullbash.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Sky Attack'),    '/assets/moves/animations/skyattack.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Sky Attack'),    '/assets/moves/animations/skyattack.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Slam'),          '/assets/moves/animations/slam.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Slam'),          '/assets/moves/animations/slam.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Slash'),         '/assets/moves/animations/slash.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Slash'),         '/assets/moves/animations/slash.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Sleep Powder'),  '/assets/moves/animations/sleeppowder.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Sleep Powder'),  '/assets/moves/animations/sleeppowder.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Sludge'),        '/assets/moves/animations/sludge.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Sludge'),        '/assets/moves/animations/sludge.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Smog'),          '/assets/moves/animations/smog.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Smog'),          '/assets/moves/animations/smog.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Smokescreen'),   '/assets/moves/animations/smokescreen.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Smokescreen'),   '/assets/moves/animations/smokescreen.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Soft-Boiled'),   '/assets/moves/animations/softboiled.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Soft-Boiled'),   '/assets/moves/animations/softboiled.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Solar Beam'),    '/assets/moves/animations/solarbeam.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Solar Beam'),    '/assets/moves/animations/solarbeam.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Sonic Boom'),    '/assets/moves/animations/sonicboom.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Sonic Boom'),    '/assets/moves/animations/sonicboom.mp4', 'video/webm'),

    ((SELECT id FROM move WHERE name = 'Spike Cannon'),  '/assets/moves/animations/spikecannon.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Spike Cannon'),  '/assets/moves/animations/spikecannon.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Splash'),        '/assets/moves/animations/splash.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Splash'),        '/assets/moves/animations/splash.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Spore'),         '/assets/moves/animations/spore.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Spore'),         '/assets/moves/animations/spore.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Stomp'),         '/assets/moves/animations/stomp.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Stomp'),         '/assets/moves/animations/stomp.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Strength'),      '/assets/moves/animations/strength.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Strength'),      '/assets/moves/animations/strength.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'String Shot'),   '/assets/moves/animations/stringshot.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'String Shot'),   '/assets/moves/animations/stringshot.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Struggle'),      '/assets/moves/animations/struggle.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Struggle'),      '/assets/moves/animations/struggle.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Stun Spore'),    '/assets/moves/animations/stunspore.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Stun Spore'),    '/assets/moves/animations/stunspore.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Submission'),    '/assets/moves/animations/submission.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Submission'),    '/assets/moves/animations/submission.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Substitute'),    '/assets/moves/animations/substitute.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Substitute'),    '/assets/moves/animations/substitute.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Super Fang'),    '/assets/moves/animations/superfang.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Super Fang'),    '/assets/moves/animations/superfang.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Supersonic'),    '/assets/moves/animations/supersonic.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Supersonic'),    '/assets/moves/animations/supersonic.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Surf'),          '/assets/moves/animations/surf.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Surf'),          '/assets/moves/animations/surf.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Swift'),         '/assets/moves/animations/swift.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Swift'),         '/assets/moves/animations/swift.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Swords Dance'),  '/assets/moves/animations/swordsdance.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Swords Dance'),  '/assets/moves/animations/swordsdance.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Tackle'),        '/assets/moves/animations/tackle.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Tackle'),        '/assets/moves/animations/tackle.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Tail Whip'),     '/assets/moves/animations/tailwhip.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Tail Whip'),     '/assets/moves/animations/tailwhip.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Take Down'),     '/assets/moves/animations/takedown.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Take Down'),     '/assets/moves/animations/takedown.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Teleport'),      '/assets/moves/animations/teleport.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Teleport'),      '/assets/moves/animations/teleport.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Thrash'),        '/assets/moves/animations/thrash.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Thrash'),        '/assets/moves/animations/thrash.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Thunder'),       '/assets/moves/animations/thunder.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Thunder'),       '/assets/moves/animations/thunder.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Thunder Punch'), '/assets/moves/animations/thunderpunch.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Thunder Punch'), '/assets/moves/animations/thunderpunch.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Thunder Shock'), '/assets/moves/animations/thundershock.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Thunder Shock'), '/assets/moves/animations/thundershock.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Thunder Wave'),  '/assets/moves/animations/thunderwave.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Thunder Wave'),  '/assets/moves/animations/thunderwave.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Thunderbolt'),   '/assets/moves/animations/thunderbolt.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Thunderbolt'),   '/assets/moves/animations/thunderbolt.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Toxic'),         '/assets/moves/animations/toxic.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Toxic'),         '/assets/moves/animations/toxic.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Transform'),     '/assets/moves/animations/transform.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Transform'),     '/assets/moves/animations/transform.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Tri Attack'),    '/assets/moves/animations/triattack.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Tri Attack'),    '/assets/moves/animations/triattack.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Twineedle'),     '/assets/moves/animations/twineedle.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Twineedle'),     '/assets/moves/animations/twineedle.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Vice Grip'),     '/assets/moves/animations/vicegrip.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Vice Grip'),     '/assets/moves/animations/vicegrip.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Vine Whip'),     '/assets/moves/animations/vinewhip.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Vine Whip'),     '/assets/moves/animations/vinewhip.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Water Gun'),     '/assets/moves/animations/watergun.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Water Gun'),     '/assets/moves/animations/watergun.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Waterfall'),     '/assets/moves/animations/waterfall.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Waterfall'),     '/assets/moves/animations/waterfall.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Whirlwind'),     '/assets/moves/animations/whirlwind.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Whirlwind'),     '/assets/moves/animations/whirlwind.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Wing Attack'),   '/assets/moves/animations/wingattack.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Wing Attack'),   '/assets/moves/animations/wingattack.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Withdraw'),      '/assets/moves/animations/withdraw.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Withdraw'),      '/assets/moves/animations/withdraw.mp4', 'video/mp4'),

    ((SELECT id FROM move WHERE name = 'Wrap'),          '/assets/moves/animations/wrap.webm', 'video/webm'),
    ((SELECT id FROM move WHERE name = 'Wrap'),          '/assets/moves/animations/wrap.mp4', 'video/mp4');
