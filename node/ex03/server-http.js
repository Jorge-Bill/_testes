/**
*server-http.js
*faz um server no endereco http://127.0.0.1:1337/
*
* Jorge 26/06/2018
**/

let http = require('http');
let server = http.createServer((request, response) => {
	response.writeHead(200, {'Content-Type': 'text/plain'});
	
	if(request.url === '/') {
		response.end('hello world\n MOTHERFUCKER!!!');
	} else if (request.url === '/contato') {
		response.end('jorge.mendesx@gmail.com\n SUCKER!!!');
	} else {
		response.end('Not found\n Bitch!!!');
	}

});

server.listen(1337, '127.0.0.1');
console.log('Server runing at http://127.0.0.1:1337/');