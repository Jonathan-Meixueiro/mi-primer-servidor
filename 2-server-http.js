const http = require('http');

const server = http.createServer((req, res) => {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end('2) Hola mundo desde servidor HTTP en Node.js\n');
});

server.listen(3000, () => console.log('Servidor HTTP escuchando en el puerto 3000'));