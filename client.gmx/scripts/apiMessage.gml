var _message = argument0
var _type = buffer_read(_message, buffer_u16)

switch(_type) {
    case 1:
    //Auth success

    
    break;
    
    case 2:
    show_message("Login error: " + buffer_read(_message, buffer_string))
    game_end()
    break;
}
