var _arg = string_split(":", argument0)

if _arg[0] != "" {
    if userMap() != _arg[0] {
        global.changeMap = argument0
    }else {
        if _arg[1] == "prop" {
            global._arg = _arg[2]
            with LevelProp {
                if name == global._arg && level = userMap() {
                    userSet('x', levelPropGetDef(id, "x", 0))
                    userSet('y', levelPropGetDef(id, "y", 0))
                }
            }
        }
    }
}
