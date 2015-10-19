var _map = argument0
var _ent = argument1

var _sprite_index   = mapGetEntityValueDef(_map, _ent, 'sprite_index', sprUndefined)
var _image_index    = mapGetEntityValueDef(_map, _ent, 'image_index', 0)
var _x              = mapGetEntityValueDef(_map, _ent, 'x', 0)
var _y              = mapGetEntityValueDef(_map, _ent, 'y', 0)
var _image_xscale   = mapGetEntityValueDef(_map, _ent, 'image_xscale', 1)
var _image_yscale   = mapGetEntityValueDef(_map, _ent, 'image_yscale', 1)
var _image_angle    = mapGetEntityValueDef(_map, _ent, 'image_angle', 0)
var _image_blend    = mapGetEntityValueDef(_map, _ent, 'image_blend', c_white)
var _image_alpha    = mapGetEntityValueDef(_map, _ent, 'image_alpha', 1)

draw_sprite_ext(_sprite_index, _image_index, _x, _y, _image_xscale, _image_yscale, _image_angle, _image_blend, _image_alpha)
