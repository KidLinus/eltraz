var _userId = argument0

if ds_map_exists(global.players, _userId) {
    sqlRequest("save", "user=" + string(_userId) + "&data=" + urlEncode(json_encode(ds_map_find_value(global.players, _userId))))
    ds_map_delete(global.players, _userId)
}
