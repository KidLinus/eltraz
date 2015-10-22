var _userId = argument0

if ds_map_exists(global.players, _userId) {
    ds_map_delete(global.players, _userId)
}
