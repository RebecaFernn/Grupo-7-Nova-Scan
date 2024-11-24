var ambiente_processo = 'producao';

// var ambiente_processo = 'desenvolvimento';

var caminho_env = ambiente_processo === 'producao' ? '.env' : '.env.dev';
// Acima, temos o uso do operador ternário para definir o caminho do arquivo .env
// A sintaxe do operador ternário é: condição ? valor_se_verdadeiro : valor_se_falso

require("dotenv").config({ path: caminho_env });

var express = require("express");
var cors = require("cors");
var path = require("path");
var WebSocket = require("ws")
var http = require("http");
var PORTA_APP = process.env.APP_PORT;
var HOST_APP = process.env.APP_HOST;
var PORT_WEBSOCKET = process.env.PORT_WEBSOCKET;

var app = express();
var server = http.createServer(app);
var wss = new WebSocket.Server({ server })

wss.on('connection', (socket) => {
    console.log('Novo cliente WebSocket conectado')

    socket.on('message', (mensagem) => {
        socket.send('Mensagem Recebida!')
        console.log('Mensagem recebida do cliente', mensagem)
    })

    socket.on('close', () => {
        console.log('Cliente Websocket desconectado')
    })
})
server.listen(PORT_WEBSOCKET, () => {
    console.log(`Servidor WebSocket rodando na porta ${PORT_WEBSOCKET}`)
})

var indexRouter = require("./src/routes/index");
var usuarioRouter = require("./src/routes/usuarios");
var empresasRouter = require("./src/routes/empresas");
var maquinasRouter = require("./src/routes/maquinas");
var alertasRouter = require("./src/routes/alertas");
var rebecaRouter = require("./src/routes/rebeca");
var kaueRouter = require("./src/routes/kaue")
var lucasRouter = require("./src/routes/lucas")

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, "public")));

app.use(cors());

app.use("/", indexRouter);
app.use("/usuarios", usuarioRouter);
app.use("/empresas", empresasRouter);
app.use("/maquinas", maquinasRouter);
app.use("/alertas", alertasRouter);
app.use("/rebeca", rebecaRouter);
app.use("/kaue", kaueRouter)
app.use("/lucas", lucasRouter)
app.listen(PORTA_APP, function () {
    console.log(`
    ##   ##  ######   #####             ####       ##     ######     ##              ##  ##    ####    ######  
    ##   ##  ##       ##  ##            ## ##     ####      ##      ####             ##  ##     ##         ##  
    ##   ##  ##       ##  ##            ##  ##   ##  ##     ##     ##  ##            ##  ##     ##        ##   
    ## # ##  ####     #####    ######   ##  ##   ######     ##     ######   ######   ##  ##     ##       ##    
    #######  ##       ##  ##            ##  ##   ##  ##     ##     ##  ##            ##  ##     ##      ##     
    ### ###  ##       ##  ##            ## ##    ##  ##     ##     ##  ##             ####      ##     ##      
    ##   ##  ######   #####             ####     ##  ##     ##     ##  ##              ##      ####    ######  
    \n\n\n                                                                                                 
    Servidor do seu site já está rodando! Acesse o caminho a seguir para visualizar .: http://${HOST_APP}:${PORTA_APP} :. \n\n
    Você está rodando sua aplicação em ambiente de .:${process.env.AMBIENTE_PROCESSO}:. \n\n
    \tSe .:desenvolvimento:. você está se conectando ao banco local. \n
    \tSe .:producao:. você está se conectando ao banco remoto. \n\n
    \t\tPara alterar o ambiente, comente ou descomente as linhas 1 ou 2 no arquivo 'app.js'\n\n`);
});
