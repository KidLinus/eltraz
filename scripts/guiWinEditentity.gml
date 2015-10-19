var _w_wid = argument0
var _wx = argument1
var _wy = argument2
var _w_eid = guiWindowGetDef(_w_wid, 'entity', 'ent_0')
var _map = ds_map_find_value(Map.map, _w_eid)

//draw_text(_wx, _wy, _w_wid)
var _o = 0
var _i = ds_map_find_first(_map)

repeat(ds_map_size(_map)){
    draw_text(_wx + 2, _wy + 2 + _o * 16, _i)
    draw_text(_wx + 102, _wy + 2 + _o * 16, string(ds_map_find_value(_map, _i)))
    _o += 1
    _i = ds_map_find_next(_map, _i)
}

if guiDrawButton(_w_wid, _wx + 4, _wy + 235, 90, 20, "Set data", 0) {
    if mouse_check_button_pressed(mb_left) {
        var _wna = get_string('Name', '')
        var _wva = get_string('Value', '')
        if string(_wva) == string(real(_wva)) _wva = real(_wva)
        
        mapSetEntityValue(Map.map, _w_eid, _wna, _wva)
        with Map {event_user(1)}
    }
    global.cur = cr_handpoint
}

if guiDrawButton(_w_wid, _wx + 99, _wy + 235, 90, 20, "Remove data", 0) {
    if mouse_check_button_pressed(mb_left) {
        var _wna = get_string('Name', '')

        mapRemoveEntityValue(Map.map, _w_eid, _wna)
        with Map {event_user(1)}
    }
    global.cur = cr_handpoint
}

if guiDrawButton(_w_wid, _wx + 4, _wy + 258, 90, 20, "Duplicate", 0) {
    if mouse_check_button_pressed(mb_left) {
        var _went = ds_map_create()
        ds_map_copy(_went, _map)
        ds_map_replace(_went, 'x', mapGetDef(_went, 'x', 0) + 5)
        ds_map_replace(_went, 'y', mapGetDef(_went, 'y', 0) + 5)
        mapAddEntity(Map.map, _went)
        with Map {event_user(1)}
    }
    global.cur = cr_handpoint
}

if guiDrawButton(_w_wid, _wx + 99, _wy + 258, 90, 20, "Delete", 0) {
    if mouse_check_button_pressed(mb_left) {
        ds_map_delete(Map.map, _w_eid)
        with Map {event_user(1)}
        guiWindowClose('win_editentity')
    }
    global.cur = cr_handpoint
}
