var http    = require('http');
var mysql   = require('mysql');
var net     = require('net');
var tools   = require('./tools')();

var clients = [];

var pool    = mysql.createPool({
  host      : 'localhost',
  user      : 'root',
  password  : '',
  database  : 'eltraz' 
});

var api     = require('./api')(pool, tools);

net.createServer(function (socket) {

  clients.push(socket)

  console.log("Connect:", socket.remoteAddress);

  socket.on('data', function (data) {
    var retData = [];

    if (tools.jsonValid(data.toString())) {
      js = JSON.parse(String(data));
      for (var func in js) {
        console.log(socket.remoteAddress + " >   " + func + " => " + js[func]);
        if(typeof api[func] === 'function') {
          api[func](js[func], function(err, ret) {
            if (err) {console.log("Error:" + err); 
              retData.push({'success':false, 'method':func, 'argument':js[func], 'response':err});
            }else {
              retData.push({'success':true, 'method':func, 'argument':js[func], 'response':ret});
            }
          }, retData);
        }else {retData.push({'success':false, 'method':func, 'argument':js[func], 'response':'No such method'});}
      }
    }else {retData.push({'success':false, 'response':'Not valid json'});}

    retData.push('asd');
    retData.push('asdasgags');
    console.log(retData);
    socket.write(JSON.stringify(retData));
  });

  socket.on('end', function () {
    console.log("Disconnect:", socket.remoteAddress);
    clients.splice(clients.indexOf(socket), 1);
  });

}).listen(1337);

/*api["getUserById"]([3], function(err, user) {
  if (err) {console.log("Error:" + err); return;}
  console.log(user);
});*/

function httpReq(request, response){
  var json = "";
  
  request.on('data', function (chunk) {
    json += chunk;
  });

  request.on('end', function () {
    var retData = [];

    if (tools.jsonValid(json)) {
      js = JSON.parse(json);

      for (var func in js) {
        console.log("HTTP >   " + func + " => " + js[func]);
        if(typeof api[func] === 'function') {
          api[func](js[func], function(err, ret) {
            if (err) {console.log("Error:" + err); 
              retData.push({'success':false, 'method':func, 'argument':js[func], 'response':err});
            }else {
              retData.push({'success':true, 'method':func, 'argument':js[func], 'response':ret});
            }
          }, retData);
        }else {retData.push({'success':false, 'method':func, 'argument':js[func], 'response':'No such method'});}
      }
    }else {retData.push({'success':false, 'response':'Not valid json'});}

    response.writeHead(200);
    response.end(JSON.stringify(retData));
  });
}

var server = http.createServer(httpReq).listen(8080, function(){
  console.log("Server listening on: http://localhost:%s", 8080);
});

console.log('Server started');