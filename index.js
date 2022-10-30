const express = require('express');
require('dotenv').config()
const port = process.env.PORT || 3000;
const output = process.env.OUTPUT || 'Please provide output in .env';
const app = express();

// main
app.get('/', (req, res) => {
    return res.status(200).json({ status: 'success', data: `${output} is working fine V3` });
});

// health check
app.get('/health_check', (req, res) => {
    return res.status(200).json({ status: 'success' });
});

var http = require('http').createServer(app);
http.listen(port, () => console.log(`App listening on port: ${port}`));
