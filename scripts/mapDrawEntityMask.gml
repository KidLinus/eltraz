var _map = argument0
var _ent = argument1
var _obj = instance_create(0, 0, mapDummy);

_obj.sprite_index   = mapGetEntityValueDef(_map, _ent, 'sprite_index', sprUndefined)
_obj.image_index    = mapGetEntityValueDef(_map, _ent, 'image_index', 0)
_obj.x              = mapGetEntityValueDef(_map, _ent, 'x', 0)
_obj.y              = mapGetEntityValueDef(_map, _ent, 'y', 0)
_obj.solid          = mapGetEntityValueDef(_map, _ent, 'solid', true)
_obj.image_xscale   = mapGetEntityValueDef(_map, _ent, 'image_xscale', 1)
_obj.image_yscale   = mapGetEntityValueDef(_map, _ent, 'image_yscale', 1)
_obj.image_angle    = mapGetEntityValueDef(_map, _ent, 'image_angle', 0)
_obj.image_blend    = mapGetEntityValueDef(_map, _ent, 'image_blend', c_white)
_obj.image_alpha    = mapGetEntityValueDef(_map, _ent, 'image_alpha', 1)

if _obj.solid {
    draw_sprite_ext(object_get_mask(_obj), _obj.image_index, _obj.x, _obj.y, _obj.image_xscale, _obj.image_yscale, _obj.image_angle, _obj.image_blend, _obj.image_alpha)
}

with _obj {
    instance_destroy()
}
