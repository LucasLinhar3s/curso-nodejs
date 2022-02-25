//ENTRAR NO MYSQL POR QUALQUER TERMINAL{
    MYSQL -H LOCALHOST -U ROOT -P
}

//MOSTRAR DATABASES{
    SHOW DATABASES;
}
//MOSTRAR TABELAS{
    SHOW TABLES;
}
// NA TABELA{
    USE NOME DA TABLE
}


//CRIAR TABELAS NO MYSQL
CREATE TABLE USERS(
    NOME VARCHAR(50), 
    EMAIL VARCHAR(50), 
    TELEFONE INT
    );

//INSERIR DADOS NA TABELAS
INSERT INTO USERS(NOME,EMAIL,TELEFONE) VALUES(
    "VINICIUS LINHARES",
    "LINHARES7748@GMAIL.COM",
    84
);

//VER DADOS DA TABELA{
    SELECT * FROM USERS;
}
//ATUALIZAR DADOS DA TABELA{
    UPDATE USERS SET NOME = "LOUCA" WHERE NOME = "LUCAS LINHARES";
}
//EXCLUIR DADOS DA TABELA{

}
//CONSULTAR DADOS NA TABELA{
    SELECT * FROM USERS WHERE NOME = "LUCAS LINHARES";
}
//DELETAR REGISTROS DA TABELA{
    DELETE FROM USERS WHERE NOME = "VINICIUS LINHARES";
}

//CONECTANDO O MYSQL{
    const Sequelize = require("sequelize")
    const sequelize = new Sequelize("nome da database", "usuario", "senha",{
    host: "localhost",
    dialect: "mysql"
})

sequelize.authenticate().then(function(){
    console.log("AUTENTICADO!")
}).catch(function(erro){
    console.log("ERRO NA AUTENTIFICAÇÃO!"+erro)
})
}

//CRIANDO TABELAS{
    const nomedadatabase = sequelize.define("nomedatable",{
    nome da 1 coluna:{
        type: Sequelize.STRING
    },
    nome da 2 coluna...:{
        type: Sequelize.INTEGER
    }
})
nomedatabela.sync({force: true})
}

//INSERINDO DADOS NA TABLE {
nomedatabela.create({
    nomedacoluna: "nome qaulque",
    nomeda2coluna: 20
})
}

//CHAMANDO O HANDLEBARS  CONFIG
var exphbs = require('express-handlebars')

app.engine('handlebars', exphbs.engine({defaultLayout : "main"}));
app.set('view engine', 'handlebars');

//CHAMANDO O BODYPARSER
const bodyParser = require("body-parser")
app.use(bodyParser.urlencoded({extended: false}))
app.use(bodyParser.json())