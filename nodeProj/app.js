var http = require('http');
var handle = require('./handle');
//
// function handle(request, response){
//
//     response.writeHead(200, {'Content-Type' : 'text/html'});
//
//     response.write('<!DOCTYPE "html">');
//     response.write('<html>');
//     response.write('<head><title>http module</title></head>');
//     response.write('<body>');
//     response.write('<h1>Hello ohhh ai</h1>');
//     response.write('</body>');
//     response.write('</html>');
//
//     response.end();
// }


var server = http.createServer(handle);

server.listen(3000, function() {
    console.log('Server is listening at port 3000');
});

