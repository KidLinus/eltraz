var _message = argument0
var _type = buffer_read(_message, buffer_u16)

switch(_type) {
    case 1:
    global.player = json_decode(buffer_read(_message, buffer_string))

    levelLoad(userMap())
    levelRender(userMap())
    break;
    
    case 2:
    show_message("Login error: " + buffer_read(_message, buffer_string))
    game_end()
    break;
}
