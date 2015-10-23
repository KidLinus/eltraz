var _server = global.sqlUrl
var _command = argument0
var _data = argument1

http_post_string(_server + "?command=" + string(_command), _data)
