var express = require('express');
var uuid = require('node-uuid');
var router = express.Router();
var config = require ('../config');
var mysql = require('mysql');

connection = mysql.createConnection(config.database);
connection.connect(function(err){
    if(err) throw err;
    console.log("Conexao estabelecida com o banco app, login!\n");
});

global.db = connection;



module.exports = function (app) {

	app.get('/login', function (req, res, next) {
		message = " ";
		res.render('index.ejs', {message: message} );
	});

	app.post('/login', function (req, res, next) {
		
		var login = req.body.email;
		var pass  = req.body.password;
		var sess = req.session; 
	
		var sql = "select id, nome, email, senha, localizacao_atual, rua, numero, bairro, cidade, cep, estado, pais, complemento, foto_perfil"+
		" from TB_Usuarios where email = '"+login+"' && senha = '"+pass+"'";
		var sql2 = "select id, nome, cnpj, email, credencia, rua, numero, bairro, cidade, cep, estado, pais, complemento, foto_perfil,"+
		" rankingAgilidade, rankingCustoBeneficio, rankingServico, telefone1, telefone2 from TB_Estabelecimentos where email = '"+login+"' && senha = '"+pass+"'";
	//	var sql ="SELECT id, `nome`,`cpf`,`email`,`login`, `senha` FROM `tb_usuarios` WHERE `login`='"+email+"' and senha = '"+pass+"'";                           
    //  var sql2="SELECT id, `nome`,`cnpj`,`email`,`login`, `senha` FROM `tb_estabelecimentos` WHERE `login`='"+email+"' and senha = '"+pass+"'";                           
      	

		db.query(sql, function(err, results){      
          if (err){
              console.log(err);
             return res.send({men: err.code});
          }
          return res.send(results);               
      });

		db.query(sql2, function(err, results){      
          if (err){
              console.log(err);
             return res.send({men: err.code});
          }
          return res.send(results);               
      });
		
		//OUTRA FORMA
		
		/*
		var result = [];
		var  getUserInfoFromDB = function(callback) {
		
			db.query(sql, function(err, res, fields)
			{
			    if (err)  
			    	return callback(err);
			    
			    callback(null, result);
			});
		};
		
		
		getUserInfoFromDB(function (err, result) {
  			if (err) 
  				console.log("Database error!");
  			else 
  				console.log(result);
		};
		
		*/
		
	});
	
	app.get('/signup', function (req, res, next) {
		message = " ";
		res.render('signup.ejs', {message: message} );
	});	

	app.post('/signup', function (req, res, next) {
		var post  = req.body;
		var nome  = post.nome;
		var cpf   = post.cpf;
		var email = post.email;
		var login = post.login;
		var senha = post.senha;
		var loc_a = post.localizacao_atual;
		var rua   = post.rua;
		var num   = post.numero;
		var bairro= post.bairro;
		var cidade= post.cidade;
		var cep   = post.cep;
		var estado= post.estado;
		var pais  = post.pais;
		var comp  = post.complemento;
		var fot_p = post.foto_perfil;

		var sql = "INSERT INTO tb_usuarios (nome, cpf, email, login, senha, loc_a, rua, numero, bairro, cidade, cep, estado, pais, complemento, foto_p) Values ?"
		var query = db.query(sql, function(err, result) {

         message = "Conta criada com sucesso!";
         res.render('signup.ejs',{message: message}); //tela de redirecionamento mudar campos
		});
	});

	app.post('/signupEstab', function (req, res, next) {
		var post  = req.body;
		var nome  = post.nome;
		var cnpj  = post.cnpj;
		var email = post.email;
		var login = post.login;
		var senha = post.senha;
		var rua   = post.rua;
		var num   = post.numero;
		var bairro= post.bairro;
		var cidade= post.cidade;
		var cep   = post.cep;
		var estado= post.estado;
		var pais  = post.pais;
		var comp  = post.complemento;
		var rkAgil= 0;
		var rkCust= 0;
		var rkServ= 0;

		var sql = "INSERT INTO tb_estabelecimentos (nome, cnpj, email, login, senha, rua, numero, bairro, cidade, cep, estado, pais, comp, rkAgil, rkCust, rkServ) Values ?"
		var query = db.query(sql, function(err, result) {

         message = "Oficina criada com sucesso!";
         res.render('signup.ejs',{message: message}); //tela de redirecionamento mudar campos
		});
	});
	
	app.get('/logout', function (req, res, next) {
		delete req.session.authenticated;
		res.redirect('/');
	});

	app.post('/forgotPwd', function (req, res) {


        var dateTime = Date();
        console.log("Recuperacao solicitada!");
        var pwdRequest = req.body.email;
        var uuid1 = uuid.v1();
        var map = {};
        map.emailId = pwdRequest;
        map.identifier = uuid1;
        map.timestamp = dateTime;
        var completeUpdatedList = [];
        var completeUpdatedList = addLatestToList(map, mapList, listOfEmail);
        console.log(JSON.stringify(mapList));
        res.send("Resetar senha page:http://localhost:8080/restMyPassword?token=" + map.identifier);
    });

    app.post('/restMyPassword', function (req, res) {
	    var password_change = req.body;
	    var token = req.param('token');
	    var password = password_change.password;
	    var confirm_pwd = password_change.confirm_password;
	    var email = password_change.email;
	    if (password == confirm_pwd) {
	        removeFromListAndMapOnSuccess(email)
	        console.log(JSON.stringify(mapList));
	        //bcrypt.genSalt(saltRounds, function (err, salt) {
	            //bcrypt.hash(password, salt, function (err, hash) {
	                var dbEntry = {};
	                dbEntry.email = email;
	                //dbEntry.passwordHash = hash;
	                database.collection("signIn").insertOne(dbEntry, function (err, res) {
	                    if (err) throw err;
	                    console.log("erro");
	                    //db.close();
	                });
	            //});
	        //});
	        res.send("ok");
	    }
	    else {
	        res.send("senhas diferentes");
	    }
	    console.log('senha recuperada id:' + "token" + token);
	});

	
	var addLatestToList = function (map, mapListComplete, listOfEmail) {
	    if (listOfEmail.indexOf(map.emailId) == -1) {
	        listOfEmail.push(map.emailId);
	        mapListComplete.push(map);
	        return mapListComplete;
	    }
	    else {
	        for (var i in mapList) {
	            if (mapListComplete[i].emailId == map.emailId) {
	                mapListComplete[i].identifier = map.identifier;
	                mapListComplete[i].timestamp = map.timestamp;
	            }
	        }
	    }
	    return mapListComplete;
	}

	var removeFromListAndMapOnSuccess = function (email) {
	    for (var i = 0; i < mapList.length; i++) {
	        if (mapList[i].emailId == email) {
	            mapList.splice(i, 1);
	            console.log("retirando objeto");
	        }
	    }
	    for (var i = 0; i < listOfEmail.length; i++) {
	        if (listOfEmail[i] == email) {
	            listOfEmail.splice(i, 1);
	            console.log("retirando email");
	        }
	    }
	}

};