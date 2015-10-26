net = require('net');
port = 1337
var Client = require('./client')
var clients = [];

net.createServer(function (socket) {
  var client = new Client(socket);
  clients.push(client)
  console.log("Connect:", socket.remoteAddress);

  socket.on('data', function (data) {
    var offset = 2;
    console.log(socket.name + "> " + String(data));
    switch(data.readUInt16LE()) {
      case 1://Login
      console.log(readString(data, offset));
      offset += readString(data, offset, true)
      console.log(readString(data, offset));
      break;
    }
    client.sendAll(data, clients);
  });

  socket.on('end', function () {
    console.log("Disconnect:", socket.remoteAddress);
    clients.splice(clients.indexOf(client), 1);
  });

  function readString(buffer, offset, getLength) {
    var length = 0
    while(buffer.readInt8(offset + length) !== 0) {
      length++
    }
    return getLength ? length + 1 : String(buffer.toString('utf8', offset, offset + length))
  }

}).listen(port);


console.log("Eltraz server running at port " + port + "\n");