var _map = argument0
var _entId = mapGetValueDef(_map, "entid", 0)
var _data = argument1

ds_map_add_map(_map, "ent_" + string(_entId), _data)
mapSetValue(_map, "entid", _entId + 1)

return "ent_" + string(_entId)
