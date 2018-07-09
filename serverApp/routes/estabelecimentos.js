var express = require('express');
var router = express.Router();
var config = require ('../config');
var mysql = require('mysql');
var multer = require('multer');
var storage = multer.diskStorage({
  destination: function (req, file, cb) {
    
    
    cb(null, 'Uploads/Estabelecimentos/');
  },
  filename: function (req, file, cb) {
    var file_name = req.params.id_estabelcimento + "_"+file.originalname;
    cb(null, file_name)
  }
});
var upload = multer({storage})

connection = mysql.createConnection(config.database);
connection.connect(function(err){
    if(err) throw err;
    console.log("Conexao estabelecida com o banco app, estabelecimentos!\n");
});

router.get('/foto/:id_estabelecimentos', function(req,res,next){
var id_estabelecimentos = req.params.id_estabelecimentos;
var sql = "select foto_perfil from TB_Estabelecimentos where id = "+id_estabelecimentos;
connection.query(sql, function(err, result, fields){
    if(err){
        console.log(err);
        return res.send({men: err.code});
    }
  return res.send(result);
 });
});

router.post('/upload/:id_estabelecimentos', upload.any(), function(req, res, next){
    
    req.files.forEach(element => {
        var id_estabelecimentos = req.params.id_estabelecimentos;
        var file_name = element.filename
        var sql = "update TB_Estabelecimentos set foto_perfil = '"+file_name+"' where id = "+id_estabelecimentos;
        connection.query(sql, function (err, result) {
          if (err){
              console.log(err);
             return res.send({men: err.code});
          }
          return res.send({men: "Upload realizado com sucesso"});
      });
    });
  }); 

//listar todos usuario type=desc(decrente), type=asc(crescente)
router.get('/:type',function(req, res, next){
    var type = req.params.type;
    var sql = "select id ,nome, email, credencia, rua, numero, bairro, cidade, cep, estado, pais, complemento, foto_perfil, telefone1, telefone2, rankingAgilidade"+
    ", rankingAgilidade, rankingCustoBeneficio, rankingServico from TB_Estabelecimentos order by nome "+type;
    console.log(req.params.id);
    connection.query(sql, function(err, result, fields){
        if(err){
            console.log(err);
            return res.send({men: err.code});
        }
      return res.send(result);
    });
});

//verificar quais as oficinas fazem quais serviços
router.get('/categoria/:tipo', function (res, req, next) {
    var filter = req.params.tipo;
    var idCategoria = "select * from TB_Categorias where categoria = " + filter;
    var getEstabelecimentos = "select id_estabelecimentos from tb_estabelecimentos_categorias where id_categorias = " + idCategoria;
    var sql = "select * from tb_estabelecimentos where id = (" + getEstabelecimentos + ")";
    connection.query(sql, function (err, result) {
        if(err){
            console.log(err);
            return res.send({men: err.code});
        }
        return res.send(result)
    })
});


//1 = Agilidade
//2 = Preço Baixo
//3 = Serviço
//ordena oficinas pelo rank escolhido
router.get('/filter/categoria=:categoria&ranking=:ranking', function (req, res, next) {
    var ranking = req.params.ranking;
    var categoria = req.params.categoria;
    var sql;
    if (ranking == 1) {
        sql = "select e.id, e.nome,e.credencia,e.foto_perfil, e.rankingAgilidade, e.rua , e.numero, e.bairro, e.cidade, e.cep, e.estado, e.pais, e.complemento,"+
        " (select count(*) from TB_Av_Agilidade where id_estabelecimentos = e.id) as numeroAvaliacoes,"+ 
        " (select count(*) from TB_Comentarios where id_estabelecimentos = e.id) as numeroComentarios, (select count(*) from TB_Promocoes where id_estabelecimentos = e.id) as numeroPromocoes"+ 
        " from TB_Estabelecimentos as e , TB_Categorias as cat, TB_Estabelecimentos_Categorias as ec where cat.categoria like '"+categoria+"%' &&  cat.id like ec.id_categorias &&"+ 
        " e.id = ec.id_estabelecimentos "+
        " order by e.rankingAgilidade desc";
    }
    if (ranking == 2) {
        sql = "select e.id, e.nome,e.credencia,e.foto_perfil, e.rankingCustoBeneficio, e.rua , e.numero, e.bairro, e.cidade, e.cep, e.estado, e.pais, e.complemento,"+
        " (select count(*) from TB_Av_CustoBeneficio where id_estabelecimentos = e.id) as numeroAvaliacoes,"+ 
        " (select count(*) from TB_Comentarios where id_estabelecimentos = e.id) as numeroComentarios, (select count(*) from TB_Promocoes where id_estabelecimentos = e.id) as numeroPromocoes"+ 
        " from TB_Estabelecimentos as e , TB_Categorias as cat, TB_Estabelecimentos_Categorias as ec where cat.categoria like '"+categoria+"%' &&  cat.id like ec.id_categorias &&"+ 
        " e.id = ec.id_estabelecimentos "+
        " order by e.rankingCustoBeneficio desc";
    }
    if (ranking == 3) {
        sql = "select e.id, e.nome,e.credencia,e.foto_perfil, e.rankingServico, e.rua , e.numero, e.bairro, e.cidade, e.cep, e.estado, e.pais, e.complemento,"+
        " (select count(*) from TB_Av_Servico where id_estabelecimentos = e.id) as numeroAvaliacoes,"+ 
        " (select count(*) from TB_Comentarios where id_estabelecimentos = e.id) as numeroComentarios, (select count(*) from TB_Promocoes where id_estabelecimentos = e.id) as numeroPromocoes"+ 
        " from TB_Estabelecimentos as e , TB_Categorias as cat, TB_Estabelecimentos_Categorias as ec where cat.categoria like '"+categoria+"%' &&  cat.id like ec.id_categorias &&"+ 
        " e.id = ec.id_estabelecimentos "+
        " order by e.rankingServico desc";
    }
    console.log(sql);
    connection.query(sql, function (err, result) {
        if (err) {
            console.log(err)
            return res.send({ men: err.code })
        }
        return res.send(result);
    });

});

//procurar por uma oficina
router.get('/procurar/id=:id&nome=:nome&email=:email', function(req, res, next){
    var id = req.params.id;
    var nome = req.params.nome;
    var email = req.params.email;
    if(id == "*") id = "'%'";
    if(nome == "*") nome = "'%'"; else nome = "'"+nome+"%'"; 
    if(email=="*") email = "'%'"; else email = "'"+email+"%'";
    var sql = "select id ,nome, email, credencia, rua, numero, bairro, cidade, cep, estado, pais, complemento, foto_perfil, telefone1, telefone2, rankingAgilidade"+ 
    ", rankingAgilidade, rankingCustoBeneficio, rankingServico from TB_Estabelecimentos where id like "+id+" && "+" nome like "+nome+" && "+" email like "+email;
    console.log(sql);
    connection.query(sql, function(err, result, fields){
        if(err){
            console.log(err);
            return res.send({men: err.code});
        }
      return res.send(result);
    });
});

//cadastro
router.post('/cadastrar', function(req, res, next){
    var sql = "insert into TB_Estabelecimentos (nome, cnpj, credencia, email, senha, telefone1"+
    ", rua, numero, bairro, cidade, cep, estado, pais, complemento) Values ?";
    var values = [[req.body.nome, req.body.cnpj, req.body.credencia, req.body.email,req.body.senha,req.body.telefone1,
    req.body.rua, req.body.numero ,req.body.bairro, req.body.cidade, req.body.cep, req.body.estado, req.body.pais, req.body.complemento]];
    connection.query(sql, [values], function (err, result) {
        if (err){
            console.log(err);
           return res.send({men: err.code});
        }
        return res.send({men: "cadastrado"});
    });
});

//Atualiza passando como parametro o id
router.put('/atualizar/dados', function(req,res,next){
    var id = req.body.id;
    var sql = "update TB_Estabelecimentos set nome = '"+req.body.nome+"', cnpj = '"+req.body.cnpj+"', email = '"+req.body.email+
    "', telefone1 = '"+req.body.telefone1+"', telefone2 = '"+req.body.telefone2+"' where id = "+ id;
    console.log(sql);
    connection.query(sql, function (err, result) {
        if (err){
            console.log(err);
           return res.send({men: err.code});
        }
        return res.send({men: "atualizado"});
    });
});

router.put('/atualizar/senha', function(req,res,next){
    var id = req.body.id;
    var sql = "update TB_Estabelecimentos set senha = '"+ req.body.senha +"' where id = "+id;
    console.log(sql);
    connection.query(sql, function (err, result) {
        if (err){
            console.log(err);
           return res.send({men: err.code});
        }
        return res.send({men: "atualizado"});
    });
});

router.put('/atualizar/endereco', function(req,res,next){
    var id = req.body.id;
    var sql = "update TB_Estabelecimentos set rua = '"+req.body.rua +"', numero = '"+ req.body.numero+
    "', bairro = '"+req.body.bairro+"', cidade = '"+req.body.cidade+"', cep = '"+req.body.cep+
    "', estado = '"+req.body.estado+"', pais = '"+req.body.pais+
    "', complemento = '"+req.body.complemento+"' where id = "+id;
    console.log(sql);
    connection.query(sql, function (err, result) {
        if (err){
            console.log(err);
           return res.send({men: err.code});
        }
        return res.send({men: "atualizado"});
    });
});


//deleta passando como parametro id do estabelecimento
router.delete('/deletar', function(req,res,next){
    var id = req.body.id;
    sql = "delete from TB_Estabelecimentos where id = "+id;
    console.log(sql);
    connection.query(sql, function (err, result) {
        if (err){
            console.log(err);
           return res.send({men: err.code});
        }
        return res.send({men: "deletado"});
    });
});


router.post('/categorias/cadastrar',function(req,res,next){
    var id_estabelecimentos = req.body.id_estabelecimentos;
    var id_categorias = req.body.id_categorias;
    values = [[id_estabelecimentos,id_categorias]];
    sql = "insert into TB_Estabelecimentos_Categorias (id_estabelecimentos, id_categorias) values ?";
    console.log(sql);
    connection.query(sql,[values], function(err, result){
        if(err){
            console.log(err);
            return res.send({men: err.code});
        }
        return res.send({men: "cadastrado"});
    });
});

router.get('/categorias/id_estabelecimentos=:id_estabelecimentos',function(req, res,next){
    var id_estabelecimentos = req.params.id_estabelecimentos;
    sql = "select * from TB_Estabelecimentos_Categorias where id_estabelecimentos ="+id_estabelecimentos;
    console.log(sql);
    connection.query(sql,function(err, result){
        if(err){
            console.log(err);
            return res.send({men: err.code});
        }
        return res.send(result);
    });
});

router.delete('/categorias/deletar',function(req,res,next){
    var id = req.body.id;
    sql = "delete from TB_Estabelecimentos_Categorias where id = "+id;
    console.log(sql);
    connection.query(sql, function(err, result){
        if(err){
            console.log(err);
            return res.send({men: err.code});
        }
        return res.send({men: "deletado"});
    });
});

router.put('/categorias/atualizar',function(req, res, next){
    var id = req.body.id;
    var id_estabelecimentos = req.body.id_estabelecimentos;
    var id_categorias = req.body.id_categorias;
    sql = "update TB_Estabelecimentos_Categorias set id_estabelecimentos = '"+id_estabelecimentos+
    "' , id_categorias = '"+id_categorias+"' where id = "+id;
    console.log(sql);
    connection.query(sql, function(err, result){
        if(err){
            console.log(err);
            return res.send({men: err.code});
        }
        return res.send({men: "Atualizado"});
    });
});


router.post('/promocoes/cadastrar',function(req,res,next){
    var id_estabelecimentos = req.body.id_estabelecimentos;
    var descricao_promocao = req.body.descricao_promocao;
    var validade = req.body.validade;
    sql = "insert into TB_Promocoes (id_estabelecimentos, descricao_promocao, validade) values ?"
    console.log(sql);
    values = [[id_estabelecimentos, descricao_promocao, validade]];
    connection.query(sql,[values], function(err, result){
        if(err){
            console.log(err);
            return res.send({men: err.code});
        }
        return res.send({men: "cadastrado"});
    });
});

router.get('/promocoes/id_estabelecimentos=:id_estabelecimentos', function(req, res, next){
    var id_estabelecimentos = req.params.id_estabelecimentos;
    sql = "select * from TB_Promocoes where id_estabelecimentos = "+id_estabelecimentos;
    connection.query(sql,function(err, result){
        if(err){
            console.log(err);
            return res.send({men: err.code});
        }
        return res.send(result);
    });
});

router.delete('/promocoes/deletar', function(req, res, next){
    var id = req.body.id;
    sql = "delete from TB_Promocoes where id = "+id;
    connection.query(sql,function(err, result){
        if(err){
            console.log(err);
            return res.send({men: err.code});
        }
        return res.send({men:"deletado"});
    });
});

router.put('/promocoes/atualizar', function(req, res, next){
    var id = req.body.id;
    var descricao_promocao = req.body.descricao_promocao;
    var validade = req.body.validade;
    sql = "update TB_Promocoes set descricao_promocao = '"+descricao_promocao+"', validade = '"+validade+"' where id = "+id;
    connection.query(sql,function(err, result){
        if(err){
            console.log(err);
            return res.send({men: err.code});
        }
        return res.send({men:"atualizado"});
    });
});

router.get('/comentarios/id_estabelecimentos=:id_estabelecimentos',function(req, res, next){
    var id_estabelecimentos = req.params.id_estabelecimentos;
    sql = "select * , (select nome from TB_Usuarios where id = a.id_usuarios) as nomeUsuario "+
    "from TB_Comentarios as a where id_estabelecimentos = "+id_estabelecimentos;
    connection.query(sql,function(err, result){
        if(err){
            console.log(err);
            return res.send({men: err.code});
        }
        return res.send(result);
    });
});

module.exports = router;