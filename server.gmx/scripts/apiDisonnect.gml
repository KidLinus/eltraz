var _socket = argument0
playerLogout(ds_map_find_value(global.apiClient, _socket))

if ds_map_exists(global.apiClient, _socket) {    
    ds_map_delete(global.apiClient, _socket)
}
