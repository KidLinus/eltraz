if ds_map_exists(global.items, argument0) {
    ds_map_replace_map(global.items, argument0, argument1)
}else {
    ds_map_add_map(global.items, argument0, argument1)
}
