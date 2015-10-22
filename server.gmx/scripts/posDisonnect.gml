var _socket = argument0

if ds_list_find_index(global.posClient, _socket) > 0 {
    ds_list_delete(global.posClient, ds_list_find_index(global.posClient, _socket))
}
