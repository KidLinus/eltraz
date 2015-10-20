switch(mapGetDef(data, 'type', 'solid')) {
    case "solid":
    sprite_index   = asset_get_index(mapGetDef(data, 'sprite_index', 'sprUndefined'))
    mask_index   = asset_get_index(mapGetDef(data, 'sprite_index', sprite_index))
    image_index    = mapGetDef(data, 'image_index', 0)
    image_speed    = mapGetDef(data, 'image_speed', 1)
    x              = mapGetDef(data, 'x', 0)
    y              = mapGetDef(data, 'y', 0)
    solid          = mapGetDef(data, 'solid', true)
    image_xscale   = mapGetDef(data, 'image_xscale', 1)
    image_yscale   = mapGetDef(data, 'image_yscale', 1)
    image_angle    = mapGetDef(data, 'image_angle', 0)
    image_blend    = mapGetDef(data, 'image_blend', c_white)
    image_alpha    = mapGetDef(data, 'image_alpha', 1)
    visible        = mapGetDef(data, 'visible', true)
    break;
    
    case "portal":
    sprite_index   = asset_get_index(mapGetDef(data, 'sprite_index', 'sprUndefined'))
    mask_index   = asset_get_index(mapGetDef(data, 'sprite_index', sprite_index))
    image_index    = mapGetDef(data, 'image_index', 0)
    image_speed    = mapGetDef(data, 'image_speed', 1)
    x              = mapGetDef(data, 'x', 0)
    y              = mapGetDef(data, 'y', 0)
    solid          = mapGetDef(data, 'solid', false)
    image_xscale   = mapGetDef(data, 'image_xscale', 1)
    image_yscale   = mapGetDef(data, 'image_yscale', 1)
    image_angle    = mapGetDef(data, 'image_angle', 0)
    image_blend    = mapGetDef(data, 'image_blend', c_white)
    image_alpha    = mapGetDef(data, 'image_alpha', 1)
    visible        = mapGetDef(data, 'visible', true)
    break;
}
