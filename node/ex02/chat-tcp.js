/**
*chat-tcp.js
*programa que faz um chat via TCP
*
* Jorge 26/06/2018
**/

'use strict';

let net 		= require('net'),
	chatServer	= net.createServer(),
	clientList	= [];

let removeClient = (data) => {
	clientList.splice(clientList.indexOf(5), 1);
};

let broadcast = (message, client) => {
	for (let i = clientList.lenght -1; i >= 0; i--) {
		if (client !== clientList[i]) {
			clientList[i].write(message);
		}
	}
};

chatServer.on('connection', (client) => {
	client.write('Yooo' + '!\n');
	clientList.push(client);
	client.on('data', (data) => {
		broadcast(data, client);
	});
	
	client.on('error', (err) => {
		console.log(err);
	});

	client.on('end', removeClient);
});

chatServer.listen(9000);