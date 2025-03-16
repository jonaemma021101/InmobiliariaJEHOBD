create table cliente(
	id_cliente int identity(1,1) primary key,
	nombre varchar(50) not null,
	correo varchar(50) not null,
	edad int not null
);

create table citas(
	id_cita int identity(1000,5) primary key,
	id_cliente int,
	hora_cita varchar(10),
	dia_cita varchar(10),
	cuarto_depto varchar(15)
);

alter table citas add constraint ck_cuarto_dep check (cuarto_depto in ('Cuarto','Departamento'));
alter table citas add constraint fk_id_cliente foreign key(id_cliente) references cliente(id_cliente);

select * from citas;
select * from cliente; 


delete cliente;
