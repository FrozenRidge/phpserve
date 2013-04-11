var http = require('http')
var gateway = require('gateway')
var connect = require('connect')

// You must have `php-cgi` binary in your $PATH for this to work
var options = {
  '.php': 'php-cgi'
}

var cgi = gateway(process.cwd(), options)

var app = connect()
  .use(cgi)
  .use(connect.static(process.cwd()))
  .use(function(req, res){
    console.log("no such file: %s", req.url)
    res.statusCode = 404
    res.end('not found\n')
  });


var port = process.env.PORT || 8080
http.createServer(app).listen(port);
console.log("server listening on http://localhost:%s", port)
