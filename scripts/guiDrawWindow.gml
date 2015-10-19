var _wid = argument0
var _w = guiWindowGetDef(_wid, "w", 120)
var _h = guiWindowGetDef(_wid, "h", 200)
var _x = guiWindowGetDef(_wid, "x", floor(window_get_width() / 2 - _w/2))
var _y = guiWindowGetDef(_wid, "y", floor(window_get_height() / 2 - _h/2))

if window_mouse_get_x() >= _x 
&& window_mouse_get_x() <= _x + _w
&& window_mouse_get_y() >= _y
&& window_mouse_get_y() <= _y + _h {
    global.windHover = _wid
}

if global.guiHover == _wid {
    if window_mouse_get_y() <= _y + 16 {
        global.cur = cr_handpoint
        if mouse_check_button_pressed(mb_left) {
            if window_mouse_get_x() < _x + _w - 16 {
                global._guiDrag = _wid
                global._guiDragX = window_mouse_get_x() - _x
                global._guiDragY = window_mouse_get_y() - _y
            }else {
                guiWindowClose(_wid)
                return false
            }
        }
    }
    if mouse_check_button_pressed(mb_left) guiWindowSet(_wid, 'depth', current_time)
}

if global._guiDrag == _wid {
    _x = window_mouse_get_x() - global._guiDragX
    _y = window_mouse_get_y() - global._guiDragY
    guiWindowSet(_wid, 'x', _x)
    guiWindowSet(_wid, 'y', _y)
    global.cur = cr_size_all
}

draw_set_font(fntWindow)
draw_set_color(c_gray)
draw_rectangle(_x, _y, _x + _w, _y + _h, 0)
draw_set_color(c_ltgray)
if global.guiHover == _wid && window_mouse_get_y() <= _y + 16 && window_mouse_get_x() < _x + _w - 16  draw_set_color(c_white)
draw_rectangle(_x, _y, _x + _w - 16, _y + 16, 0)
draw_set_color($9999ff)
if global.guiHover == _wid && window_mouse_get_y() <= _y + 16 && window_mouse_get_x() >= _x + _w - 16  draw_set_color(c_red)
draw_rectangle(_x + _w - 16, _y, _x + _w, _y + 16, 0)
draw_set_color(c_black)
draw_rectangle(_x, _y, _x + _w, _y + _h, true)
draw_line(_x, _y + 16, _x + _w, _y + 16)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text(_x + 2, _y, guiWindowGetDef(_wid, "title", 'Unnamed window'))

switch(string(guiWindowGetDef(_wid, 'type', ''))) {
    case 'mainMenu':
    guiWinMainmenu(_wid, _x + 1, _y + 17)
    break;
    
    case 'editMenu':
    guiWinEditmenu(_wid, _x + 1, _y + 17)
    break;
    
    case 'editEntity':
    guiWinEditentity(_wid, _x + 1, _y + 17)
    break;
    
    case 'inventory':
    guiWinInventory(_wid, _x + 1, _y + 17)
    break;
    
    case 'character':
    guiWinCharacter(_wid, _x + 1, _y + 17)
    break;
}
