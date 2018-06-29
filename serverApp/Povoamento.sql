/*Povoamento*/

/*Tabela usuarios*/
insert into TB_Usuarios(nome,cpf, email,login,senha,localizacao_atual,rua,numero,bairro,cep,estado,
  pais,complemento,foto_perfil)
values('Diogo','903.753.999-99','diogo@gmail.com','BAck','12345678',
       'Rua Aki','Rua certa','5','Boa vista','554444-09','Pernambuco',"Brasil", "Ap", 'image.jpeg');

insert into TB_Usuarios(nome,cpf, email,login,senha,localizacao_atual,rua,numero,bairro,cep,estado,
  pais,complemento,foto_perfil)
values('Wilquer','145.999.999-88','wilquer@gmail.com','Studio','12345678',
       'Rua Aki','Rua certa','5','Boa vista','554444-09','Pernambuco',"Brasil", "Ap", 'image.jpeg');

insert into TB_Usuarios(nome,cpf, email,login,senha,localizacao_atual,rua,numero,bairro,cep,estado,
  pais,complemento,foto_perfil)
values('Debs','120.999.999-77','debs@gmail.com','Db','12345678',
       'Rua Aki','Rua certa','5','Boa vista','554444-09','Pernambuco',"Brasil", "Ap", 'image.jpeg');

insert into TB_Usuarios(nome,cpf, email,login,senha,localizacao_atual,rua,numero,bairro,cep,estado,
  pais,complemento,foto_perfil)
values('JEff','999.050.999-66','eu@gmail.com','je','12345678',
       'Rua Aki','Rua certa','5','Boa vista','554444-09','Pernambuco',"Brasil", "Ap", 'image.jpeg');
       
insert into TB_Usuarios(nome,cpf, email,login,senha,localizacao_atual,rua,numero,bairro,cep,estado,
  pais,complemento,foto_perfil)
values('Rodolfo','999.999.999-66','rod@gmail.com','rod','12345678',
       'Rua Aki','Rua certa','5','Boa vista','554444-09','Pernambuco',"Brasil", "Ap", 'image.jpeg');
       
insert into TB_Usuarios(nome,cpf, email,login,senha,localizacao_atual,rua,numero,bairro,cep,estado,
  pais,complemento,foto_perfil)
values('Paulo','999.999.878-66','Paul@gmail.com','Beatles','12345678',
       'Rua Aki','Rua certa','5','Boa vista','554444-09','Pernambuco',"Brasil", "Ap", 'image.jpeg');


/*Tabela estabelecimentos*/

insert into TB_Estabelecimentos(nome,cnpj, email,login,senha,rua,numero,bairro,cidade,cep,estado,
  pais,complemento,rankingAgilidade,rankingCustoBeneficio,rankingServico)
values('Company','111111111','company@gmail.com','company','12345678',
       'Rua testando','542','Boa vista','Recife','555555-09','Pernambuco',"Brasil", "Ap", 0 ,0,0);


insert into TB_Estabelecimentos(nome,cnpj, email,login,senha,rua,numero,bairro,cidade,cep,estado,
  pais,complemento,rankingAgilidade,rankingCustoBeneficio,rankingServico)
values('DIN','111111122','DIn@gmail.com','IND','12345678',
       'Rua testando','542','Boa vista','Recife','555555-09','Pernambuco',"Brasil", "Ap", 0 ,0,0);

insert into TB_Estabelecimentos(nome,cnpj, email,login,senha,rua,numero,bairro,cidade,cep,estado,
  pais,complemento,rankingAgilidade,rankingCustoBeneficio,rankingServico)
values('COmp','111111133','Comp@gmail.com','Comp','12345678',
       'Rua testando','542','Boa vista','Recife','555555-09','Pernambuco',"Brasil", "Ap", 0 ,0,0);


insert into TB_Estabelecimentos(nome,cnpj, email,login,senha,rua,numero,bairro,cidade,cep,estado,
  pais,complemento,rankingAgilidade,rankingCustoBeneficio,rankingServico)
values('TNT','111111144','tnt@gmail.com','Tnt','12345678',
       'Rua testando','542','Boa vista','Recife','555555-09','Pernambuco',"Brasil", "Ap", 0 ,0,0);
       
insert into TB_Estabelecimentos(nome,cnpj, email,login,senha,rua,numero,bairro,cidade,cep,estado,
  pais,complemento,rankingAgilidade,rankingCustoBeneficio,rankingServico)
values('Doutor','111118833','dot@gmail.com','doc','12345678',
       'Rua testando','542','Boa vista','Recife','555555-09','Pernambuco',"Brasil", "Ap", 0 ,0,0);


insert into TB_Estabelecimentos(nome,cnpj, email,login,senha,rua,numero,bairro,cidade,cep,estado,
  pais,complemento,rankingAgilidade,rankingCustoBeneficio,rankingServico)
values('Carango','111195144','carango@gmail.com','carango','12345678',
       'Rua testando','542','Boa vista','Recife','555555-09','Pernambuco',"Brasil", "Ap", 0 ,0,0);


/*Tabela telefones Usuarios*/

insert into tb_telefones_usuarios (id_usuarios,telefone) values (1,'9999-9991');
insert into tb_telefones_usuarios (id_usuarios,telefone) values (1,'9999-9992');

insert into tb_telefones_usuarios (id_usuarios,telefone) values (2,'9999-9993');
insert into tb_telefones_usuarios (id_usuarios,telefone) values (2,'9999-9994');

insert into tb_telefones_usuarios (id_usuarios,telefone) values (3,'9999-9995');
insert into tb_telefones_usuarios (id,id_usuarios,telefone) values (3,'9999-9996');

insert into tb_telefones_usuarios (id_usuarios,telefone) values (4,'9999-9997');
insert into tb_telefones_usuarios (id_usuarios,telefone) values (4,'9999-9998');

insert into tb_telefones_usuarios (id_usuarios,telefone) values (5,'9999-9999');
insert into tb_telefones_usuarios (id_usuarios,telefone) values (5,'9999-9910');

insert into tb_telefones_usuarios (id_usuarios,telefone) values (6,'9999-9911');
insert into tb_telefones_usuarios (id_usuarios,telefone) values (6,'9999-9912');


/*Tabela telefones Estabelecimentos*/

insert into tb_telefones_estabelecimentos (id_estabelecimentos,telefone) values (1,'8888-8881');
insert into tb_telefones_estabelecimentos (id_estabelecimentos,telefone) values (1,'8888-8882');

insert into tb_telefones_estabelecimentos (id_estabelecimentos,telefone) values (2,'8888-8883');
insert into tb_telefones_estabelecimentos (id_estabelecimentos,telefone) values (2,'8888-8884');

insert into tb_telefones_estabelecimentos (id_estabelecimentos,telefone) values (3,'8888-8885');
insert into tb_telefones_estabelecimentos (id_estabelecimentos,telefone) values (3,'8888-8886');

insert into tb_telefones_estabelecimentos (id_estabelecimentos,telefone) values (4,'8888-8887');
insert into tb_telefones_estabelecimentos (id_estabelecimentos,telefone) values (4,'8888-8888');

insert into tb_telefones_estabelecimentos (id_estabelecimentos,telefone) values (5,'8888-8889');
insert into tb_telefones_estabelecimentos (id_estabelecimentos,telefone) values (5,'8888-8810');

insert into tb_telefones_estabelecimentos (id_estabelecimentos,telefone) values (6,'8888-8811');
insert into tb_telefones_estabelecimentos (id_estabelecimentos,telefone) values (6,'8888-8812');


/*Tabela Categorias*/

insert into TB_Categorias (categoria) values ('Funilaria');
insert into TB_Categorias (categoria) values ('Pintura obra de Art');
insert into TB_Categorias (categoria) values ('Montagem versao lego');
insert into TB_Categorias (categoria) values ('Eletrica');
insert into TB_Categorias (categoria) values ('Geral');
insert into TB_Categorias (categoria) values ('Troca oleo');
insert into TB_Categorias (categoria) values ('Troca pastilhas de freio');
insert into TB_Categorias (categoria) values ('Suspensao monstra');
insert into TB_Categorias (categoria) values ('Blindagem de Guerra');
insert into TB_Categorias (categoria) values ('Deixa carro veloz e furioso');


/*Tabela fotos_estabelecimentos*/

insert into tb_fotos_estabelecimentos (id_estabelecimentos,foto) values(1,'Estilo.jpg');
insert into tb_fotos_estabelecimentos (id_estabelecimentos,foto) values(2,'Estilo.jpg');
insert into tb_fotos_estabelecimentos (id_estabelecimentos,foto) values(3,'Estilo.jpg');
insert into tb_fotos_estabelecimentos (id_estabelecimentos,foto) values(4,'Estilo.jpg');
insert into tb_fotos_estabelecimentos (id_estabelecimentos,foto) values(5,'Estilo.jpg');
insert into tb_fotos_estabelecimentos (id_estabelecimentos,foto) values(6,'Estilo.jpg');


/*Tabela estabelecimentos_categorias*/

insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (1,1);
insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (1,9);
insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (1,10);

insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (2,1);
insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (2,2);
insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (2,3);
insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (2,4);

insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (3,1);
insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (3,2);

insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (4,3);
insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (4,4);

insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (5,1);
insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (5,7);
insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (5,5);
insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (5,2);

insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (6,10);
insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (6,9);
insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (6,2);
insert into tb_estabelecimentos_categorias (id_estabelecimentos,id_categorias) values (6,3);

/*tabela Comentarios*/

insert into tb_comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,1,'BOA', "2017-03-11");
insert into tb_comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,2,'Na media', "2017-03-11");

insert into tb_comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(2,3,'Pessima', "2018-03-03");
insert into tb_comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(2,4,'Na media', "2018-03-05");

insert into tb_comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,1,'Otima', "2010-03-11");
insert into tb_comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,2,'Atendimento 5 estrelas', "2010-03-11");

insert into tb_comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,1,'MUito boa', "2011-03-11");
insert into tb_comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,2,'INcrivel', "2011-03-11");

insert into tb_comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,1,'Deu conta do recado', "2011-03-11");
insert into tb_comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,2,'Reviveu o morto', "2011-03-11");

insert into tb_comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,1,'sem comentarios', "2011-03-11");
insert into tb_comentarios (id_estabelecimentos,id_usuarios,comentario,data_hora) values(1,2,'não tenho nada a dizer e digo mais nda', "2011-03-11");


/*Tabela Av_agilidade*/

insert into TB_Av_Agilidade (id,id_estabelecimentos,id_usuarios,nota) values (1,1,1,9);
insert into TB_Av_Agilidade (id,id_estabelecimentos,id_usuarios,nota) values (2,2,1,7);
insert into TB_Av_Agilidade (id,id_estabelecimentos,id_usuarios,nota) values (3,3,1,8);
insert into TB_Av_Agilidade (id,id_estabelecimentos,id_usuarios,nota) values (4,3,2,8);
insert into TB_Av_Agilidade (id,id_estabelecimentos,id_usuarios,nota) values (5,4,1,10);

/*Tabela Av_custo*/

insert into tb_av_custobeneficio (id,id_estabelecimentos,id_usuarios,nota) values (1,1,1,6);
insert into tb_av_custobeneficio (id,id_estabelecimentos,id_usuarios,nota) values (2,2,2,4);
insert into tb_av_custobeneficio (id,id_estabelecimentos,id_usuarios,nota) values (3,3,3,8);
insert into tb_av_custobeneficio (id,id_estabelecimentos,id_usuarios,nota) values (4,4,6,10);
insert into tb_av_custobeneficio (id,id_estabelecimentos,id_usuarios,nota) values (5,5,6,9);

/*Tabela Av_Servico*/

insert into tb_av_servico (id,id_estabelecimentos,id_usuarios,nota) values (1,1,1,6);
insert into tb_av_servico (id,id_estabelecimentos,id_usuarios,nota) values (6,1,2,3);
insert into tb_av_servico (id,id_estabelecimentos,id_usuarios,nota) values (2,2,3,4);
insert into tb_av_servico (id,id_estabelecimentos,id_usuarios,nota) values (7,3,4,6);
insert into tb_av_servico (id,id_estabelecimentos,id_usuarios,nota) values (3,4,4,8);
insert into tb_av_servico (id,id_estabelecimentos,id_usuarios,nota) values (4,5,6,10);
insert into tb_av_servico (id,id_estabelecimentos,id_usuarios,nota) values (5,6,5,9);
insert into tb_av_servico (id,id_estabelecimentos,id_usuarios,nota) values (8,6,5,10);