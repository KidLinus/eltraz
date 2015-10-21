var _b_wid = argument0
var _bx = argument1
var _by = argument2
var _b_stat = argument3
var _b_spr = argument4
var _bw = 40
var _bh = 32
var _bhover = window_mouse_get_x() >= _bx && window_mouse_get_x() <= _bx + _bw && window_mouse_get_y() >= _by && window_mouse_get_y() <= _by + _bh && _b_wid == global.guiHover

draw_sprite(sprStatBg, 0, _bx, _by)
draw_set_font(fntSmall)
draw_set_colour(c_black)
draw_set_halign(fa_right)
draw_set_valign(fa_top)
draw_text_outline(_bx + 41, _by + 18, skillGetDef(_b_stat, 1), c_yellow)
draw_set_halign(fa_left)
draw_sprite(_b_spr, 0, _bx + 4, _by + 4)

if _bhover global.guiTextHover = _b_stat
