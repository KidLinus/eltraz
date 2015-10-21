if ds_map_exists(global._guiWind, "win_" + string(argument0)) {
    ds_map_delete(global._guiWind, "win_" + string(argument0))
}

ds_map_add_map(global._guiWind, "win_" + string(argument0), argument1)
