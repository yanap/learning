// index.js

const server = require('ws').Server
const ws = new server({ port: 8081 });

ws.on('connection', socket => {
	sonsole.log('connected!');

	socket.on('message', ms => {
		console.log(ms);
	});

	socket.on('close', () => {
		cosole.log('good bye.');
	});
});
