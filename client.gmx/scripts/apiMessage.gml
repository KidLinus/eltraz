var _message = argument0
var _type = buffer_read(_message, buffer_u16)

switch(_type) {
    case 1:
    var _data = json_decode(buffer_read(_message, buffer_string))
    
    global.userId = ds_map_find_value(_data, "id")
    global.map = ds_map_find_value(_data, "map")
    global.username = ds_map_find_value(_data, "name")
    levelLoad(global.map)
    levelRender(global.map)
    break;
    
    case 2:
    show_message("Login error: " + buffer_read(_message, buffer_string))
    game_end()
    break;
}
