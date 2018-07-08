/*Povoamento*/

/*Tabela usuarios*/
insert into TB_Usuarios(nome,email,senha,telefone1)
values('Diogo Souza', 'ds@gmail.com', '124124', '(81) 3041-1412');

insert into TB_Usuarios(nome,email,senha,telefone1)
values('Anderson Freire', 'anderson.freire@gmail.com', '81992aa', '(99) 99209-1234');

insert into TB_Usuarios(nome,email,senha,telefone1)
values('Gildon Mende Carvalho', 'gmc@gmail.com', '4441124', '(81) 99919-1212');

insert into TB_Usuarios(nome,email,senha,telefone1)
values('Anjelo Martins', 'anjelo.m2@gmail.com', '1942jjad12', '(81) 89891-5555');

insert into TB_Usuarios(nome,email,senha,telefone1)
values('Maria de Lourdes Santos', 'maria.lourdes@gmail.com', 'asdaf3151sa', '(21) 76617-1343');


/*Tabela estabelecimentos*/

insert into TB_Estabelecimentos(nome,cnpj,credencia,email,senha,telefone1,rua,numero,bairro,cidade,cep,estado,
  pais,complemento)
values('Oficina Americas', '14135135-12', '1', 'americas@hotmail.com', '135315351', '(81) 4543-5555', 'Av. Recife', '380', 'Ipsep',
'Recife', '1351355-121','PE','BR','Perto do Bompreco');


insert into TB_Estabelecimentos(nome,cnpj,credencia,email,senha,telefone1,rua,numero,bairro,cidade,cep,estado,
  pais,complemento)
values('Oficina No Grau', '555555555-12', '1', 'no.grau@hotmail.com', '135661111', '(21) 84232-5555', 'Caranbola', '323', 'Afogados',
'Recife', '135513315-131','PE','BR','Da delegacia de Afogados');


insert into TB_Estabelecimentos(nome,cnpj,credencia,email,senha,telefone1,rua,numero,bairro,cidade,cep,estado,
  pais,complemento)
values('Oficina Seu João', '5577777775-12', '1', 'sao.joao@hotmail.com', '135355353a1', '(55) 555555-5555', 'feijão', '888', 'ibura',
'Recife', '13513531555-131','PE','BR','Perto da boca de fumo');

insert into TB_Estabelecimentos(nome,cnpj,credencia,email,senha,telefone1,rua,numero,bairro,cidade,cep,estado,
  pais,complemento)
values('Oficina seu Bil', '588888885-12', '0', 'bil.oficina@hotmail.com', '27277272', '(66) 56666-5555', 'Camaleão de ouro', '08', 'Candeias',
'Jaboatão dos Guararapes', '899998111-131','PE','BR','Padaria Santo Cristo');

insert into TB_Estabelecimentos(nome,cnpj,credencia,email,senha,telefone1,rua,numero,bairro,cidade,cep,estado,
  pais,complemento)
values('Auto-elétrica Martins', '91919241-11', '0', 'auto.martins@hotmail.com', '1uqwr135af@1', '(55) 97989-5555', 'Presidente kennedy', '13', 'Rio Doce',
'Olinda', '661155512-131','PE','BR','Perto do Terminal do Rio Doce');

/*Tabela Categorias*/

insert into TB_Categorias (categoria) values ('Funilaria');
insert into TB_Categorias (categoria) values ('Reparo');
insert into TB_Categorias (categoria) values ('Troca de oleo');
insert into TB_Categorias (categoria) values ('Eletrica');
insert into TB_Categorias (categoria) values ('Geral');
insert into TB_Categorias (categoria) values ('Troca pastilhas de freio');
insert into TB_Categorias (categoria) values ('Suspensao monstra');
insert into TB_Categorias (categoria) values ('Blindagem de Guerra');
insert into TB_Categorias (categoria) values ('Deixa carro veloz e furioso');


insert into TB_Estabelecimentos_Categorias (id_estabelecimentos,id_categorias) values (1,1);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos,id_categorias) values (1,3);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos,id_categorias) values (1,5);

insert into TB_Estabelecimentos_Categorias (id_estabelecimentos,id_categorias) values (2,3);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos,id_categorias) values (2,5);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos,id_categorias) values (2,2);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos,id_categorias) values (2,1);

insert into TB_Estabelecimentos_Categorias (id_estabelecimentos,id_categorias) values (3,1);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos,id_categorias) values (3,3);

insert into TB_Estabelecimentos_Categorias (id_estabelecimentos,id_categorias) values (4,3);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos,id_categorias) values (4,5);

insert into TB_Estabelecimentos_Categorias (id_estabelecimentos,id_categorias) values (5,1);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos,id_categorias) values (5,2);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos,id_categorias) values (5,3);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos,id_categorias) values (5,4);


/*tabela Comentarios*/

insert into TB_Comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,1,'BOA', "2017-03-11");
insert into TB_Comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,2,'Na media', "2017-03-11");

insert into TB_Comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(2,3,'Pessima', "2018-03-03");
insert into TB_Comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(2,4,'Na media', "2018-03-05");

insert into TB_Comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,1,'Otima', "2010-03-11");
insert into TB_Comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,2,'Atendimento 5 estrelas', "2010-03-11");

insert into TB_Comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,1,'MUito boa', "2011-03-11");
insert into TB_Comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,2,'INcrivel', "2011-03-11");

insert into TB_Comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,1,'Deu conta do recado', "2011-03-11");
insert into TB_Comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,2,'Reviveu o morto', "2011-03-11");

insert into TB_Comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,1,'sem comentarios', "2011-03-11");
insert into TB_Comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,2,'não tenho nada a dizer e digo mais nda', "2011-03-11");


/*Tabela Av_agilidade*/

insert into TB_Av_Agilidade (id_estabelecimentos,id_usuarios,nota) values (1,1,9);
insert into TB_Av_Agilidade (id_estabelecimentos,id_usuarios,nota) values (2,1,7);
insert into TB_Av_Agilidade (id_estabelecimentos,id_usuarios,nota) values (3,1,8);
insert into TB_Av_Agilidade (id_estabelecimentos,id_usuarios,nota) values (3,2,8);
insert into TB_Av_Agilidade (id_estabelecimentos,id_usuarios,nota) values (4,1,10);

/*Tabela Av_custo*/

insert into TB_Av_CustoBeneficio (id_estabelecimentos,id_usuarios,nota) values (1,1,6);
insert into TB_Av_CustoBeneficio (id_estabelecimentos,id_usuarios,nota) values (2,2,4);
insert into TB_Av_CustoBeneficio (id_estabelecimentos,id_usuarios,nota) values (3,3,8);
insert into TB_Av_CustoBeneficio (id_estabelecimentos,id_usuarios,nota) values (4,5,10);
insert into TB_Av_CustoBeneficio (id_estabelecimentos,id_usuarios,nota) values (5,5,9);

/*Tabela Av_Servico*/

insert into TB_Av_Servico (id_estabelecimentos,id_usuarios,nota) values (1,1,6);
insert into TB_Av_Servico (id_estabelecimentos,id_usuarios,nota) values (1,2,3);
insert into TB_Av_Servico (id_estabelecimentos,id_usuarios,nota) values (2,3,4);
insert into TB_Av_Servico (id_estabelecimentos,id_usuarios,nota) values (3,4,6);
insert into TB_Av_Servico (id_estabelecimentos,id_usuarios,nota) values (4,4,8);
insert into TB_Av_Servico (id_estabelecimentos,id_usuarios,nota) values (5,5,10);
insert into TB_Av_Servico (id_estabelecimentos,id_usuarios,nota) values (4,5,9);
insert into TB_Av_Servico (id_estabelecimentos,id_usuarios,nota) values (3,5,10);