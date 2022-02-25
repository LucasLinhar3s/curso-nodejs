const Sequelize = require("sequelize")
const banco = new Sequelize("usuarios", "root", "Go7/flo2", {
    host: "localhost",
    dialect: "mysql"
})


banco.authenticate().then(function(){
    console.log("BANCO DE DADOS AUTENTIFICADO!!!")
}).catch(function(error){
    console.log("FALHA NA AUTENTIFICAÇÃO DO BANCO!!!"+error)
})

module.exports = {
    Sequelize: Sequelize,
    sequelize: banco
}