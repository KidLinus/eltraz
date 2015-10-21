var _map = argument0
var _key = argument1
var _def = argument2

if ds_map_exists(argument0, _key) {
    return ds_map_find_value(argument0, _key)
}else {
    return _def
}
