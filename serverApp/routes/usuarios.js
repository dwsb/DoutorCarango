var express = require('express');
var router = express.Router();
var config = require ('../config');
var mysql = require('mysql');

connection = mysql.createConnection(config.database);
connection.connect(function(err){
    if(err) throw err;
    console.log("Conexao estabelecida com o banco, app usuarios!\n");
});

//listar todos usuario type=desc(decrente), type=asc(crescente)
router.get('/:type',function(req, res, next){
    var type = req.params.type;
    var sql = "select id ,nome, email, localizacao_atual, rua, numero, bairro, cidade, cep, estado, pais, complemento, foto_perfil, telefone1, telefone2 "+
     "from TB_Usuarios order by nome "+type;
    console.log(req.params.id);
    connection.query(sql, function(err, result, fields){
        if(err){
            console.log(err);
            return res.send({men: err.code});
        }
      return res.send(result);
    });
});
//procurar por id, nome e ou cpf
router.get('/procurar/id=:id&nome=:nome&email=:email',function(req,res,next){
    var id = req.params.id;
    var nome = req.params.nome;
    var email = req.params.email;
    if(id=="*") id = "'%'"; else id = "'"+id+"%'";
    if(nome=="*") nome = "'%'"; else nome = "'"+nome+"%'";
    if(email=="*") email = "'%'"; else email = "'"+email+"%'";
    var sql = "select id ,nome, email, localizacao_atual, rua, numero, bairro, cidade, cep, estado, pais, complemento, foto_perfil, telefone1, telefone2 "+ 
    "from TB_Usuarios where id like "+id+" && "+" nome like "+nome+" && "+" email like "+email;
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
    var sql = "insert into TB_Usuarios (nome, email, senha, telefone1) Values ?"
    var values = [[req.body.nome, req.body.email, req.body.senha, req.body.telefone1]];
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
    var sql = "update TB_Usuarios set nome = '"+req.body.nome+"', email = '"+req.body.email+"', telefone1 = '"+req.body.telefone1+
    "', telefone2 = '"+req.body.telefone2+"' where id = "+id;
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
    var sql = "update TB_Usuarios set senha = '"+ req.body.senha +"' where id = "+id;
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
    var sql = "update TB_Usuarios set localizacao_atual = '"+ req.body.localizacao_atual+ "', rua = '"+req.body.rua +"', numero = '"+ req.body.numero+
    "', bairro = '"+req.body.bairro+"', cidade = '"+req.body.cidade+"', cep = '"+req.body.cep+"', estado = '"+req.body.estado+"', pais = '"+req.body.pais+
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



//deleta passando como parametro id
router.delete('/deletar', function(req,res,next){
    var id = req.body.id;
    sql = "delete from TB_Usuarios where id like '"+id+"'";
    console.log(sql);
    connection.query(sql, function (err, result) {
        if (err){
            console.log(err);
           return res.send({men: err.code});
        }
        return res.send({men: "deletado"});
    });
});

router.get('/cool', function(req, res, next) {
  res.send('u r so cool!');
});

module.exports = router;