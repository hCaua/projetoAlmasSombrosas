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
localizador varchar(200)
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