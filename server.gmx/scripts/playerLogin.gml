var _sock = argument0
var _name = argument1
var _pass = argument2

sqlRequest("login", "username=" + urlEncode(_name) + "&password=" + urlEncode(_pass) + "&var=" + string(_sock))
