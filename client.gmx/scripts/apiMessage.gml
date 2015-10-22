var _message = argument0
var _type = buffer_read(_message, buffer_u16)

switch(_type) {
    case 1:
    global.userId = buffer_read(_message, buffer_u16)
    global.map = buffer_read(_message, buffer_string)
    global.username = buffer_read(_message, buffer_string)
    levelLoad(global.map)
    levelRender(global.map)
    break;
    
    case 2:
    show_message("Could not auth")
    game_end()
    break;
}
