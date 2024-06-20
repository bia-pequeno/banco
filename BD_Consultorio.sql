create database Bd_Consultorio;
use Bd_Consultorio;



/* drop database Bd_Consultorio; */

create table tb_Paciente(
	Pk_id_Paciente int not null auto_increment primary key,
    Nome_Paciente varchar(100) not null, /* aceita letras, números e caracteres especiais */
    Data_Nascimento_Paciente date, /* segue o modelo americano aaaa/mm/dd */
    Genero_Paciente enum ( 'f', 'm', 'não-binario', 'trans'), /* campo q aceita valores pre-determinados */
    Cpf_Paciente varchar (14)
);
describe tb_Paciente; /* exibe a estrutura da tabela */

insert into tb_Paciente (Nome_Paciente,Data_Nascimento_Paciente, Genero_Paciente, Cpf_Paciente)value
('Roberto Carlos', '1941-04-19', 'm', '999.999.999-99'),
('MaTuê', '1993-10-11', 'm', '555.555.555-55'),
('Pedro Paulo Soares Pereira', '1970-04-22', 'm', '444.444.444-44'),
('Clarisse Linspector', '1920-12-10', 'f', '222.222.222-22'),
('Senior Abravanel', '1930-12-12', 'm', '111.111.111-11'),
('Madonna', '1958-08-16', 'f', '333.333.333-33');

select * from tb_Paciente;

create table tb_Medico(
	Pk_id_Medico int not null auto_increment primary key,
    Nome_Medico varchar(100) not null,
    Data_Nascimento_Medico date,
    Genero_Medico enum ( 'feminino', 'masculino', 'não-binario', 'trans') not null,
    CRM_Medico varchar(13) not null,
    Especialidade varchar (30) not null,
    Turno_Medico enum( 'Diurno', 'Vespertino', 'Noturno') not null
);

describe tb_Medico;

insert into tb_Paciente (Nome_Medico, Data_Nascimento_Medico, Genero_Medico, CRM_Medico, Especialidade, Turno_Medico) value
('Alexandre', '1966-05-19', 'masculino', 'CRM/SP 111111', ,'Noturno'),
('MaTuê', '1993-10-11', 'masculino', 'CRM/SP 222222',,'Diurno'),
('Pedro Paulo Soares Pereira', '1970-04-22', 'masculino', 'CRM/SP 333333',,'Vespertino'),
('Clarisse Linspector', '1920-12-10', 'feminino', 'CRM/SP 444444'),
('Senior Abravanel', '1930-12-12', 'masculino', 'CRM/SP 555555');


create table tb_Consulta(
	Pk_id_Consulta int not null auto_increment primary key,
    Data_Consulta datetime,
    Hora_Consulta time
);

select Nome_Paciente , Data_Nascimento_Paciente from tb_Paciente;


alter table tb_Paciente 
add column Convenio_Paciente varchar(50);/* atua na estrura da tabela*/

select * from tb_Paciente;

update tb_Paciente
set Convenio_Paciente = 'Sirio Libanês'
WHERE Nome_Paciente = 'Roberto Carlos';
