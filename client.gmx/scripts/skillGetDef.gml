var _map = global.skills
var _key = argument0
var _def = argument1

if ds_map_exists(_map, _key) {
    return ds_map_find_value(_map, _key)
}else {
    return _def
}
