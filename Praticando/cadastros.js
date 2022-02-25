const db = require("./bd")

 const cadastros = db.sequelize.define("cadastros", {
     name: {
         type: db.Sequelize.STRING
     },
     idade: {
         type: db.Sequelize.INTEGER
     },
     email: {
         type: db.Sequelize.STRING
     },
     telefone: {
         type: db.Sequelize.INTEGER
     },
     cargo: {
         type: db.Sequelize.STRING
     },
     salario: {
         type: db.Sequelize.INTEGER
     }

 })

 module.exports = cadastros
