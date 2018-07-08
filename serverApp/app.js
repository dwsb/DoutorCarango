var express = require('express')
  , routes = require('./routes')
  , http = require('http')
  , path = require('path');

var createError = require('http-errors');
var cookieParser = require('cookie-parser');
var bodyParser = require("body-parser");
var logger = require('morgan');
var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var usuariosRouter = require('./routes/usuarios');
var estabelecimentosRouter = require('./routes/estabelecimentos');
var categoriasRouter = require('./routes/categorias');
var funcoesRouter = require('./routes/funcoes');
var loginRouter = require('./routes/login');
var avaliacoesRouter = require('./routes/avaliacoes');
var app = express();


// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

//app.use(express.static());
app.use(logger('dev'));
app.use(bodyParser.urlencoded({extended:true}));
app.use(bodyParser.json());
//app.use(express.json());
//app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/usuarios', usuariosRouter);
app.use('/estabelecimentos',estabelecimentosRouter);
app.use('/categorias',categoriasRouter);
app.use('/funcoes', funcoesRouter);
app.use('/avaliacoes', avaliacoesRouter);
require('./routes/login.js')(app);
// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
