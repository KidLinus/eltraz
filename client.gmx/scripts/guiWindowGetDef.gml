var _map = global._guiWind
var _win = ds_map_find_value(_map, argument0)
var _key = argument1
var _def = argument2

if ds_map_exists(_win, _key) {
    return ds_map_find_value(_win, _key)
}else {
    return _def
}
