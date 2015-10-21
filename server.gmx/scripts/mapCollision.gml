global._arg[0] = argument0//Map
global._arg[1] = id//obj
global._arg[2] = 0-argument1//x
global._arg[3] = 0-argument2//y

global._c = false
with LevelProp {
    if !global._c && solid && level == global._arg[0] && place_meeting(x + global._arg[2], y + global._arg[3], global._arg[1]) global._c = id
}

return global._c
