var _map    = argument0
var _w      = mapGetValueDef(_map, "width", 1)
var _h      = mapGetValueDef(_map, "height", 0)
var _i      = ds_map_find_first(_map)


repeat(ds_map_size(_map)){
    if string_copy(_i, 1, 4) == "ent_"{
        mapPlaceEntity(_map, _i)
    }
    _i = ds_map_find_next(_map, _i)
}

