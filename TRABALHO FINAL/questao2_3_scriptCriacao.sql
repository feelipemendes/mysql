/* 
 ______________________________________________________________________________________________
|	* Projeto Final - Projeto de Banco de Dados 2016.2										  |	
|																							  |
|	* Tabelas 20																			  |
|	* Procedimentos e Funções 5									Alunos:					      |
|	* Triggers 4										Leonardo Cantelmo da Silva            | 
|	* Visões 2										     Luiz Felipe Mendes Barbosa           |
|	* Consultas 10 										Pedro Henrique Miranda Marins         |
|_____________________________________________________________________________________________|

*/

-- CREATE DATABASE IMOVEIS_SA;
-- USE IMOVEIS_SA;

-- criação de entidades [15]

-- [1]
create table endereco (
	cep int not null,
    rua varchar(50),
    bairro varchar(30),
	cidade varchar(30),
	estado varchar(2),
	primary key(cep)
);

-- [2]
create table empreendimento (
	codempreendimento int not null auto_increment,
    tipo enum ('residêncial','comercial'),
	nome varchar(50),
    posicao enum('lançamento', 'em obras','pronto'),
	numero int, 
	codendereco int,
    codunidade int,
    primary key (codempreendimento)
);
-- [3]
create table bloco (
	codbloco int not null auto_increment,
	numero int not null,
    nome varchar(30),
    codempreendimento int,
	primary key (codbloco)
   
);

-- [4]
create table residencial (
	codresidencial int not null auto_increment,
	codempreendimento int,
	codbloco int,
	primary key (codresidencial)
);

-- [5]
create table empresarial (
	codempresarial int not null,
    cnpj int,
    complemento varchar (30),
    codempreendimento int,
    primary key (codempresarial)
);


-- [6]
create table unidade (
	codunidade int not null auto_increment,
	numero int not null,
    tipo enum('loja', 'padrão', 'cobertura'),
	area_privativa double,
    preco_base double,
	codempreendimento int,
	primary key (codunidade)
);


-- [7]
create table pessoa (
	codpessoa int not null auto_increment,
    cpf varchar(11),
	nome varchar(50),
    sexo enum ('m','f'),
    estado_civil enum ('solteiro','casado','divorciado','viuvo'),
    data_nascimento date,
    email varchar (20),
    codendereco int,
    numero int,
	complemento varchar(50),
    primary key (codpessoa)
);

-- [8]
create table pagamentovista (
	codpagamentocheio int not null auto_increment,
    valorpago double precision,
    datapagamentovista date,
    primary key (codpagamentocheio)
);

-- [9]
create table pagamentomensal (
	codpagamentomensal int not null auto_increment,
    valor_real double precision, -- valor da compra
    quantidadeparcela double precision, -- quantas vezes será parcelada
    jurostotais double precision, -- valor dos juros
    valor_mais_juros double precision, -- valor da compra + juros
    datapagamentomensal date,
    primary key (codpagamentomensal)
);

-- [10]
create table cliente (
	codcliente int not null auto_increment,
	renda double precision,
    celular varchar (12),
    telefone varchar (12),
    codpessoa int, 
    primary key (codcliente)
);

-- [11]
create table colaboradores (      /* adicionar novos atributos posteriormente */
	codcolaboradores int not null auto_increment,
    bonus double precision,
    comissao double precision,
    salario double precision,
    matricula varchar (20),
    codpessoa int, 
	codlojas int, 
	codcargo int,
	codequipe int,
    primary key (codcolaboradores)
);



-- [12]
create table cargos (
	codcargos int not null auto_increment,
    nomecargo varchar (30),
    area varchar (15),
    primary key (codcargos)
);

-- [13]
create table lojas (
	codlojas int not null auto_increment,
    tipo_servico enum ('online','físico'),
    nomedaloja varchar (30),
    primary key (codlojas)
);

-- [14]
create table equipes (
	codequipes int not null auto_increment,
    setor varchar (15),
    coddpto int,
    primary key (codequipes)
);

-- [15]
create table departamento (
	coddepartamento int not null,
    nome varchar (20),  
    primary key (coddepartamento)
);

-- [16]                    
create table propriedade (
	codpropriedade int,
    datainicial date,
    datafinal date,
    codunidade int, 
    codcliente int,
    primary key (codpropriedade)
);

-- [17]
create table pagamento (
	codpagamento int not null auto_increment,
	codcliente int,
	codpgmensal int, 
	codpagamentovista int,
    valor double precision,
    datadepagamento date,
    formadepagamento enum ('a vista','parcelado'),
    parcelas double precision, -- verifica a quanidade de parcela obs: se a quantidade for igual à "1" então o pagamento foi à vista.
    tx_incc double precision, -- checar valor 
    constraint pk_pagamento primary key (codpagamento, codcliente, codpgmensal, codpagamentovista)
);

-- [18]
create table vendas (
	codvendas int not null auto_increment,
    codcolaborador int,
	codunidade int,
	status_vendas enum ('em andamento','finalizada'),
    datavenda date,
    valorvenda double precision,
    primary key (codvendas)
);

-- [19]
create table reserva (
	codreserva int,
    codcolaborador int,
	codunidade int,
	datainicialreserv date,
    datafinalreserv date,
    primary key (codreserva)
);

-- [20]
create table colaboradorEquipe (
	quantifuncionarios int,
	codcolaborador int
);


-- final de atributos 
-- alteracoes nas relacoes

alter table empreendimento
add foreign key fk_e_endereco (codendereco) references endereco (cep);

alter table empreendimento
add foreign key fk_e_unidade (codunidade) references unidade (codunidade);


alter table residencial 
add foreign key fk_r_codempreendimento (codempreendimento) references empreendimento (codempreendimento);

alter table residencial 
add foreign key fk_codbloco (codbloco) references bloco (codbloco);

alter table empresarial
add foreign key fk_e_empreendimento (codempreendimento) references empreendimento (codempreendimento);

alter table unidade
add foreign key fk_u_codempreendimento (codempreendimento) references empreendimento (codempreendimento);

alter table pessoa
add foreign key fk_endereco_pessoa (codendereco) references endereco (cep);

alter table cliente
add foreign key fk_codpessoa (codpessoa) references pessoa (codpessoa);

alter table colaboradores
add foreign key fk_c_codpessoa (codpessoa) references pessoa(codpessoa);

alter table colaboradores
add foreign key fk_c_codlojas (codlojas) references lojas (codlojas);

alter table colaboradores
add foreign key fk_c_codcargo (codcargo) references cargos (codcargos);

alter table colaboradores
add foreign key fk_c_codequipe (codequipe) references equipes (codequipes);

alter table equipes 
add foreign key fk_coddpto (coddpto) references departamento (coddepartamento);

alter table propriedade
add foreign key fk_p_codunidade (codunidade) references unidade (codunidade);

alter table propriedade
add foreign key fk_p_codcliente (codcliente) references cliente (codcliente);

alter table vendas
add foreign key fk_v_colaborador (codcolaborador) references colaboradores (codcolaboradores);

alter table vendas
add foreign key fk_v_unidade (codunidade) references unidade (codunidade);

alter table reserva
add foreign key fk_re_colaborador (codcolaborador) references colaboradores (codcolaboradores);

alter table reserva
add foreign key fk_r_colaborador (codunidade) references unidade(codunidade);

alter table colaboradorEquipe
add foreign key fk_p_colaborador (codcolaborador) references colaboradores (codcolaboradores);



drop table endereco;       -- [1]
drop table empreendimento; -- [2]
drop table bloco;          -- [3]
drop table residencial;    -- [4]
drop table empresarial;    -- [5]
drop table unidade;        -- [6]
drop table pessoa;         -- [7]
drop table pagamentovista; -- [8]
drop table pagamentomensal;-- [9]
drop table cliente;        -- [10]
drop table colaboradores;  -- [11]
drop table cargos;         -- [12]
drop table lojas;          -- [13]
drop table equipes;        -- [14]
drop table departamento;   -- [15]
drop table propriedade;    -- [16]
drop table pagamento;      -- [17]
drop table vendas;         -- [18]
drop table reserva;        -- [19]
drop table colaboradorEquipe;       -- [20]



