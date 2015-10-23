var _socket = argument0
var _message = argument1
var _type = buffer_read(_message, buffer_u16)

switch(_type) {
    case 0://Ping
    break;
    
    case 1://Login
    var _username = buffer_read(_message, buffer_string)
    var _password = buffer_read(_message, buffer_string)
    playerLogin(_socket, _username, _password) 
    break;
    
    case 5://Change map
    playerSet(apiUser(_socket), 'map', buffer_read(_message, buffer_string))
    break;
    
    default://Unknown message
    ds_map_message(_message)
    break;
}
