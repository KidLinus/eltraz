var _w_wid = argument0
var _wx = argument1
var _wy = argument2

if guiDrawButton(_w_wid, _wx + 10, _wy + 10, 80, 20, "Create entity", 0) {
    if mouse_check_button_pressed(mb_left) {
        var ent = ds_map_create()
        ds_map_add(ent, 'sprite_index', sprPlatform01)
        ds_map_add(ent, 'x', Player.x)
        ds_map_add(ent, 'y', Player.y)
        mapPlaceEntity(Map.map, mapAddEntity(Map.map, ent))
        with Map {event_user(0)} //Redraw collision mask
    }
    global.cur = cr_handpoint
}

if guiDrawButton(_w_wid, _wx + 10, _wy + 40, 80, 20, "Save map", 0) {
    if mouse_check_button_pressed(mb_left) {
        mapSave(Map.map, get_string('Enter a map name', 'skog.map'))
    }
    global.cur = cr_handpoint
}

if guiDrawButton(_w_wid, _wx + 10, _wy + 70, 80, 20, "Load map", 0) {
    if mouse_check_button_pressed(mb_left) {
        Map.map = mapLoad(get_string('Enter a map name', 'skog.map'))
        with Map {event_user(1)} //Re-render map
    }
    global.cur = cr_handpoint
}
