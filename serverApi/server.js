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

  var client = {
    socket: socket,
    userId: 1337
  };

  clients.push(client)

  console.log("Connect:", socket.remoteAddress);

  socket.on('data', function (data) {
    var retData = [];

    if (tools.jsonValid(data.toString())) {
      js = JSON.parse(String(data));
      for (var func in js) {
        console.log(socket.remoteAddress + " >   " + func + " => " + js[func]);
        if(typeof api[func] === 'function') {
          api[func](client, js[func], function(err, ret) {
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
    clients.splice(clients.indexOf(client), 1);
  });

}).listen(1337);

/*api["getUserById"]([3], function(err, user) {
  if (err) {console.log("Error:" + err); return;}
  console.log(user);
});*/