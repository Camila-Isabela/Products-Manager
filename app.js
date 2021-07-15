const express = require('express');
const exphbs = require('express-handlebars');
const bodyParser = require('body-parser');
const mysql = require('mysql');

require('dotenv').config();

const app = express();
const port = process.env.PORT || 5000;

//Parsing middleware
//Parsing application/x-www-form-urlencoded
app.use(express.urlencoded({ extended: false }));

//Parse application/json
app.use(express.json());

//Static files
app.use(express.static('public'));

//Template Engine     
app.engine('hbs', exphbs( {extname: '.hbs' } ));
app.set('view engine', 'hbs');

//Ponte de conexão 
// const pool = mysql.createPool({
//     connectionLimit : 100,
//     host            : process.env.DB_HOST,
//     user            : process.env.DB_USER,
//     password        : process.env.DB_PASS,
//     database        : process.env.DB_NAME
// });

//Conexão com o banco de dados
// pool.getConnection((err, connection) => {
//     if(err) throw err; //Sem conexão!!
//     console.log('Conexão com o ID ' + connection.threadId);
// });


//Router
//Isso era incialmente, agora vai ser substituído pelas rotas de acordo com as tabelas que eu criar
//Dentro da pasta "server" vem "routes" e "controllers". é lá que ficam meus dados
//excluindo...

app.get('', (req, res) => {
    res.render('home');
});

//Aqui são as novas rotas
// const routes = require('./server/routes/produto');
// app.use('/', routes);

app.listen(port, () => console.log(`Rodando na porta ${port}`));