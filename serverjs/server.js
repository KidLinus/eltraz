var net         = require('net');
var mysql       = require('mysql');


var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  db       : 'eltraz'
});

connection.connect();

port = 1337
var clients = [];

function readString(buffer, offset, getLength) {
  var length = 0
  while(buffer.readInt8(offset + length) !== 0) {
    length++
  }
  return getLength ? length + 1 : String(buffer.toString('utf8', offset, offset + length))
}

function login() {
  connection.query('SELECT * FROM `user`;', function(err, rows, fields) {
    if (err) throw err;
    return rows;
  });
}

/*  connection.query('SELECT * FROM `user`;', function(err, rows, fields) {
    if (err) throw err;
    return ['User pass: ', err, rows, fields];
  });*/

net.createServer(function (socket) {
  var ip = socket.remoteAddress;

  socket.on('data', function (data) {
    var offset = 2;
    console.log(data.toString('utf8'));
    switch(data.readUInt16LE()) {
      case 1://Login
      var username = readString(data, offset);
      offset += readString(data, offset, true)
      var password = readString(data, offset);
      console.log(login());
      break;
    }
    socket.write(data);
  });

  socket.on('end', function () {
    console.log("Disconnect:", ip);
    clients.splice(clients.indexOf(socket), 1);
  });

  clients.push(socket)
  console.log("Connect:", ip);

}).listen(port);


console.log("Eltraz server running at port " + port + "\n");