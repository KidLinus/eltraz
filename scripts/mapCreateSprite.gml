var _map    = argument0
var _w      = mapGetValueDef(_map, "width", 1)
var _h      = mapGetValueDef(_map, "height", 0)
var _sur    = surface_create(_w, _h)
var _i      = ds_map_find_first(_map)

surface_set_target(_sur)
draw_clear_alpha(0, 0)

repeat(ds_map_size(_map)){
    if string_copy(_i, 1, 4) == "ent_"{
        mapDrawEntity(_map, _i)
    }
    _i = ds_map_find_next(_map, _i)
}

surface_reset_target()

var _spr = sprite_create_from_surface(_sur, 0, 0, _w, _h, 0, 0, 0, 0)
surface_free(_sur)

return _spr
