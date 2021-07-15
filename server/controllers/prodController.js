const mysql = require("mysql");

//Ponte de conexão
const pool = mysql.createPool({
    connectionLimit: 100,
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME,
});

//Exibir Produtos
exports.view = (req, res) => {
    //Conexão com o banco de dados
    pool.getConnection((err, connection) => {
        if (err) throw err; //Sem conexão!!
        console.log("Conexão com o ID " + connection.threadId);
        //Usando a conexão
        //Opção para exibir apenas os ativos. Transformar em botão depois!!
        connection.query('SELECT * FROM produtos WHERE status = "ativo"', (err, rows) => {
            //Quando terminar a conexão, libere-a
            connection.release();
            if (!err) {
                res.render('home', { rows });
            } else {
                console.log(err);
            }
            console.log("Os dados da tabela produtos: \n", rows);
        });
    });
};