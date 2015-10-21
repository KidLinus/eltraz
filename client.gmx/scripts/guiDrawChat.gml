var _x = argument0
var _y = argument1
var _x2 = argument2
var _y2 = argument3
var _i = ds_list_size(global._guiChat)-1
var _yD = 0
var _mess = ""
var _sender = ""
var _col = c_ltgray

repeat(min(10, ds_list_size(global._guiChat)/3)) {
    _mess = ds_list_find_value(global._guiChat, _i-2)
    _sender = ds_list_find_value(global._guiChat, _i - 1)
    _col = ds_list_find_value(global._guiChat, _i)
    draw_set_color(_col)
    _yD += string_height_ext(_sender+": "+_mess, 16, _x2 - _x - 6)
    draw_text_ext(_x + 3,_y2 - _yD, _sender+": "+_mess, 16, _x2 - _x - 6)
    _i -= 3
}
draw_set_color(c_gray)
draw_line(_x2, _y, _x2, _y2)
