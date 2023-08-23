--- Illustration table
CREATE TABLE IF NOT EXISTS illustration
(
    id integer
    constraint illustration_pk
    primary key autoincrement,
    monster_id integer,
    path TEXT
);

INSERT INTO illustration (monster_id, path)
VALUES ((SELECT id FROM monster WHERE name = 'Bulbasaur'), 'assets/monsters/illustrations/0001.png'),
       ((SELECT id FROM monster WHERE name = 'Ivysaur'), 'assets/monsters/illustrations/0002.png'),
       ((SELECT id FROM monster WHERE name = 'Venusaur'), 'assets/monsters/illustrations/0003.png'),
       ((SELECT id FROM monster WHERE name = 'Charmander'), 'assets/monsters/illustrations/0004.png'),
       ((SELECT id FROM monster WHERE name = 'Charmeleon'), 'assets/monsters/illustrations/0005.png'),
       ((SELECT id FROM monster WHERE name = 'Charizard'), 'assets/monsters/illustrations/0006.png'),
       ((SELECT id FROM monster WHERE name = 'Squirtle'), 'assets/monsters/illustrations/0007.png'),
       ((SELECT id FROM monster WHERE name = 'Wartortle'), 'assets/monsters/illustrations/0008.png'),
       ((SELECT id FROM monster WHERE name = 'Blastoise'), 'assets/monsters/illustrations/0009.png'),
       ((SELECT id FROM monster WHERE name = 'Caterpie'), 'assets/monsters/illustrations/0010.png'),
       ((SELECT id FROM monster WHERE name = 'Metapod'), 'assets/monsters/illustrations/0011.png'),
       ((SELECT id FROM monster WHERE name = 'Butterfree'), 'assets/monsters/illustrations/0012.png'),
       ((SELECT id FROM monster WHERE name = 'Weedle'), 'assets/monsters/illustrations/0013.png'),
       ((SELECT id FROM monster WHERE name = 'Kakuna'), 'assets/monsters/illustrations/0014.png'),
       ((SELECT id FROM monster WHERE name = 'Beedrill'), 'assets/monsters/illustrations/0015.png'),
       ((SELECT id FROM monster WHERE name = 'Pidgey'), 'assets/monsters/illustrations/0016.png'),
       ((SELECT id FROM monster WHERE name = 'Pidgeotto'), 'assets/monsters/illustrations/0017.png'),
       ((SELECT id FROM monster WHERE name = 'Pidgeot'), 'assets/monsters/illustrations/0018.png'),
       ((SELECT id FROM monster WHERE name = 'Rattata'), 'assets/monsters/illustrations/0019.png'),
       ((SELECT id FROM monster WHERE name = 'Raticate'), 'assets/monsters/illustrations/0020.png'),
       ((SELECT id FROM monster WHERE name = 'Spearow'), 'assets/monsters/illustrations/0021.png'),
       ((SELECT id FROM monster WHERE name = 'Fearow'), 'assets/monsters/illustrations/0022.png'),
       ((SELECT id FROM monster WHERE name = 'Ekans'), 'assets/monsters/illustrations/0023.png'),
       ((SELECT id FROM monster WHERE name = 'Arbok'), 'assets/monsters/illustrations/0024.png'),
       ((SELECT id FROM monster WHERE name = 'Pikachu'), 'assets/monsters/illustrations/0025.png'),
       ((SELECT id FROM monster WHERE name = 'Raichu'), 'assets/monsters/illustrations/0026.png'),
       ((SELECT id FROM monster WHERE name = 'Sandshrew'), 'assets/monsters/illustrations/0027.png'),
       ((SELECT id FROM monster WHERE name = 'Sandslash'), 'assets/monsters/illustrations/0028.png'),
       ((SELECT id FROM monster WHERE name = 'Nidoran♀'), 'assets/monsters/illustrations/0029.png'),
       ((SELECT id FROM monster WHERE name = 'Nidorina'), 'assets/monsters/illustrations/0030.png'),
       ((SELECT id FROM monster WHERE name = 'Nidoqueen'), 'assets/monsters/illustrations/0031.png'),
       ((SELECT id FROM monster WHERE name = 'Nidoran♂'), 'assets/monsters/illustrations/0032.png'),
       ((SELECT id FROM monster WHERE name = 'Nidorino'), 'assets/monsters/illustrations/0033.png'),
       ((SELECT id FROM monster WHERE name = 'Nidoking'), 'assets/monsters/illustrations/0034.png'),
       ((SELECT id FROM monster WHERE name = 'Clefairy'), 'assets/monsters/illustrations/0035.png'),
       ((SELECT id FROM monster WHERE name = 'Clefable'), 'assets/monsters/illustrations/0036.png'),
       ((SELECT id FROM monster WHERE name = 'Vulpix'), 'assets/monsters/illustrations/0037.png'),
       ((SELECT id FROM monster WHERE name = 'Ninetales'), 'assets/monsters/illustrations/0038.png'),
       ((SELECT id FROM monster WHERE name = 'Jigglypuff'), 'assets/monsters/illustrations/0039.png'),
       ((SELECT id FROM monster WHERE name = 'Wigglytuff'), 'assets/monsters/illustrations/0040.png'),
       ((SELECT id FROM monster WHERE name = 'Zubat'), 'assets/monsters/illustrations/0041.png'),
       ((SELECT id FROM monster WHERE name = 'Golbat'), 'assets/monsters/illustrations/0042.png'),
       ((SELECT id FROM monster WHERE name = 'Oddish'), 'assets/monsters/illustrations/0043.png'),
       ((SELECT id FROM monster WHERE name = 'Gloom'), 'assets/monsters/illustrations/0044.png'),
       ((SELECT id FROM monster WHERE name = 'Vileplume'), 'assets/monsters/illustrations/0045.png'),
       ((SELECT id FROM monster WHERE name = 'Paras'), 'assets/monsters/illustrations/0046.png'),
       ((SELECT id FROM monster WHERE name = 'Parasect'), 'assets/monsters/illustrations/0047.png'),
       ((SELECT id FROM monster WHERE name = 'Venonat'), 'assets/monsters/illustrations/0048.png'),
       ((SELECT id FROM monster WHERE name = 'Venomoth'), 'assets/monsters/illustrations/0049.png'),
       ((SELECT id FROM monster WHERE name = 'Diglett'), 'assets/monsters/illustrations/0050.png'),
       ((SELECT id FROM monster WHERE name = 'Dugtrio'), 'assets/monsters/illustrations/0051.png'),
       ((SELECT id FROM monster WHERE name = 'Meowth'), 'assets/monsters/illustrations/0052.png'),
       ((SELECT id FROM monster WHERE name = 'Persian'), 'assets/monsters/illustrations/0053.png'),
       ((SELECT id FROM monster WHERE name = 'Psyduck'), 'assets/monsters/illustrations/0054.png'),
       ((SELECT id FROM monster WHERE name = 'Golduck'), 'assets/monsters/illustrations/0055.png'),
       ((SELECT id FROM monster WHERE name = 'Mankey'), 'assets/monsters/illustrations/0056.png'),
       ((SELECT id FROM monster WHERE name = 'Primeape'), 'assets/monsters/illustrations/0057.png'),
       ((SELECT id FROM monster WHERE name = 'Growlithe'), 'assets/monsters/illustrations/0058.png'),
       ((SELECT id FROM monster WHERE name = 'Arcanine'), 'assets/monsters/illustrations/0059.png'),
       ((SELECT id FROM monster WHERE name = 'Poliwag'), 'assets/monsters/illustrations/0060.png'),
       ((SELECT id FROM monster WHERE name = 'Poliwhirl'), 'assets/monsters/illustrations/0061.png'),
       ((SELECT id FROM monster WHERE name = 'Poliwrath'), 'assets/monsters/illustrations/0062.png'),
       ((SELECT id FROM monster WHERE name = 'Abra'), 'assets/monsters/illustrations/0063.png'),
       ((SELECT id FROM monster WHERE name = 'Kadabra'), 'assets/monsters/illustrations/0064.png'),
       ((SELECT id FROM monster WHERE name = 'Alakazam'), 'assets/monsters/illustrations/0065.png'),
       ((SELECT id FROM monster WHERE name = 'Machop'), 'assets/monsters/illustrations/0066.png'),
       ((SELECT id FROM monster WHERE name = 'Machoke'), 'assets/monsters/illustrations/0067.png'),
       ((SELECT id FROM monster WHERE name = 'Machamp'), 'assets/monsters/illustrations/0068.png'),
       ((SELECT id FROM monster WHERE name = 'Bellsprout'), 'assets/monsters/illustrations/0069.png'),
       ((SELECT id FROM monster WHERE name = 'Weepinbell'), 'assets/monsters/illustrations/0070.png'),
       ((SELECT id FROM monster WHERE name = 'Victreebel'), 'assets/monsters/illustrations/0071.png'),
       ((SELECT id FROM monster WHERE name = 'Tentacool'), 'assets/monsters/illustrations/0072.png'),
       ((SELECT id FROM monster WHERE name = 'Tentacruel'), 'assets/monsters/illustrations/0073.png'),
       ((SELECT id FROM monster WHERE name = 'Geodude'), 'assets/monsters/illustrations/0074.png'),
       ((SELECT id FROM monster WHERE name = 'Graveler'), 'assets/monsters/illustrations/0075.png'),
       ((SELECT id FROM monster WHERE name = 'Golem'), 'assets/monsters/illustrations/0076.png'),
       ((SELECT id FROM monster WHERE name = 'Ponyta'), 'assets/monsters/illustrations/0077.png'),
       ((SELECT id FROM monster WHERE name = 'Rapidash'), 'assets/monsters/illustrations/0078.png'),
       ((SELECT id FROM monster WHERE name = 'Slowpoke'), 'assets/monsters/illustrations/0079.png'),
       ((SELECT id FROM monster WHERE name = 'Slowbro'), 'assets/monsters/illustrations/0080.png'),
       ((SELECT id FROM monster WHERE name = 'Magnemite'), 'assets/monsters/illustrations/0081.png'),
       ((SELECT id FROM monster WHERE name = 'Magneton'), 'assets/monsters/illustrations/0082.png'),
       ((SELECT id FROM monster WHERE name = 'Farfetch''d'), 'assets/monsters/illustrations/0083.png'),
       ((SELECT id FROM monster WHERE name = 'Doduo'), 'assets/monsters/illustrations/0084.png'),
       ((SELECT id FROM monster WHERE name = 'Dodrio'), 'assets/monsters/illustrations/0085.png'),
       ((SELECT id FROM monster WHERE name = 'Seel'), 'assets/monsters/illustrations/0086.png'),
       ((SELECT id FROM monster WHERE name = 'Dewgong'), 'assets/monsters/illustrations/0087.png'),
       ((SELECT id FROM monster WHERE name = 'Grimer'), 'assets/monsters/illustrations/0088.png'),
       ((SELECT id FROM monster WHERE name = 'Muk'), 'assets/monsters/illustrations/0089.png'),
       ((SELECT id FROM monster WHERE name = 'Shellder'), 'assets/monsters/illustrations/0090.png'),
       ((SELECT id FROM monster WHERE name = 'Cloyster'), 'assets/monsters/illustrations/0091.png'),
       ((SELECT id FROM monster WHERE name = 'Gastly'), 'assets/monsters/illustrations/0092.png'),
       ((SELECT id FROM monster WHERE name = 'Haunter'), 'assets/monsters/illustrations/0093.png'),
       ((SELECT id FROM monster WHERE name = 'Gengar'), 'assets/monsters/illustrations/0094.png'),
       ((SELECT id FROM monster WHERE name = 'Onix'), 'assets/monsters/illustrations/0095.png'),
       ((SELECT id FROM monster WHERE name = 'Drowzee'), 'assets/monsters/illustrations/0096.png'),
       ((SELECT id FROM monster WHERE name = 'Hypno'), 'assets/monsters/illustrations/0097.png'),
       ((SELECT id FROM monster WHERE name = 'Krabby'), 'assets/monsters/illustrations/0098.png'),
       ((SELECT id FROM monster WHERE name = 'Kingler'), 'assets/monsters/illustrations/0099.png'),
       ((SELECT id FROM monster WHERE name = 'Voltorb'), 'assets/monsters/illustrations/0100.png'),
       ((SELECT id FROM monster WHERE name = 'Electrode'), 'assets/monsters/illustrations/0101.png'),
       ((SELECT id FROM monster WHERE name = 'Exeggcute'), 'assets/monsters/illustrations/0102.png'),
       ((SELECT id FROM monster WHERE name = 'Exeggutor'), 'assets/monsters/illustrations/0103.png'),
       ((SELECT id FROM monster WHERE name = 'Cubone'), 'assets/monsters/illustrations/0104.png'),
       ((SELECT id FROM monster WHERE name = 'Marowak'), 'assets/monsters/illustrations/0105.png'),
       ((SELECT id FROM monster WHERE name = 'Hitmonlee'), 'assets/monsters/illustrations/0106.png'),
       ((SELECT id FROM monster WHERE name = 'Hitmonchan'), 'assets/monsters/illustrations/0107.png'),
       ((SELECT id FROM monster WHERE name = 'Lickitung'), 'assets/monsters/illustrations/0108.png'),
       ((SELECT id FROM monster WHERE name = 'Koffing'), 'assets/monsters/illustrations/0109.png'),
       ((SELECT id FROM monster WHERE name = 'Weezing'), 'assets/monsters/illustrations/0110.png'),
       ((SELECT id FROM monster WHERE name = 'Rhyhorn'), 'assets/monsters/illustrations/0111.png'),
       ((SELECT id FROM monster WHERE name = 'Rhydon'), 'assets/monsters/illustrations/0112.png'),
       ((SELECT id FROM monster WHERE name = 'Chansey'), 'assets/monsters/illustrations/0113.png'),
       ((SELECT id FROM monster WHERE name = 'Tangela'), 'assets/monsters/illustrations/0114.png'),
       ((SELECT id FROM monster WHERE name = 'Kangaskhan'), 'assets/monsters/illustrations/0115.png'),
       ((SELECT id FROM monster WHERE name = 'Horsea'), 'assets/monsters/illustrations/0116.png'),
       ((SELECT id FROM monster WHERE name = 'Seadra'), 'assets/monsters/illustrations/0117.png'),
       ((SELECT id FROM monster WHERE name = 'Goldeen'), 'assets/monsters/illustrations/0118.png'),
       ((SELECT id FROM monster WHERE name = 'Seaking'), 'assets/monsters/illustrations/0119.png'),
       ((SELECT id FROM monster WHERE name = 'Staryu'), 'assets/monsters/illustrations/0120.png'),
       ((SELECT id FROM monster WHERE name = 'Starmie'), 'assets/monsters/illustrations/0121.png'),
       ((SELECT id FROM monster WHERE name = 'Mr. Mime'), 'assets/monsters/illustrations/0122.png'),
       ((SELECT id FROM monster WHERE name = 'Scyther'), 'assets/monsters/illustrations/0123.png'),
       ((SELECT id FROM monster WHERE name = 'Jynx'), 'assets/monsters/illustrations/0124.png'),
       ((SELECT id FROM monster WHERE name = 'Electabuzz'), 'assets/monsters/illustrations/0125.png'),
       ((SELECT id FROM monster WHERE name = 'Magmar'), 'assets/monsters/illustrations/0126.png'),
       ((SELECT id FROM monster WHERE name = 'Pinsir'), 'assets/monsters/illustrations/0127.png'),
       ((SELECT id FROM monster WHERE name = 'Tauros'), 'assets/monsters/illustrations/0128.png'),
       ((SELECT id FROM monster WHERE name = 'Magikarp'), 'assets/monsters/illustrations/0129.png'),
       ((SELECT id FROM monster WHERE name = 'Gyarados'), 'assets/monsters/illustrations/0130.png'),
       ((SELECT id FROM monster WHERE name = 'Lapras'), 'assets/monsters/illustrations/0131.png'),
       ((SELECT id FROM monster WHERE name = 'Ditto'), 'assets/monsters/illustrations/0132.png'),
       ((SELECT id FROM monster WHERE name = 'Eevee'), 'assets/monsters/illustrations/0133.png'),
       ((SELECT id FROM monster WHERE name = 'Vaporeon'), 'assets/monsters/illustrations/0134.png'),
       ((SELECT id FROM monster WHERE name = 'Jolteon'), 'assets/monsters/illustrations/0135.png'),
       ((SELECT id FROM monster WHERE name = 'Flareon'), 'assets/monsters/illustrations/0136.png'),
       ((SELECT id FROM monster WHERE name = 'Porygon'), 'assets/monsters/illustrations/0137.png'),
       ((SELECT id FROM monster WHERE name = 'Omanyte'), 'assets/monsters/illustrations/0138.png'),
       ((SELECT id FROM monster WHERE name = 'Omastar'), 'assets/monsters/illustrations/0139.png'),
       ((SELECT id FROM monster WHERE name = 'Kabuto'), 'assets/monsters/illustrations/0140.png'),
       ((SELECT id FROM monster WHERE name = 'Kabutops'), 'assets/monsters/illustrations/0141.png'),
       ((SELECT id FROM monster WHERE name = 'Aerodactyl'), 'assets/monsters/illustrations/0142.png'),
       ((SELECT id FROM monster WHERE name = 'Snorlax'), 'assets/monsters/illustrations/0143.png'),
       ((SELECT id FROM monster WHERE name = 'Articuno'), 'assets/monsters/illustrations/0144.png'),
       ((SELECT id FROM monster WHERE name = 'Zapdos'), 'assets/monsters/illustrations/0145.png'),
       ((SELECT id FROM monster WHERE name = 'Moltres'), 'assets/monsters/illustrations/0146.png'),
       ((SELECT id FROM monster WHERE name = 'Dratini'), 'assets/monsters/illustrations/0147.png'),
       ((SELECT id FROM monster WHERE name = 'Dragonair'), 'assets/monsters/illustrations/0148.png'),
       ((SELECT id FROM monster WHERE name = 'Dragonite'), 'assets/monsters/illustrations/0149.png'),
       ((SELECT id FROM monster WHERE name = 'Mewtwo'), 'assets/monsters/illustrations/0150.png'),
       ((SELECT id FROM monster WHERE name = 'Mew'), 'assets/monsters/illustrations/0151.png')
;
