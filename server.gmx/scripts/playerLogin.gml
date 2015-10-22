var _userId = argument0
var _sock = argument1

if _userId && !ds_map_exists(global.players, _userId) {
    var _usr = playerLoad(_userId)
    ds_map_replace(_usr, 'socket', _sock)
    ds_map_add_map(global.players, _userId, _usr)
    apiMap(_sock, _userId)
    
    return _userId
}

return false
