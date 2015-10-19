var _w_wid = argument0
var _wx = argument1
var _wy = argument2

if guiDrawButton(_w_wid, _wx + 10, _wy + 10, 100, 50, "quit game", 0) {
    if mouse_check_button_pressed(mb_left) {
        game_end()
    }
    global.cur = cr_handpoint
}
