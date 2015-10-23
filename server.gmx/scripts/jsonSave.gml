var _server = 'http://eltraz.dev'
var _ds = argument2
var _type = argument0
var _id = argument1

http_post_string(_server + "?type=" + string(_type) + "&id=" + string(_id), "data=" + urlEncode(json_encode(_ds)))
