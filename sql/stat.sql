--- stat table
CREATE TABLE IF NOT EXISTS stat
(
    id
        integer
        constraint stats_pk
            primary key autoincrement,
    monster_id
        integer
        not null
        constraint
            stat_monster_id_fk
            references
                monster,
    height -- the height in inches
        real
        not null,
    weight -- the weight in pounds
        real
        not null,
    description -- dex entry
        text
);

INSERT INTO stat (monster_id, height, weight, description)
VALUES
    (
        (SELECT id FROM monster WHERE name = 'Bulbasaur'),
        28,
        15,
        'A strange seed was planted on its back at birth. The plant sprouts and grows with this Pokémon.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Ivysaur'),
        39,
        29,
        'When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Venusaur'),
        79,
        221,
        'The plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Charmander'),
        24,
        19,
        'Obviously prefers hot places. When it rains, steam is said to spout from the tip of its tail.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Charmeleon'),
        43,
        42,
        'When it swings its burning tail, it elevates the temperature to unbearably high levels.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Charizard'),
        67,
        200,
        'Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Squirtle'),
        20,
        20,
        'After birth, its back swells and hardens into a shell. Powerfully sprays foam from its mouth.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Wartortle'),
        39,
        50,
        'Often hides in water to stalk unwary prey. For swimming fast, it moves its ears to maintain balance.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Blastoise'),
        63,
        189,
        'A brutal Pokémon with pressurized water jets on its shell. They are used for high speed tackles.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Caterpie'),
        12,
        6,
        'Its short feet are tipped with suction pads that enable it to tirelessly climb slopes and walls.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Metapod'),
        28,
        22,
        'This Pokémon is vulnerable to attack while its shell is soft, exposing its weak and tender body.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Butterfree'),
        43,
        71,
        'In battle, it flaps its wings at high speed to release highly toxic dust into the air.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Weedle'),
        12,
        7,
        'Often found in forests, eating leaves. It has a sharp venomous stinger on its head.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Kakuna'),
        24,
        22,
        'Almost incapable of moving, this Pokémon can only harden its shell to protect itself from predators.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Beedrill'),
        39,
        65,
        'Flies at high speed and attacks using its large venomous stingers on its forelegs and tail.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Pidgey'),
        12,
        4,
        'A common sight in forests and woods. It flaps its wings at ground level to kick up blinding sand.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Pidgeotto'),
        43,
        66,
        'Very protective of its sprawling territorial area, this Pokémon will fiercely peck at any intruder.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Pidgeot'),
        59,
        87,
        'When hunting, it skims the surface of water at high speed to pick off unwary prey such as Magikarp.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Rattata'),
        12,
        8,
        'Bites anything when it attacks. Small and very quick, it is a common sight in many places.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Raticate'),
        28,
        41,
        'It uses its whiskers to maintain its balance. It apparently slows down if they are cut off.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Spearow'),
        12,
        4,
        'Eats bugs in grassy areas. It has to flap its short wings at high speed to stay airborne.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Fearow'),
        47,
        84,
        'With its huge and magnificent wings, it can keep aloft without ever having to land for rest. '
    ),
    (
        (SELECT id FROM monster WHERE name = 'Ekans'),
        79,
        15,
        'Moves silently and stealthily. Eats the eggs of birds, such as Pidgey and Spearow, whole.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Arbok'),
        138,
        143,
        'It is rumored that the ferocious warning markings on its belly differ from area to area.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Pikachu'),
        16,
        13,
        'When several of these Pokémon gather, their electricity could build and cause lightning storms.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Raichu'),
        31,
        66,
        'Its long tail serves as a ground to protect itself from its own high voltage power.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Sandshrew'),
        24,
        26,
        'Burrows deep underground in arid locations far from water. It only emerges to hunt for food.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Sandslash'),
        39,
        65,
        'Curls up into a spiny ball when threatened. It can roll while curled up to attack or escape.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Nidoran♀'),
        16,
        15,
        'Although small, its venomous barbs render this Pokémon dangerous. The female has smaller horns.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Nidorina'),
        31,
        44,
        'The female''s horn develops slowly. Prefers physical attacks such as clawing and biting.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Nidoqueen'),
        51,
        132,
        'Its hard scales provide strong protection. It uses its hefty bulk to execute powerful moves.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Nidoran♂'),
        20,
        20,
        'Stiffens its ears to sense danger. The larger its horns, the more powerful its secreted venom.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Nidorino'),
        35,
        43,
        'An aggressive Pokémon that is quick to attack. The horn on its head secretes a powerful venom.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Nidoking'),
        55,
        137,
        'It uses its powerful tail in battle to smash, constrict, then break the prey''s bones.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Clefairy'),
        24,
        17,
        'Its magical and cute appeal has many admirers. It is rare and found only in certain areas.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Clefable'),
        51,
        88,
        'A timid fairy Pokémon that is rarely seen. It will run and hide the moment it senses people.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Vulpix'),
        24,
        22,
        'At the time of birth, it has just one tail. The tail splits from its tip as it grows older.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Ninetales'),
        43,
        44,
        'Very smart and very vengeful. Grabbing one of its many tails could result in a 1000-year curse.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Jigglypuff'),
        20,
        12,
        'When its huge eyes light up, it sings a mysteriously soothing melody that lulls its enemies to sleep.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Wigglytuff'),
        39,
        26,
        'The body is soft and rubbery. When angered, it will suck in air and inflate itself to an enormous size.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Zubat'),
        31,
        17,
        'Forms colonies in perpetually dark places. Uses ultrasonic waves to identify and approach targets.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Golbat'),
        63,
        121,
        'Once it strikes, it will not stop draining energy from the victim even if it gets too heavy to fly.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Oddish'),
        20,
        12,
        'During the day, it keeps its face buried in the ground. At night, it wanders around sowing its seeds.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Gloom'),
        31,
        19,
        'The fluid that oozes from its mouth isn''t drool. It is a nectar that is used to attract prey.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Vileplume'),
        47,
        41,
        'The larger its petals, the more toxic pollen it contains. Its big head is heavy and hard to hold up.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Paras'),
        12,
        12,
        'Burrows to suck tree roots. The mushrooms on its back grow by drawing nutrients from the bug host.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Parasect'),
        39,
        65,
        'A host-parasite pair in which the parasite mushroom has taken over the host bug. Prefers damp places.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Venonat'),
        39,
        66,
        'Lives in the shadows of tall trees where it eats insects. It is attracted by light at night.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Venomoth'),
        59,
        28,
        'The dust-like scales covering its wings are color coded to indicate the kinds of poison it has.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Diglett'),
        8,
        2,
        'Lives about one yard underground where it feeds on plant roots. It sometimes appears above ground.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Dugtrio'),
        28,
        73,
        'A team of Diglett triplets. It triggers huge earthquakes by burrowing 60 miles underground.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Meowth'),
        16,
        9,
        'Adores circular objects. Wanders the streets on a nightly basis to look for dropped loose change.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Persian'),
        39,
        71,
        'Although its fur has many admirers, it is tough to raise as a pet because of its fickle meanness.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Psyduck'),
        19,
        43,
        'While lulling its enemies with its vacant look, this wily Pokémon will use psychokinetic powers.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Golduck'),
        67,
        169,
        'Often seen swimming elegantly by lake shores. It is often mistaken for the Japanese monster, Kappa.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Mankey'),
        20,
        62,
        'Extremely quick to anger. It could be docile one moment then thrashing away the next instant.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Primeape'),
        39,
        71,
        'Always furious and tenacious to boot. It will not abandon chasing its quarry until it is caught.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Growlithe'),
        28,
        42,
        'Very protective of its territory. It will bark and bite to repel intruders from its space.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Arcanine'),
        75,
        342,
        'A Pokémon that has been admired since the past for its beauty. It runs agilely as if on wings.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Poliwag'),
        24,
        27,
        'Its newly grown legs prevent it from running. It appears to prefer swimming than trying to stand.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Poliwhirl'),
        39,
        44,
        'Capable of living in or out of water. When out of water, it sweats to keep its body slimy.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Poliwrath'),
        51,
        119,
        'An adept swimmer at both the front crawl and breast stroke. Easily overtakes the best human swimmers.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Abra'),
        35,
        43,
        'Using its ability to read minds, it will identify impending danger and Teleport to safety.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Kadabra'),
        51,
        125,
        'It emits special alpha waves from its body that induce headaches just by being close by.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Alakazam'),
        59,
        106,
        'Its brain can outperform a super-computer. Its intelligence quotient is said to be 5,000.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Machop'),
        31,
        43,
        'Loves to build its muscles. It trains in all styles of martial arts to become even stronger.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Machoke'),
        59,
        155,
        'Its muscular body is so powerful, it must wear a power save belt to be able to regulate its motions.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Machamp'),
        63,
        287,
        'Using its heavy muscles, it throws powerful punches that can send the victim clear over the horizon.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Bellsprout'),
        28,
        9,
        'A carnivorous Pokémon that traps and eats bugs. It uses its root feet to soak up needed moisture.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Weepinbell'),
        39,
        14,
        'It spits out PoisonPowder to immobilize the enemy and then finishes it with a spray of Acid.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Victreebel'),
        67,
        34,
        'Said to live in huge colonies deep in jungles, although no one has ever returned from there.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Tentacool'),
        35,
        100,
        'Drifts in shallow seas. Anglers who hook them by accident are often punished by its stinging acid.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Tentacruel'),
        63,
        121,
        'The tentacles are normally kept short. On hunts, they are extended to ensnare and immobilize prey.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Geodude'),
        16,
        44,
        'Found in fields and mountains. Mistaking them for boulders, people often step or trip on them.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Graveler'),
        39,
        232,
        'Rolls down slopes to move. It rolls over any obstacle without slowing or changing its direction.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Golem'),
        55,
        662,
        'Its boulder-like body is extremely hard. It can easily withstand dynamite blasts without damage.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Ponyta'),
        39,
        66,
        'Its hooves are 10 times harder than diamonds. It can trample anything completely flat in little time.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Rapidash'),
        67,
        209,
        'Very competitive, this Pokémon will chase anything that moves fast in the hopes of racing it.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Slowpoke'),
        47,
        79,
        'Incredibly slow and dopey. It takes 5 seconds for it to feel pain when under attack.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Slowbro'),
        63,
        173,
        'The Shellder that is latched onto Slowpoke''s tail is said to feed on the host''s left over scraps.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Magnemite'),
        12,
        13,
        'Uses anti-gravity to stay suspended. Appears without warning and uses Thunder Wave and similar moves.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Magneton'),
        39,
        132,
        'Formed by several Magnemites linked together. They frequently appear when sunspots flare up.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Farfetch''d'),
        31,
        33,
        'The sprig of green onions it holds is its weapon. It is used much like a metal sword.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Doduo'),
        55,
        86,
        'A bird that makes up for its poor flying with its fast foot speed. Leaves giant footprints.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Dodrio'),
        71,
        188,
        'Uses its three brains to execute complex plans. While two heads sleep, one head stays awake.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Seel'),
        43,
        198,
        'The protruding horn on its head is very hard. It is used for bashing through thick ice.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Dewgong'),
        67,
        265,
        'Stores thermal energy in its body. Swims at a steady 8 knots even in intensely cold waters.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Grimer'),
        35,
        66,
        'Appears in filthy areas. Thrives by sucking up polluted sludge that is pumped out of factories.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Muk'),
        47,
        66,
        'Thickly covered with a filthy, vile sludge. It is so toxic, even its footprints contain poison.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Shellder'),
        12,
        9,
        'Its hard shell repels any kind of attack. It is vulnerable only when its shell is open.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Cloyster'),
        59,
        292,
        'When attacked, it launches its horns in quick volleys. Its innards have never been seen.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Gastly'),
        51,
        0.2,
        'Almost invisible, this gaseous Pokémon cloaks the target and puts it to sleep without notice.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Haunter'),
        63,
        0.2,
        'Because of its ability to slip through block walls, it is said to be from another dimension.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Gengar'),
        59,
        89,
        'Under a full moon, this Pokémon likes to mimic the shadows of people and laugh at their fright.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Onix'),
        346,
        463,
        'As it grows, the stone portions of its body harden to become similar to a diamond, but colored black.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Drowzee'),
        39,
        71,
        'Puts enemies to sleep then eats their dreams. Occasionally gets sick from eating bad dreams.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Hypno'),
        63,
        167,
        'When it locks eyes with an enemy, it will use a mix of PSI moves such as Hypnosis and Confusion.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Krabby'),
        16,
        14,
        'Its pincers are not only powerful weapons, they are used for balance when walking sideways.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Kingler'),
        51,
        132,
        'The large pincer has 10000 hp of crushing power. However, its huge size makes it unwieldy to use.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Voltorb'),
        20,
        23,
        'Usually found in power plants. Easily mistaken for a Poké Ball, they have zapped many people.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Electrode'),
        47,
        147,
        'It stores electric energy under very high pressure. It often explodes with little or no provocation.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Exeggcute'),
        16,
        6,
        'Often mistaken for eggs. When disturbed, they quickly gather and attack in swarms.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Exeggutor'),
        79,
        265,
        'Legend has it that on rare occasions, one of its heads will drop off and continue on as an Exeggcute.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Cubone'),
        16,
        14,
        'Because it never removes its skull helmet, no one has ever seen this Pokémon''s real face.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Marowak'),
        39,
        99,
        'The bone it holds is its key weapon. It throws the bone skillfully like a boomerang to KO targets.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Hitmonlee'),
        59,
        110,
        'When in a hurry, its legs lengthen progressively. It runs smoothly with extra long, loping strides.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Hitmonchan'),
        55,
        111,
        'While apparently doing nothing, it fires punches in lightning fast volleys that are impossible to see.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Lickitung'),
        47,
        144,
        'Its tongue can be extended like a chameleon''s. It leaves a tingling sensation when it licks enemies.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Koffing'),
        24,
        2,
        'Because it stores several kinds of toxic gases in its body, it is prone to exploding without warning.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Weezing'),
        47,
        21,
        'Where two kinds of poison gases meet, 2 Koffings can fuse into a Weezing over many years.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Rhyhorn'),
        39,
        254,
        'Its massive bones are 1000 times harder than human bones. It can easily knock a trailer flying.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Rhydon'),
        75,
        265,
        'Protected by an armor-like hide, it is capable of living in molten lava of 3,600 degrees.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Chansey'),
        43,
        76,
        'A rare and elusive Pokémon that is said to bring happiness to those who manage to get it.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Tangela'),
        39,
        77,
        'The whole body is swathed with wide vines that are similar to seaweed. Its vines shake as it walks.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Kangaskhan'),
        87,
        176,
        'The infant rarely ventures out of its mother''s protective pouch until it is 3 years old.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Horsea'),
        16,
        18,
        'Known to shoot down flying bugs with precision blasts of ink from the surface of the water.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Seadra'),
        47,
        55,
        'Capable of swimming backwards by rapidly flapping its wing-like pectoral fins and stout tail.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Goldeen'),
        24,
        33,
        'Its tail fin billows like an elegant ballroom dress, giving it the nickname of the Water Queen.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Seaking'),
        51,
        86,
        'In the autumn spawning season, they can be seen swimming powerfully up rivers and creeks.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Staryu'),
        19,
        76,
        'An enigmatic Pokémon that can effortlessly regenerate any appendage it loses in battle.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Starmie'),
        43,
        176,
        'Its central core glows with the seven colors of the rainbow. Some people value the core as a gem.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Mr. Mime'),
        51,
        120,
        'If interrupted while it is miming, it will slap around the offender with its broad hands.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Scyther'),
        59,
        123,
        'With ninja-like agility and speed, it can create the illusion that there is more than one.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Jynx'),
        55,
        90,
        'It seductively wiggles its hips as it walks. It can cause people to dance in unison with it.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Electabuzz'),
        43,
        66,
        'Normally found near power plants, they can wander away and cause major blackouts in cities.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Magmar'),
        51,
        98,
        'Its body always burns with an orange glow that enables it to hide perfectly among flames.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Pinsir'),
        59,
        121,
        'If it fails to crush the victim in its pincers, it will swing it around and toss it hard.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Tauros'),
        55,
        195,
        'When it targets an enemy, it charges furiously while whipping its body with its long tails.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Magikarp'),
        35,
        22,
        'In the distant past, it was somewhat stronger than the horribly weak descendants that exist today.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Gyarados'),
        256,
        518,
        'Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Lapras'),
        98,
        485,
        'A Pokémon that has been overhunted almost to extinction. It can ferry people across the water.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Ditto'),
        12,
        9,
        'Capable of copying an enemy''s genetic code to instantly transform itself into a duplicate of the enemy.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Eevee'),
        12,
        14,
        'Its genetic code is irregular. It may mutate if it is exposed to radiation from Evolution stones.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Vaporeon'),
        39,
        64,
        'Lives close to water. Its long tail is ridged with a fin which is often mistaken for a mermaid''s.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Jolteon'),
        31,
        54,
        'It accumulates negative ions in the atmosphere to blast out 10000-volt lightning bolts.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Flareon'),
        35,
        55,
        'When storing thermal energy in its body, its temperature could soar to over 1600 degrees.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Porygon'),
        31,
        80,
        'A Pokémon that consists entirely of programming code. Capable of moving freely in cyberspace.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Omanyte'),
        16,
        17,
        'Although long extinct, in rare cases, it can be genetically resurrected from fossils.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Omastar'),
        39,
        77,
        'A prehistoric Pokémon that died out when its heavy shell made it impossible to catch prey.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Kabuto'),
        20,
        25,
        'A Pokémon that was resurrected from a fossil found in what was once the ocean floor eons ago.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Kabutops'),
        51,
        89,
        'Its sleek shape is perfect for swimming. It slashes prey with its claws and drains the body fluids.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Aerodactyl'),
        71,
        130,
        'A ferocious, prehistoric Pokémon that goes for the enemy''s throat with its serrated saw-like fangs.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Snorlax'),
        83,
        1014,
        'Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Articuno'),
        67,
        122,
        'A legendary bird Pokémon that is said to appear to doomed people who are lost in icy mountains.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Zapdos'),
        63,
        116,
        'A legendary bird Pokémon that is said to appear from clouds while dropping enormous lightning bolts.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Moltres'),
        79,
        132,
        'Known as the legendary bird of fire. Every flap of its wings creates a dazzling flash of flames.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Dratini'),
        71,
        7,
        'Long considered a mythical Pokémon until recently when a small colony was found living underwater.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Dragonair'),
        157,
        36,
        'A mystical Pokémon that exudes a gentle aura. Has the ability to change climate conditions.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Dragonite'),
        87,
        463,
        'An extremely rarely seen marine Pokémon. Its intelligence is said to match that of humans.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Mewtwo'),
        79,
        269,
        'It was created by a scientist after years of horrific gene splicing and DNA engineering experiments.'
    ),
    (
        (SELECT id FROM monster WHERE name = 'Mew'),
        16,
        9,
        'So rare that it is still said to be a mirage by many experts. Only a few people have seen it worldwide.'
    );
