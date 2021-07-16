const express = require('express');
const router = express.Router();
const prodController = require('../controllers/prodController');


//Create, Remove, Update, Delete o famoso CRUD!

//Exibir
router.get('/', prodController.view);

// //Pesquisar
router.post('/', prodController.find);

//Pegar para adicionar
router.get('/addprod', prodController.form);

//Adicionar
router.post('/addprod', prodController.create);

// //Editar
router.get('/editprod/:id', prodController.edit);

// //Atualizar
// router.post('/editprod/:id', prodController.update);

module.exports = router;