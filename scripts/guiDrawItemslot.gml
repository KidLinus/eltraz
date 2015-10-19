var _b_wid = argument0
var _bx = argument1
var _by = argument2
var _b_item = argument3
var _bw = 36
var _bh = 36
var _bhover = window_mouse_get_x() >= _bx && window_mouse_get_x() < _bx + _bw && window_mouse_get_y() >= _by && window_mouse_get_y() < _by + _bh && _b_wid == global.guiHover


draw_sprite(sprSlot, 0, _bx, _by)
if _b_item {
    draw_sprite(mapGetDef(_b_item, 'icon', sprUndefined), 0, _bx + 2, _by + 2)
    if mapGetDef(_b_item, 'stack', 1) > 1 {
        draw_set_font(fntWindow)
        draw_set_colour(c_white)
        draw_set_halign(fa_right)
        draw_set_valign(fa_bottom)
        draw_text_outline( _bx + 34, _by + 34, string(mapGetDef(_b_item, 'stack', 1)), c_black)
    }
    if _bhover global.guiItemHover = _b_item
        /*draw_set_halign(fa_left)
        draw_set_valign(fa_top)
        draw_set_font(fntMain)
        draw_set_color(c_black)
        draw_set_alpha(0.6)
        var _b_item_text = mapGetDef(_b_item, 'text', 'No description.')
        draw_rectangle(window_mouse_get_x() + 10, window_mouse_get_y() + 10, window_mouse_get_x() + 10 + string_width_ext(_b_item_text, 16, 200), window_mouse_get_y() + 10 + string_height_ext(_b_item_text, 16, 200), 0)
        draw_set_color(c_white)
        draw_set_alpha(1)
        draw_text_ext(window_mouse_get_x() + 10, window_mouse_get_y() + 10, _b_item_text, 16, 200)
    }*/
}

return _bhover
