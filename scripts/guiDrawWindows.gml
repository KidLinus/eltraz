var _i = ds_map_find_first(global._guiWind)
var _prio = ds_priority_create()
global.windHover = ""

repeat(ds_map_size(global._guiWind)){
    if string_copy(_i, 1, 4) == "win_"{
        ds_priority_add(_prio, _i, guiWindowGetDef(_i, 'depth', 0))
    }
    _i = ds_map_find_next(global._guiWind, _i)
}

while(!ds_priority_empty(_prio)) {
    guiDrawWindow(ds_priority_find_min(_prio))
    ds_priority_delete_min(_prio)
}

ds_priority_destroy(_prio)
