var _map    = argument0
var _text   = ""
var _i      = ds_map_find_first(_map)

repeat(ds_map_size(_map)) {
    _text += _i + ": " + string(ds_map_find_value(_map, _i)) + "#"
    _i = ds_map_find_next(_map, _i)
}

show_message("Map: " + _text)

