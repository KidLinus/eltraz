var _map = ds_map_find_value(global.players, argument0)
var _key = argument1
var _def = argument2

if ds_map_exists(_map, _key) {
    return ds_map_find_value(_map, _key)
}else {
    return _def
}

