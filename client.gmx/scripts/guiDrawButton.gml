var _b_wid = argument0
var _bx = argument1
var _by = argument2
var _bw = argument3
var _bh = argument4
var _bt = argument5
var _btype = argument6
var _bhover = window_mouse_get_x() >= _bx && window_mouse_get_x() <= _bx + _bw && window_mouse_get_y() >= _by && window_mouse_get_y() <= _by + _bh && _b_wid == global.guiHover

switch(_btype) {
    default:
    draw_set_colour(c_dkgray)
    if _bhover draw_set_color(c_ltgray)
    draw_rectangle(_bx, _by, _bx + _bw, _by + _bh, false)
    draw_set_color(c_black)
    draw_rectangle(_bx, _by, _bx + _bw, _by + _bh, true)
    draw_set_halign(fa_center)
    draw_set_valign(fa_center)
    draw_set_font(fntMain)
    draw_text(_bx + floor(_bw / 2), _by + floor(_bh / 2), _bt)
    break;
}

return _bhover
