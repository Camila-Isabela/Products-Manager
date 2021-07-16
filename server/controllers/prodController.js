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

//Pesquisando produto
exports.find = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err; //Sem conexão!!
        console.log("Conexão com o ID " + connection.threadId);
        let searchTerm = req.body.search;
        //Usando a conexão
        connection.query("SELECT * FROM produtos WHERE cod_barra LIKE ? ",
            ["%" + searchTerm + "%"], (err, rows) => {
            connection.release();
            if (!err) {
                res.render("home", { rows });
            } else {
                console.log(err);
            }
            console.log("Os dados da tabela produtos: \n", rows);
        });
    });
};

//Renderizando o formulário
exports.form = (req, res) => {
    res.render("add-prod");
};

//Adicionando produto
exports.create = (req, res) => {

    const { cod_barra, nome, fabricante, categoria, tipo, preco, qtd_estoque, peso, descricao} = req.body;

    pool.getConnection((err, connection) => {
        if (err) throw err; //Sem conexão!!
        console.log("Conexão com o ID " + connection.threadId);
        let searchTerm = req.body.search;
        
        connection.query("INSERT INTO produtos SET cod_barra = ?, nome = ?, fabricante = ?, categoria = ?, tipo = ?, preco = ?, qtd_estoque = ?, peso = ?, descricao = ?",
            [cod_barra, nome, fabricante, categoria, tipo, preco, qtd_estoque, peso, descricao], (err, rows) => {
            connection.release();
            if (!err) {
                res.render("add-prod", { alert: 'Produto adicionado com sucesso!!!' });
            } else {
                console.log(err);
            }
            console.log("Os dados da tabela produtos: \n", rows);
        });
    });
};

//Editando produto
exports.edit = (req, res) => {

        pool.getConnection((err, connection) => {
        if (err) throw err; //Sem conexão!!
        console.log("Conexão com o ID " + connection.threadId);
        
        connection.query('SELECT * FROM produtos WHERE id = ?', [req.params.id], (err, rows) => {
           
            connection.release();
            if (!err) {
                res.render('edit-prod', { rows });
            } else {
                console.log(err);
            }
            console.log("Os dados da tabela produtos: \n", rows);
        });
    });
};

//Atualizando produto
exports.update = (req, res) => {

        const { cod_barra, nome, fabricante, categoria, tipo, preco, qtd_estoque, peso, descricao} = req.body;

        pool.getConnection((err, connection) => {
        if (err) throw err; //Sem conexão!!
        console.log("Conexão com o ID " + connection.threadId);
        
        connection.query('UPDATE produtos SET cod_barra = ?, nome = ?, fabricante = ?, categoria = ?, tipo = ?, preco = ?, qtd_estoque = ?, peso = ?, descricao = ? WHERE id = ?', [cod_barra, nome, fabricante, categoria, tipo, preco, qtd_estoque, peso, descricao, req.params.id], (err, rows) => {
            
            connection.release();
            if (!err) {

                pool.getConnection((err, connection) => {
                    if (err) throw err; //Sem conexão!!
                    console.log("Conexão com o ID " + connection.threadId);
                    
                    connection.query('SELECT * FROM produtos WHERE id = ?', [req.params.id], (err, rows) => {
                       
                        connection.release();
                        if (!err) {
                            res.render("edit-prod", { rows, alert: 'Produto atualizado!!!' });
                        } else {
                            console.log(err);
                        }
                        console.log("Os dados da tabela produtos: \n", rows);
                    });
                });


            } else {
                console.log(err);
            }
            console.log("Os dados da tabela produtos: \n", rows);
        });
    });
};

//Excluindo produto
exports.delete = (req, res) => {

    pool.getConnection((err, connection) => {
    if (err) throw err; //Sem conexão!!
    console.log("Conexão com o ID " + connection.threadId);
    
    connection.query('DELETE FROM produtos WHERE id = ?', [req.params.id], (err, rows) => {
       
        connection.release();
        if (!err) {
            res.redirect('/');
        } else {
            console.log(err);
        }
        console.log("Os dados da tabela produtos: \n", rows);
    });
});
};

