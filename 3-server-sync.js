const http = require('http');
const fs = require('fs');

const server = http.createServer((req, res) => {
    try {
        const data = fs.readFileSync('index.html');
        res.writeHead(200, {'Content-Type': 'text/html'});
        res.end(data);
    } catch (err) {
        res.writeHead(500, {'Content-Type': 'text/plain'});
        res.end('Error interno del servidor');
    }
});

server.listen(3000, () => console.log('Servidor Síncrono escuchando en el puerto 3000'));