var _w_wid = argument0
var _wx = argument1
var _wy = argument2
var _item = 0

_wsx = 0
_wsy = 0

repeat(48) {
    if guiDrawItemslot(_w_wid,  _wx + _wsx * 36, _wy + _wsy * 36, mapGetDef(global.inventory, string(_wsx) + 'x' + string(_wsy), false)) {
        if mouse_check_button_pressed(mb_left) && mapGetDef(global.inventory, string(_wsx) + 'x' + string(_wsy), false) {
            global._guiDrag = "inv_" + string(_wsx) + 'x' + string(_wsy)
        }
        if mouse_check_button_released(mb_left) && (string_copy(global._guiDrop, 1, 3) == "inv") {
            var _w_item = string_copy(global._guiDrop, 5, string_length(global._guiDrop) - 4)
            
            var _tmp = ds_map_create()
            ds_map_copy(_tmp, ds_map_find_value(global.inventory, string(_wsx) + 'x' + string(_wsy)))
            ds_map_delete(global.inventory, string(_wsx) + 'x' + string(_wsy))
            ds_map_add_map(global.inventory, string(_wsx) + 'x' + string(_wsy), mapGetDef(global.inventory, _w_item, false))
            ds_map_delete(global.inventory, _w_item)
            if ds_map_exists(_tmp, 'name') {
                ds_map_add_map(global.inventory, _w_item, _tmp)
            }
        }else if mouse_check_button_released(mb_left) && string_copy(global._guiDrop, 1, 3) == "equ" {
            var _w_item = string_copy(global._guiDrop, 5, string_length(global._guiDrop) - 4)
            if equValidate(_w_item, mapGetDef(global.inventory, string(_wsx) + 'x' + string(_wsy), false)) || mapGetDef(global.inventory, string(_wsx) + 'x' + string(_wsy), false) == false {
                var _tmp = ds_map_create()
                ds_map_copy(_tmp, ds_map_find_value(global.inventory, string(_wsx) + 'x' + string(_wsy)))
                ds_map_delete(global.inventory, string(_wsx) + 'x' + string(_wsy))
                ds_map_add_map(global.inventory, string(_wsx) + 'x' + string(_wsy), mapGetDef(global.inventory, _w_item, false))
                ds_map_delete(global.inventory, _w_item)
                if ds_map_exists(_tmp, 'name') {
                    ds_map_add_map(global.inventory, _w_item, _tmp)
               } 
            }
            equUpdate()
        }
    }
    
    _wsx +=1
    if _wsx == 6 {
        _wsx = 0
        _wsy += 1
    }
}
