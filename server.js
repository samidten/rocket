var http = require('http');
http.createServer(function (req, res) {
    var now = new Date();
    res.end('Herro updated from Rocket! ' + now.toJSON() + ' on ' + process.env.HOSTNAME  + '\n');
    
}).listen(8000, '0.0.0.0');
console.log('Server running at http://:8000/');
