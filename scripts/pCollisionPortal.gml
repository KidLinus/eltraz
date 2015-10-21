_x = argument0
_y = argument1
var _obj = argument2
global._c = false

with LevelProp {
    if !global._c && levelPropGetDef(id, 'type', 'solid') == "portal" && collision_rectangle(Player._x - 8, Player._y - 60, Player._x + 8, Player._y, id, true, false) global._c = id
}

return global._c
