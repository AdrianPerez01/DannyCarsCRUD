var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var logger = require('morgan');
var app = express();


var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var proveedorRouter = require('./routes/proveedor');
var articuloRouter = require('./routes/articulo');



// view engine setup//para trabajar con ejs
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');


app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(bodyParser.urlencoded({extended:false}));

app.use(bodyParser.json());
app.use(express.static(path.join(__dirname, 'public')));

//rutas
app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/proveedor',proveedorRouter);
app.use('/articulo',articuloRouter);

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
