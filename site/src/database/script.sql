Create database sombrasSombrias;

Use sombrasSombrias;

Create Table usuario(
idUsuario int primary key auto_increment,
userName varchar(45),
senha varchar(45),
email varchar(45)
);

Create Table musica(
idMusica int primary key auto_increment,
nome varchar(45),
ytVidId varchar(200),
vidBanner varchar(100),
criadorVid varchar(100),
serie int,
bossDesc varchar(200)
);

Create Table usuarioCurtida(
idUsuarioCurtida int auto_increment,
fkUsuario int,
fkMusica int,
Constraint fkUsuário foreign key(fkUsuario) references usuario(idUsuario),
Constraint fkMusica foreign key(fkMusica) references musica(idMusica),
Constraint pksCompostas primary key(idUsuarioCurtida, fkUsuario, fkMusica)
);

insert into usuario values
	(null, 'hyum', 123, 'hyum@gmail.com');

select * from usuario;

insert into musica values
(null, 'Iudex Gundyr', 'aeowUUBEu28', 'gundyrBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Vordt of the Boreal Valley', '1dSilEmz7FE', 'vordtBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Curse-Rotted Greatwood', 'SjxZKwo7J5I', 'greatWoodBanner.jpg', 'Yuka Kitamura', 3),
(null, '​​​​​Crystal Sage', '0AR4O7Hqrs4', 'CSagesBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Deacons Of The Deep', '5cQ71klD-NI', 'deaconsBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Abyss Watchers', 'slzTJtj4iG8&', 'abyssWatchersrBanner.jpg', 'Yuka Kitamura', 3),
(null, 'High Lord Wolnir', 'qRYutBSItE8', 'wolnirBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Old Demon King', 'B0jBjO8vCSk', 'oldDemonKingBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Pontiff Sulyvahn', 'yvg9bccbMBI', 'sulyvahnBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Yhorm, The Giant', 'kh51w5BtuoA', 'yhormBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Aldrich, Devourer Of Gods', 'czbDx2kbeA8', 'aldrichBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Dancer Of The Boreal Valley', '9daQ74b4Oa4', 'dancerOTBVBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Oceiros, The Consumed King', 'sUv-jVgG8wc', 'oceirosBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Lothric, Younger Prince', 'icU0IPfv_-o', 'dragonSlayerArmourBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Lorian & Lothric', 'aTtgmLH8cZ4', 'lorian&Lothric.jpg', 'Yuka Kitamura', 3),
(null, 'Nameless King', 'HXkZQudN7qU', 'dragonSlayerArmourBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Nameless King', 'icU0IPfv_-o', 'namelssKingBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Champion Gravetender', 'FihUgD6AFBY', 'CGCGBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Demon Prince', '3wTFbB2PYSs', 'demonPrinceBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Halflight, Spear of the Church', '5GNqYZ8-47M', 'halfLightBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Darkeater Midir', '-jg5xepY5MU', 'MidirlBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Slave Knight Gael', 'fqQ1Xum8uNI', 'Friede&AriandelBanner.jpg', 'Yuka Kitamura', 3),
(null, 'Soul of Cinder', 'ooCb7rwKfBI', 'soulOfCinderBanner.jpg', 'Yuka Kitamura', 3);

insert into musica values
(null, 'Asylum Demon', 'Q-WQhltJjMo', 'asylumDemonBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Taurus Demon', 'Q-WQhltJjMo', 'taurusDemonBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Demon Firesage', 'Q-WQhltJjMo', 'demonFiresageBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Bell Gargoyle', 'g7xpyhEw6H0', 'bellGargoyleBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Capra Demon', 'AfA9WB2KD4Q', 'capraDemonBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Centipede Demon', 'AfA9WB2KD4Q', 'centipedeDemonBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Ceaseless Discharge', 'mLu9vKi8E1Y', 'ceaselessBannerBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Chaos Witch Quelaag', 'jsqViZdHPJE', 'quelaagBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Crossbreed Priscilla', 'GbYGXYmOF8k', 'priscillaBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Dark Sun Gwyndolin', 'wNvujJEQ864', 'gwyndolinBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Four Kings', 'hs59egXnb3c', 'fourKingsBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Gaping Dragon', '6ukC3N1rkzQ', 'gapingDemonBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Great Grey Wolf Sif', 'RZVyHH-voR8', 'greatGreyWolfSifBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Gwyn, Lord of Cinder', 'AB6sOhQan9Y', 'gwynBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Moonlight Butterfly', 'wNvujJEQ864', 'moonLightBFBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Ornstein and Smough', 'Nsps0I58yUM', 'ornsteinSmoughBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Pinwheel ', 'sur4qN_4Oi8', 'pinwheelBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Gravelord Nito', 'kzmsh7_vgW8', 'NitoBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Seath the Scaleless', '6gIrG8SEKvU', 'seathBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Stray Demon', 'K5dLklS_QSY', 'strayDemonBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Iron Golem', 'K5dLklS_QSY', 'ironGolemBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'The Bed of Chaos', 'FlUaJ3goJ5c', 'bedOfChaosBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Artorias The Abysswalker', 'vK0w67B4EtU', 'artoriasBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Kalameet', 'TluPWafPTek', 'kalameetBanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Manus, Father of the Abyss', 'ujWjWcE9wkk', 'ManusFOTABanner.jpg', 'Motoi Sakuraba', 1),
(null, 'Sanctuary Guardian', '_bLzC1xWxPw', 'SanctuaryGuardianBanner.jpg', 'Motoi Sakuraba', 1);

insert into musica values
(null, 'The Last Giant', 'P0SNu7vO1BA', 'theLastGiantBanner.jpg', 'Yuka Kitamu', 2),
(null, 'The Pursuer', 't4V8Qn-hHF8', 'pursuerBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Executioners Chariot', 'n40e77xioCI', 'executionersChariotBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Looking Glass Knight', 'EpxauXRvN8c', 'lookingGlassKnightBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Skeleton Lord', 'aYjd7y9MfZE', 'skeletonLordBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Flexile Sentry', 'bswWXpB5mDM', 'flexileSentryBanner.jpg', 'Yuka Kitamu', 2),
(null, 'The Lost Sinner', 'dUmLbVh2cxc', 'lostSinnerBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Belfry Gargoyle', '_3ynHLs6pM8', 'belfryGargoyleBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Ruin Sentinel', 'rmpqBuwdiXc', 'ruinSentinelBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Royal Rat Authority', 'HAkyoXnu_PI', 'royalRatAuthorityBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Royal Rat Vanguard', 'N7YXDF4GPwI', 'royalRatVanguardBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Scorpioness Najka', 'Q-WQhltJjMo', 'asylumDemonBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Asylum Demon', 'ZtHAHMRLijM', 'najkaBanner.jpg', 'Yuka Kitamu', 2),
(null, 'The Dukes Dear Freja', 'MwAFbJMxTqc', 'FrejaBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Mytha, the Baneful Queen', '0N8R1Vtz1UU', 'mythaBanner.jpg', 'Yuka Kitamu', 2),
(null, 'The Rotten', '3CtrKH1uLW8', 'theRottenBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Old Dragonslayer', 'PPEp8-8RyaU', 'oldDragonslayerBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Covetous Demon', 'y4Rz0H-tMFw', 'covetousDemonBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Smelter Demon', 'u6IETf-vuxA', 'smelterDemonBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Old Iron King', 'pYy533AKVo8', 'oldIronKingBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Guardian Dragon', '_dU8jxoL4Js', 'guardianDragonBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Demon of Song', 'tYjYeK5S7D0', 'demonOfSongBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Velstadt, the Royal Aegis', '0EIiSMDCfmo', 'veldstadtBanner.jpg', 'Yuka Kitamu', 2),
(null, 'King Vendrick', 'a4tXzOSqLIc', 'vendrickBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Darklurker', 'hySWItNZE60', 'darkLurkerBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Dragonrider', 'iAyPu_3ym_c', 'dragonRiderBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Ancient Dragon', 'Ag19zVGk5iQ', 'ancientDragonBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Throne Defender, Throne Watcher ', 'oHuXy98_ixM', 'watcher&DefenderBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Nashandra', 'xjjhR0wWtt0', 'NashandraBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Aldia, Scholar of the First Sin', 'jLZ18bLK0EA', 'aldiaScholarOfTheFirstSinBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Elana, the Squalid Queen', 'r37tTTEjjUo', 'ElanaBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Sinh, the Slumbering Dragon', 'YC4OITJLeQg', 'sinhBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Graverobber, Varg & Cerah', 'vdwa0nFuc_4', 'graverobberVargCerahBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Fume Knight', '_dnfeUICQUs', 'fumeKnightBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Sir Alonne', 'P-R1FmPjClA', 'sirAlonneBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Asylum Demon', 'Q-WQhltJjMo', 'asylumDemonBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Burnt Ivory King', 'FC4OPhkU', 'ivoryKingBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Aava, the Kings Pet', 'thX_5miEWVQ', 'aavaBanner.jpg', 'Yuka Kitamu', 2),
(null, 'Zallen and Lud', '8X9Ox8Bnr9M', 'zallen&LudBanner.jpg', 'Yuka Kitamu', 2);