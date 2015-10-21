var _data = argument0
var _map = argument1
var _x = argument2
var _y = argument3
var _spawner = argument4

var _mob = instance_create(_x, _y, LevelMob);

_mob.data = _data
_mob.map = _map
_mob.spawner = _spawner

if _spawner >= 0 {
    _spawner.mobs += 1
}

with _mob {
    mobInit()
}
