create database projeto_sprint1;

use projeto_sprint1;

create table usuario (
idUsuario int primary key auto_increment,
nome varchar(50),
endereço varchar(60),
email varchar (80),
senha varchar(16)
);

create table empresa (
idEmpresa int primary key auto_increment,
nomeEmpresa varchar(50),
representante varchar(50),
cnpj char(14) unique
);



create table sensor (
idSensor int primary key auto_increment,
tipo varchar(30), constraint chkTipo check (tipo in ('temperatura', 'umidade')), 
descrição varchar(100)
);

create table leitura (
idLeitura int primary key auto_increment,
valorLeitura int(4),
data_hora datetime default current_timestamp
);


insert into usuario values 
(null, 'Jonas Augusto', 'Avenida das rosas 512', 'augustinho123@gmail.com', '123456'),
(null, 'Armando Leo', 'Avenida das cabanas 123', 'armandinholindo@gmail.com', '635876'),
(null, 'Marcos Vinicius', 'Avenida bagre 7383', 'maquinhoslouco@gmail.com', '25788asdt');

insert into empresa values 
(null, 'C6Bank', 'Bernardo Almeida', '12345678912345'),
(null, 'Sigil', 'Toinho da Silva', '95638471928374'),
(null, 'MAKER7', 'Kaique Abreu', '92837465012945');

insert into sensor values 
(null, 'temperatura', 'Sensores da plantação xl'),
(null, 'umidade', 'Sensores da estufa lx');

insert into leitura values 
(null, '1234', '2022-02-02'),
(null, '5324', '2019-05-03');

select * from usuario;
select * from empresa;
select * from sensor;
select * from leitura;

select * from empresa where nomeEmpresa = '_6%';













-- ALTER TABLE usuario ADD CONSTRAINT fk_empresa FOREIGN KEY (idEmpresa) REFERENCES empresa ( idEmpresa );
-- ALTER TABLE usuario ADD CONSTRAINT fk_nome_empresa FOREIGN KEY (nomeEmpresa) REFERENCES empresa ( nomeEmpresa );
-- ALTER TABLE usuario ADD CONSTRAINT fk_cnpj_empresa FOREIGN KEY (cnpjEmpresa) REFERENCES empresa ( cnpj );
-- ALTER TABLE leitura ADD CONSTRAINT fk_sensor FOREIGN KEY (idSensor) REFERENCES sensor ( idSensor );