'use strict';
const os = require('os');
const Hapi = require('@hapi/hapi');

const init = async () => {

    const server = Hapi.server({
        port: 8080,
        host: '0.0.0.0'
    });

    let cnt = 0;

    server.route({
        method: 'GET',
        path: '/',
        handler: (request, h) => {

            return `Hapi Hello on ${os.hostname()}:${cnt++} \n`;
        }
    });

    server.route({
        method: 'GET',
        path: '/healthz',
        handler: (request, h) => {
            return '<h1>contact us page<h1>';
        }
    });

    await server.start();
    console.log('Server running on %s', server.info.uri);
};

process.on('unhandledRejection', (err) => {
    console.log(err);
    process.exit(1);
});

init();