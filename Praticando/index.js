// SERVIDOR EXPRESS
const express = require("express")
const serve = express()

const cadastros = require("./cadastros")

const banco = require("./bd") // IMPORTEI O MODULO DO BANCO DE DADOS


//CONFIG BODY-PARSER
const bodyParser = require("body-parser") //CHAMANDO O BODYPARSER
serve.use(bodyParser.urlencoded({extended: false}))
serve.use(bodyParser.json())

//CONFIG HANDLEBARS  //RESPONSÁVEL POR ADICIONAR O FRONT-END NA PAGINA 
const hdbs = require("express-handlebars") 
serve.engine("handlebars", hdbs.engine({defineLayout:("main")})) 
serve.set("view engine", "handlebars") 



serve.get("/", function(req,res){ //ROTA PRINCIPAL
    res.render("home")
})

serve.post("/formulario", function(req,res){ //ROTA DO FORMULARIO
    res.render("formulario")
})

serve.post("/sucess", function(req,res){
    cadastros.create({
        name: req.body.nome,
        idade: req.body.idade,
        email: req.body.email,
        telefone: req.body.telefone,
        cargo: req.body.cargo,
        salario: req.body.salario
    }).then(function(){
        res.render("sucess")
    }).catch(function(error){
        res.send("ERRO AO ENVIAR"+error)
    })
})



serve.listen(8081, function(req,res){
    console.log("SERVIDOR INICIADO!!! // url: http://localhost:8081")
}) 