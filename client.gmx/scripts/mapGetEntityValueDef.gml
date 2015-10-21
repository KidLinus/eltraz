var _map = argument0
var _ent = ds_map_find_value(argument0, argument1)
var _key = argument2
var _def = argument3

if ds_map_exists(_ent, _key) {
    return ds_map_find_value(_ent, _key)
}else {
    return _def
}
