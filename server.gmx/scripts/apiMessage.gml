var _socket = argument0
var _message = argument1
var _type = buffer_read(_message, buffer_u16)

switch(_type) {
    case 0://Ping
    break;
    
    case 1://Login
    var _session = buffer_read(_message, buffer_string)
    var _uId = playerLogin(sessionValidate(_session), _socket) 
    
    if _uId {
        message_prep(global.apiBuff)
        message_write_u16(global.apiBuff, 1)//Player login success
        message_write_u16(global.apiBuff, _uId)
        message_write_string(global.apiBuff, playerGetDef(_uId, 'map', 'waterfront'))
        message_write_string(global.apiBuff, playerGetDef(_uId, 'name', ''))
        message_send(global.apiBuff, _socket)
    }else {
        message_prep(global.apiBuff)
        message_write_u16(global.apiBuff, 2)//Player login fail
        message_send(global.apiBuff, _socket)
    }
    break;
    
    case 5://Change map
    playerSet(apiUser(_socket), 'map', buffer_read(_message, buffer_string))
    break;
    
    default://Unknown message
    ds_map_message(_message)
    break;
}
