var _item = argument0
if _item {
    var _stack = mapGetDef(_item, 'max_stack', 1)
    
    _wsx = 0
    _wsy = 0
    _done = false
    
    
    repeat(48) {
        if !_done {
            _at = mapGetDef(global.inventory, string(_wsx) + 'x' + string(_wsy), false)
            if _at {
                if _stack > 0 && mapGetDef(_at, 'name', 'Unnamed item') == mapGetDef(_item, 'name', 'Unnamed item') {
                    if mapGetDef(_at, 'stack', 1) + mapGetDef(_item, 'stack', 1) <= _stack {
                        ds_map_replace(_at, 'stack', mapGetDef(_at, 'stack', 1) + mapGetDef(_item, 'stack', 1))
                        _done = true
                    }else {
                        ds_map_replace(_at, 'stack', _stack)
                        ds_map_replace(_item, 'stack', mapGetDef(_at, 'stack', 1) + mapGetDef(_item, 'stack', 1) - _stack)
                        _stack = mapGetDef(_item, 'stack', 1)
                    }
                }
            }else {
                if mapGetDef(_item, 'stack', 1) > _stack {
                    var _new = ds_map_create()
                    ds_map_copy(_new, _item)
                    ds_map_replace(_new, 'stack', _stack)
                    ds_map_add_map(global.inventory, string(_wsx) + 'x' + string(_wsy), _new)
                    ds_map_replace(_item, 'stack', mapGetDef(_item, 'stack', 1) - _stack)
                }else {
                    ds_map_add_map(global.inventory, string(_wsx) + 'x' + string(_wsy), _item)
                    _done = true
                }
            }
        }
    
        _wsx += 1
        if _wsx == 6 {
            _wsx = 0
            _wsy += 1
        }
    }
    
    return _done
}else {
return true
}
