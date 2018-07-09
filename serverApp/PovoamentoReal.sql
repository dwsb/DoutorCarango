#usuarios
insert into TB_Usuarios(nome,email,senha,telefone1)
values('Diogo Souza', 'ds@gmail.com', '124124id_usuarios', '(81) 3041-1412');

insert into TB_Usuarios(nome,email,senha,telefone1)
values('Anderson Freire', 'anderson.freire@gmail.com', '81992aa', '(99) 99209-1234');

insert into TB_Usuarios(nome,email,senha,telefone1)
values('Gildon Mende Carvalho', 'gmc@gmail.com', '4441124', '(81) 99919-1212');

insert into TB_Usuarios(nome,email,senha,telefone1)
values('Anjelo Martins', 'anjelo.m2@gmail.com', '1942jjad12', '(81) 89891-5555');

insert into TB_Usuarios(nome,email,senha,telefone1)
values('Maria de Lourdes Santos', 'maria.lourdes@gmail.com', 'asdaf3151sa', '(21) 76617-1343');

#estabelecimentos
insert into TB_Estabelecimentos (nome, cnpj, email, credencia, senha, rua, numero, bairro, cidade, cep, 
estado, pais, complemento, telefone1, telefone2) values 
('Oficina Medeiros', '1', 'medeirosoficina@gmail.com','0','123','Av.Joaquim Nabuco','759','Varadouro','Olinda', '53020-310', 'PE', 'Brasil', '','(81) 3439-1009',' ');

insert into TB_Estabelecimentos (nome, cnpj, email, credencia, senha, rua, numero, bairro, cidade, cep, 
estado, pais, complemento, telefone1, telefone2) values 
('Norte Centro Automotivo', '21.958.189/0001-08', 'norte.centroauto@gmail.com','1','123','Av. Norte Miguel Arraes de Alencar','7205','Macaxeira','Recife', '52091-000', 'PE', 
'Brasil', 'Loja 03','(81) 99815-6746','(81) 3025-0646');

insert into TB_Estabelecimentos (nome, cnpj, email, credencia, senha, rua, numero, bairro, cidade, cep, 
estado, pais, complemento, telefone1, telefone2) values 
('Gimano Auto Service', '15.650.952/0001-28', 'gimanoauto.service@hotmail.com','1','123','Av. Norte Miguel Arraes de Alencar','7205','Macaxeira','Recife', '52091-000', 'PE',
 'Brasil', 'Loja 01','(81) 98865-9985','(81) 3266-6915');
 
 insert into TB_Estabelecimentos (nome, cnpj, email, credencia, senha, rua, numero, bairro, cidade, cep, 
estado, pais, complemento, telefone1, telefone2) values 
('Auto Gás', '05.522.328/0001-91', 'auto.gas@gmail.com','1','123','Av. Norte Miguel Arraes de Alencar','7205','Macaxeira','Recife', '52091-000', 'PE',
 'Brasil', 'Loja 02','(81) 98760-4036','(81) 3267-8198');
 
 insert into TB_Estabelecimentos (nome, cnpj, email, credencia, senha, rua, numero, bairro, cidade, cep, 
estado, pais, complemento, telefone1, telefone2) values 
('Auto Vip', '05.696.895/0001-91', 'auto.vip@gmail.com','1','123','Av. Presidente Kennedy','179','Santa Tereza','Olinda', '53010-120', 'PE',
 'Brasil', ' ','(81) 3439-9600',' ');
 
insert into TB_Estabelecimentos (nome, cnpj, email, credencia, senha, rua, numero, bairro, cidade, cep, 
estado, pais, complemento, telefone1, telefone2) values 
('Bultrins Autopeças e Serviços', '24.0934.377/0001-15', 'bultrins.autopecas@hotmail.com','1','123','Av. Bultrins','561','Bultrins','Olinda', '53320-170', 'PE',
 'Brasil', ' ','(81) 99519-1110','(81) 3439-4919');

insert into TB_Estabelecimentos (nome, cnpj, email, credencia, senha, rua, numero, bairro, cidade, cep, 
estado, pais, complemento, telefone1, telefone2) values 
('Vado Auto Peças e Serviçoes', '69.892.453/0001-76', 'vado.autopecas@gmail.com','1','123','Rua São Miguel','660','Bairro Novo','Olinda', '53030-155', 'PE',
 'Brasil', ' ','(81) 3439-8151',' ');
 
 insert into TB_Estabelecimentos (nome, cnpj, email, credencia, senha, rua, numero, bairro, cidade, cep, 
estado, pais, complemento, telefone1, telefone2) values 
('Dikas Auto Pecas', '2', 'dicas.autop@gmail.com','0','123','Av. Zequinha Barreto','20','Piedade','Jaboatão dos Guararapes', '54400-090', 'PE',
 'Brasil', ' ','(81) 3342-3266',' ');
 
insert into TB_Categorias (categoria) values ('Troca de oleo');
insert into TB_Categorias (categoria) values ('Bateria');
insert into TB_Categorias (categoria) values ('Revisao');
insert into TB_Categorias (categoria) values ('Reparo');
 
#reparo
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (1,4);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (2,4);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (3,4);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (4,4);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (5,4);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (6,4);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (7,4);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (8,4);

#Bateria
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (3,2);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (2,2);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (6,2);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (7,2);

#Revisao
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (1,3);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (2,3);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (3,3);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (5,3);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (6,3);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (7,3);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (8,3);

#Troca de oleo
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (1,1);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (2,1);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (3,1);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (5,1);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (6,1);
insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values (8,1);

insert into TB_Promocoes (id_estabelecimentos, descricao_promocao, validade) values (2,'Desconto de 5% na troca de oleo','até 17/08/2018');
insert into TB_Promocoes (id_estabelecimentos, descricao_promocao, validade) values (3,'Desconto de 5% na revisão + troca de oleo','até 20/08/2018');
insert into TB_Promocoes (id_estabelecimentos, descricao_promocao, validade) values (3,'Desconto de 3% na bateria','até 10/08/2018');
insert into TB_Promocoes (id_estabelecimentos, descricao_promocao, validade) values (6,'Desconto de 7% nas baterias Mouras','até 20/08/2018');
insert into TB_Promocoes (id_estabelecimentos, descricao_promocao, validade) values (7,'Desconto de 10% na revisão','até 15/08/2018');
insert into TB_Promocoes (id_estabelecimentos, descricao_promocao, validade) values (7,'Desconto em 6% em baterias em gerais','até 12/08/2018');

#Avaliacao Agilidade
insert into TB_Av_Agilidade (id_estabelecimentos, id_usuarios, nota) values (1,1,3);
insert into TB_Av_Agilidade (id_estabelecimentos, id_usuarios, nota) values (2,2,4);
insert into TB_Av_Agilidade (id_estabelecimentos, id_usuarios, nota) values (3,2,5);
insert into TB_Av_Agilidade (id_estabelecimentos, id_usuarios, nota) values (4,3,4);
insert into TB_Av_Agilidade (id_estabelecimentos, id_usuarios, nota) values (5,4,5);
insert into TB_Av_Agilidade (id_estabelecimentos, id_usuarios, nota) values (6,5,4);
insert into TB_Av_Agilidade (id_estabelecimentos, id_usuarios, nota) values (7,5,5);
insert into TB_Av_Agilidade (id_estabelecimentos, id_usuarios, nota) values (8,4,3);

#Avaliacao Custo Beneficio
insert into TB_Av_CustoBeneficio (id_estabelecimentos, id_usuarios, nota) values (1,1,4);
insert into TB_Av_CustoBeneficio (id_estabelecimentos, id_usuarios, nota) values (2,2,4);
insert into TB_Av_CustoBeneficio (id_estabelecimentos, id_usuarios, nota) values (3,3,5);
insert into TB_Av_CustoBeneficio (id_estabelecimentos, id_usuarios, nota) values (4,4,5);
insert into TB_Av_CustoBeneficio (id_estabelecimentos, id_usuarios, nota) values (5,5,4);
insert into TB_Av_CustoBeneficio (id_estabelecimentos, id_usuarios, nota) values (6,4,5);
insert into TB_Av_CustoBeneficio (id_estabelecimentos, id_usuarios, nota) values (7,2,4);
insert into TB_Av_CustoBeneficio (id_estabelecimentos, id_usuarios, nota) values (8,4,5);

#Avaliacao Servico
insert into TB_Av_Servico (id_estabelecimentos, id_usuarios, nota) values (1,2,4);
insert into TB_Av_Servico (id_estabelecimentos, id_usuarios, nota) values (2,2,5);
insert into TB_Av_Servico (id_estabelecimentos, id_usuarios, nota) values (3,1,5);
insert into TB_Av_Servico (id_estabelecimentos, id_usuarios, nota) values (4,3,4);
insert into TB_Av_Servico (id_estabelecimentos, id_usuarios, nota) values (5,4,3);
insert into TB_Av_Servico (id_estabelecimentos, id_usuarios, nota) values (6,2,5);
insert into TB_Av_Servico (id_estabelecimentos, id_usuarios, nota) values (7,1,4);
insert into TB_Av_Servico (id_estabelecimentos, id_usuarios, nota) values (8,5,5);

#Comentarios
insert into TB_Comentarios (id_estabelecimentos, id_usuarios, comentario, data_hora) values (1,1,'Poderia ser um ambiente mais organizado!','29/06/2018');
insert into TB_Comentarios (id_estabelecimentos, id_usuarios, comentario, data_hora) values (2,2,'Muito Bom o atendimento.','25/06/2018');
insert into TB_Comentarios (id_estabelecimentos, id_usuarios, comentario, data_hora) values (2,3,'Gostei da atenção e clareza no serviço.','27/06/2018');
insert into TB_Comentarios (id_estabelecimentos, id_usuarios, comentario, data_hora) values (3,1,'Atendimento demorou um pouco','24/06/2018');
insert into TB_Comentarios (id_estabelecimentos, id_usuarios, comentario, data_hora) values (4,5,'Achei o serviço bem feito','25/06/2018');
insert into TB_Comentarios (id_estabelecimentos, id_usuarios, comentario, data_hora) values (5,4,'Recomendo! ;)','01/07/2018');
insert into TB_Comentarios (id_estabelecimentos, id_usuarios, comentario, data_hora) values (5,3,'Gostei bastante, ambiente organizado para uma oficina!!!','03/07/2018');
insert into TB_Comentarios (id_estabelecimentos, id_usuarios, comentario, data_hora) values (2,2,'Sempre atenciosos','05/07/2018');
insert into TB_Comentarios (id_estabelecimentos, id_usuarios, comentario, data_hora) values (3,2,'Qualidade 10','05/07/2018');
insert into TB_Comentarios (id_estabelecimentos, id_usuarios, comentario, data_hora) values (6,2,'Voltarei mais vezes','05/07/2018');








 
 
 
 
