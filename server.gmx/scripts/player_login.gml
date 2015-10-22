var _userId = argument0
var _sock = argument1

if _userId && !ds_map_exists(global.players, _userId) {
    var _usr = ds_map_create()
    ds_map_add(_userId, 'socket', _sock)
    
    ds_map_add_map(global.players, _userId, _usr)
    return _userId
}

return false
