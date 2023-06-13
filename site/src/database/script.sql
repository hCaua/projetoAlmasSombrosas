Create database sombrasSombrias;
Use sombrasSombrias;

Create Table usuario(
idUsuario int primary key auto_increment,
userName varchar(45),
email varchar(45)
);

create table senhaUsuario(
idSenha int auto_increment,
senha varchar(45),
fkUsuario int,
constraint foreign key (fkUsuario) references usuario(idUsuario),
constraint primary key (idSenha, fkUsuario)
);

select usuario.*, senhaUsuario.* from usuario join senhaUsuario on idUsuario = fkUsuario where senha = 'asd' and userName = 'asd';

Create Table musica(
idMusica int primary key auto_increment,
nome varchar(45),
ytVidId varchar(200),
vidBanner varchar(100),
criadorVid varchar(100),
serie int,
bossDesc varchar(200)
);

select idUsuario from usuario where userName = corintias;

-- create table view(
-- idView int auto_increment,
-- fkUsuario int,
-- fkMusica int,
-- constraint foreign key (fkUsuario) references usuario(idUsuario),
-- constraint  foreign key (fkMusica) references musica(idMusica),
-- constraint primary key (idView, fkUsuario, fkMusica)
-- );

Create Table usuarioCurtida(
idUsuarioCurtida int auto_increment,
fkUsuario int,
fkMusica int,
Constraint fkUsuario foreign key(fkUsuario) references usuario(idUsuario),
Constraint fkMusica foreign key(fkMusica) references musica(idMusica),
Constraint pksCompostas primary key(idUsuarioCurtida, fkUsuario, fkMusica)
);


-- create table musicaUsuario(
-- idMusicaUsuario int auto_increment,
-- fkUsuario int,
-- constraint foreign key (fkUsuario) references usuario(idUsuario),
-- constraint primary key (idMusicaUsuario, fkUsuario),
-- nome varchar(50),
-- ytVidId varchar(100),
-- criadorVid varchar(100)
-- );

-- create table viewMusicaUsuario(
-- idViewMusicaUsuario int auto_increment,
-- fkUsuario int,
-- fkMusica int,
-- constraint foreign key (fkUsuario) references usuario(idUsuario),
-- constraint  foreign key (fkMusica) references musicaUsuario(idMusicaUsuario),
-- constraint primary key (idViewMusicaUsuario, fkUsuario, fkMusica)
-- );

-- Create Table usuarioCurtidaMusicaUsuario(
-- idUsuarioCurtidaMusicaUsuario int auto_increment,
-- fkUsuario int,
-- fkMusica int,
-- Constraint foreign key(fkUsuario) references usuario(idUsuario),
-- Constraint foreign key(fkMusica) references musicaUsuario(idMusicaUsuario),
-- Constraint pksCompostas primary key(idUsuarioCurtidaMusicaUsuario, fkUsuario, fkMusica)
-- );




-- insert into musicaUsuario values
-- (null, 1, 'desgraça dos inferno', 'zosskhYNyHA','Cauã Gustavo');

-- insert into musica values
-- (null, 1, 'desgraça dos inferno', '_hqMALWpHD0','Cauã Gustavo');

-- insert into musica values
-- (null, 1, 'Coringas do flamengo', '7ZUe-cHbVU8', 'Leandro Coelho');



insert into usuario values
	(null, 'hyum', 'hyum@gmail.com');

select * from usuario;

insert into musica values
(null, 'Iudex Gundyr', 'aeowUUBEu28', 'gundyrBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'Vordt of the Boreal Valley', '1dSilEmz7FE', 'vordtBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'Curse-Rotted Greatwood', 'SjxZKwo7J5I', 'greatWoodBanner.jpg', 'Yuka Kitamura', 3, null),
(null, '​​​​​Crystal Sage', '0AR4O7Hqrs4', 'CSagesBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'Deacons Of The Deep', '5cQ71klD-NI', 'deaconsBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'Abyss Watchers', 'slzTJtj4iG8&', 'abyssWatchersrBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'High Lord Wolnir', 'qRYutBSItE8', 'wolnirBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'Old Demon King', 'B0jBjO8vCSk', 'oldDemonKingBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'Pontiff Sulyvahn', 'yvg9bccbMBI', 'sulyvahnBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'Yhorm, The Giant', 'kh51w5BtuoA', 'yhormBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'Aldrich, Devourer Of Gods', 'czbDx2kbeA8', 'aldrichBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'Dancer Of The Boreal Valley', '9daQ74b4Oa4', 'dancerOTBVBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'Oceiros, The Consumed King', 'sUv-jVgG8wc', 'oceirosBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'Lorian & Lothric', 'aTtgmLH8cZ4', 'lorian&Lothric.jpg', 'Yuka Kitamura', 3, null),
(null, 'Nameless King', 'icU0IPfv_-o', 'namelssKingBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'Champion Gravetender', 'FihUgD6AFBY', 'CGCGBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'Demon Prince', '3wTFbB2PYSs', 'demonPrinceBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'Halflight, Spear of the Church', '5GNqYZ8-47M', 'halfLightBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'Sister Friede', 'fqQ1Xum8uNI', 'friedeBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'Darkeater Midir', '-jg5xepY5MU', 'MidirlBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'Slave Knight Gael', 'fqQ1Xum8uNI', 'gaelBanner.jpg', 'Yuka Kitamura', 3, null),
(null, 'Soul of Cinder', 'ooCb7rwKfBI', 'soulOfCinderBanner.jpg', 'Yuka Kitamura', 3, null);

insert into musica values
(null, 'Asylum Demon', 'Q-WQhltJjMo', 'asylumDemonBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Taurus Demon', 'Q-WQhltJjMo', 'taurusDemonBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Demon Firesage', 'Q-WQhltJjMo', 'demonFiresageBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Bell Gargoyle', 'g7xpyhEw6H0', 'bellGargoyleBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Capra Demon', 'AfA9WB2KD4Q', 'capraDemonBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Centipede Demon', 'AfA9WB2KD4Q', 'centipedeDemonBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Ceaseless Discharge', 'mLu9vKi8E1Y', 'ceaselessBannerBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Chaos Witch Quelaag', 'jsqViZdHPJE', 'quelaagBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Crossbreed Priscilla', 'GbYGXYmOF8k', 'priscillaBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Dark Sun Gwyndolin', 'wNvujJEQ864', 'gwyndolinBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Four Kings', 'hs59egXnb3c', 'fourKingsBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Gaping Dragon', '6ukC3N1rkzQ', 'gapingDemonBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Great Grey Wolf Sif', 'RZVyHH-voR8', 'greatGreyWolfSifBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Gwyn, Lord of Cinder', 'AB6sOhQan9Y', 'gwynBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Moonlight Butterfly', 'wNvujJEQ864', 'moonLightBFBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Ornstein and Smough', 'Nsps0I58yUM', 'ornsteinSmoughBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Pinwheel', 'sur4qN_4Oi8', 'pinwheelBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Gravelord Nito', 'kzmsh7_vgW8', 'NitoBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Seath the Scaleless', '6gIrG8SEKvU', 'seathBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Stray Demon', 'K5dLklS_QSY', 'strayDemonBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Iron Golem', 'K5dLklS_QSY', 'ironGolemBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'The Bed of Chaos', 'FlUaJ3goJ5c', 'bedOfChaosBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Artorias The Abysswalker', 'vK0w67B4EtU', 'artoriasBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Kalameet', 'TluPWafPTek', 'kalameetBanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Manus, Father of the Abyss', 'ujWjWcE9wkk', 'ManusFOTABanner.jpg', 'Motoi Sakuraba', 1, null),
(null, 'Sanctuary Guardian', '_bLzC1xWxPw', 'SanctuaryGuardianBanner.jpg', 'Motoi Sakuraba', 1, null);


insert into musica values
(null, 'The Last Giant', 'P0SNu7vO1BA', 'theLastGiantBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'The Pursuer', 't4V8Qn-hHF8', 'pursuerBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Executioners Chariot', 'n40e77xioCI', 'executionersChariotBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Looking Glass Knight', 'EpxauXRvN8c', 'lookingGlassKnightBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Skeleton Lord', 'aYjd7y9MfZE', 'skeletonLordBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Flexile Sentry', 'bswWXpB5mDM', 'flexileSentryBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'The Lost Sinner', 'dUmLbVh2cxc', 'lostSinnerBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Belfry Gargoyle', '_3ynHLs6pM8', 'belfryGargoyleBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Ruin Sentinel', 'rmpqBuwdiXc', 'ruinSentinelBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Royal Rat Authority', 'HAkyoXnu_PI', 'royalRatAuthorityBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Royal Rat Vanguard', 'N7YXDF4GPwI', 'royalRatVanguardBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Scorpioness Najka', 'Q-WQhltJjMo', 'najkaBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'The Dukes Dear Freja', 'MwAFbJMxTqc', 'FrejaBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Mytha, the Baneful Queen', '0N8R1Vtz1UU', 'mythaBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'The Rotten', '3CtrKH1uLW8', 'theRottenBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Old Dragonslayer', 'PPEp8-8RyaU', 'oldDragonslayerBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Covetous Demon', 'y4Rz0H-tMFw', 'covetousDemonBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Smelter Demon', 'u6IETf-vuxA', 'smelterDemonBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Old Iron King', 'pYy533AKVo8', 'oldIronKingBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Guardian Dragon', '_dU8jxoL4Js', 'guardianDragonBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Demon of Song', 'tYjYeK5S7D0', 'demonOfSongBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Velstadt, the Royal Aegis', '0EIiSMDCfmo', 'veldstadtBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'King Vendrick', 'a4tXzOSqLIc', 'vendrickBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Darklurker', 'hySWItNZE60', 'darkLurkerBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Dragonrider', 'iAyPu_3ym_c', 'dragonRiderBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Ancient Dragon', 'Ag19zVGk5iQ', 'ancientDragonBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Throne Defender, Throne Watcher', 'oHuXy98_ixM', 'watcher&DefenderBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Nashandra', 'xjjhR0wWtt0', 'NashandraBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Aldia, Scholar of the First Sin', 'jLZ18bLK0EA', 'aldiaScholarOfTheFirstSinBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Elana, the Squalid Queen', 'r37tTTEjjUo', 'ElanaBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Sinh, the Slumbering Dragon', 'YC4OITJLeQg', 'sinhBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Graverobber, Varg & Cerah', 'vdwa0nFuc_4', 'graverobberVargCerahBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Fume Knight', '_dnfeUICQUs', 'fumeKnightBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Sir Alonne', 'P-R1FmPjClA', 'sirAlonneBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Burnt Ivory King', 'FC4OPhkU', 'ivoryKingBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Aava, the Kings Pet', 'thX_5miEWVQ', 'aavaBanner.jpg', 'Yuka Kitamu', 2, null),
(null, 'Zallen and Lud', '8X9Ox8Bnr9M', 'zallen&LudBanner.jpg', 'Yuka Kitamu', 2, null);

-- select count(usuarioCurtida.idUsuarioCurtida), musica.*
-- 	from usuarioCurtida JOIN musica 
-- 		ON usuarioCurtida.fkMusica = musica.idMusica
--         group by musica.idMusica, musica.nome, musica.ytVidId, musica.vidBanner, musica.criadorVid, musica.serie, musica.bossDesc
--         order by count(usuarioCurtida.idUsuarioCurtida) desc;
--         
--  select musica.nome, musica.criadorVid, usuario.idUsuario, musica.vidBanner, musica.idMusica from musica 
--             join usuarioCurtida on musica.idMusica = usuarioCurtida.fkMusica
--                 join usuario on usuario.idUsuario = usuarioCurtida.fkUsuario
--                     where idUsuario = 1
--                     order by idUsuarioCurtida desc;    


-- select coalesce(count(usuarioCurtida.idUsuarioCurtida), 0)qtdCurtidas, musica.serie
-- 	from usuarioCurtida JOIN musica 
-- 		ON usuarioCurtida.fkMusica = musica.idMusica
-- 			JOIN usuario ON usuarioCurtida.fkUsuario = usuario.idUsuario
-- 				where idUsuario = 2
--         group by musica.serie
--         order by musica.serie desc;

-- SELECT musica.serie, IFNULL(count(curtidas.qtdCurtidas), 0) AS qtdCurtidas
-- FROM musica
-- LEFT JOIN (
--     SELECT musica.idMusica, COUNT(usuarioCurtida.idUsuarioCurtida) AS qtdCurtidas
--     FROM usuarioCurtida
--     JOIN musica ON usuarioCurtida.fkMusica = musica.idMusica
--     WHERE usuarioCurtida.fkUsuario = 2
--     GROUP BY musica.idMusica
-- ) AS curtidas ON musica.idMusica = curtidas.idMusica
-- GROUP BY musica.serie
-- ORDER BY musica.serie DESC;

-- select musica.nome, musica.criadorVid, usuario.idUsuario from musica 
-- 	join usuarioCurtida on musica.idMusica = usuarioCurtida.fkMusica
-- 		join usuario on usuario.idUsuario = usuarioCurtida.fkUsuario
-- 			where idUsuario = 1;

