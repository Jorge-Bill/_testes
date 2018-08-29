/**
*loremIpsum.js
*faz uma requisicao a uma api externa, 
*e grava um arquivo com o nome e quantidade de paragrafos especificados
*
* Jorge 26/06/2018
**/

//versao 01
// let http = require('http');
// let fs = require('fs');

// http.get('http://loripsum.net/api/1', (res) => {
// 	let text = '';

// 	res.on('data', (chunk) => {
// 		text += chunk;
// 	});
// 	res.on('end', () => {
// 		fs.writeFile('lorem.html', text, () => {
// 			console.log('arquivo pronto');
// 		});
// 	}).on('error', (e) => {
// 		console.log('got error: ' + e.message);
// 	});
// });

let http = require('http');
let fs = require('fs');

// let fileName = String(process.argv[2] || '').replace(/[ˆa-z0-9\.]/gi, '');
// let quantityofParagraphs = String(process.argv[3] || '').replace(/[ˆ\d]/g, '');

//Mock
let fileName = 'texte.txt';
let quantityofParagraphs = 10;

const USAGE = 'USO: node loremIpsum.js {nomeArquivo} {quantidadeParagrafos}';

if (!fileName || !quantityofParagraphs) {
	return console.log(USAGE);
} 

http.get('http://loripsum.net/api/' + quantityofParagraphs, (res) => {
	
	let text = '';

	res.on('data', (chunk) => {
		text += chunk;
	});
	
	res.on('end', () => {
		fs.writeFile(fileName, text, () => {
			console.log(`arquivo ${fileName} pronto!`);
		});
	}).on('error', (e) => {
		console.log(`got error: ${e.message}`);
	});
});