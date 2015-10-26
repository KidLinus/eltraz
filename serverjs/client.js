function Client(socket) {
	this.socket = socket

  this.send = function(data) {
    socket.write(data)
  };

  this.sendOthers = function(data, clients) {
    clients.forEach(function (c) {
      if (c.socket !== socket) c.send(data);
    });
  };

  this.sendAll = function(data, clients) {
    clients.forEach(function (c) {
      c.send(data);
    });
  };


}

module.exports = Client;