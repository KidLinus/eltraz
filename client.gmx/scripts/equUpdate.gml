global.inventory_offhand = true
global.inventory_legs = true
ds_map_clear(global.stats)
statAdd('hp', 100)
statAdd('mp', 20)
statAdd('att_speed', 100)
statAdd('move_speed', 100)
statAdd('jump', 100)

if mapGetDef(global.inventory, 'main_hand', false) {
    if equTwohand(mapGetDef(global.inventory, 'main_hand', false)) {
        global.inventory_offhand = false
        if mapGetDef(global.inventory, 'off_hand', false){
            if invAdd(mapGetDef(global.inventory, 'off_hand', false)) ds_map_replace(global.inventory, 'off_hand', false)
        }
    }
}

if mapGetDef(global.inventory, 'main_hand', false) {
    if equOverall(mapGetDef(global.inventory, 'body', false)) {
        global.inventory_legs = false
        if mapGetDef(global.inventory, 'legs', false){
            if invAdd(mapGetDef(global.inventory, 'legs', false)) ds_map_replace(global.inventory, 'legs', false)
        }
    }
}

__equs = 10
__equ[0] = 'earring'
__equ[1] = 'head'
__equ[2] = 'ammo'
__equ[3] = 'main_hand'
__equ[4] = 'body'
__equ[5] = 'feet'
__equ[6] = 'gloves'
__equ[7] = 'neck'
__equ[8] = 'belt'
__equ[9] = 'ring'

if global.inventory_offhand {
    __equ[__equs] = 'off_hand'
    __equs += 1
}
if global.inventory_legs {
    __equ[__equs] = 'legs'
    __equs += 1
}

var __i = 0
repeat(__equs) {
    var _i = mapGetDef(global.inventory, __equ[__i], false)
    if _i statAdd('hp', mapGetDef(_i, 'hp', 0))
    __i += 1
}

if statGetDef('hp',0) < 0 {
    statSet('hp', 1)
}else {
    var __p = 100
    var __i = 0
    repeat(__equs) {
        var _i = mapGetDef(global.inventory, __equ[__i], false)
        if _i __p += mapGetDef(_i, 'hp_p', 0)
        __i += 1
    }
    statSet('hp', statGetDef('hp',0) * __p / 100)
}

var __i = 0
repeat(__equs) {
    var _i = mapGetDef(global.inventory, __equ[__i], false)
    if _i statAdd('mp', mapGetDef(_i, 'mp', 0))
    __i += 1
}

if statGetDef('mp',0) < 0 {
    statSet('mp', 0)
}else {
    var __p = 100
    var __i = 0
    repeat(__equs) {
        var _i = mapGetDef(global.inventory, __equ[__i], false)
        if _i __p += mapGetDef(_i, 'mp_p', 0)
        __i += 1
    }
    statSet('mp', statGetDef('mp',0) * __p / 100)
}

var __i = 0
repeat(__equs) {
    var _i = mapGetDef(global.inventory, __equ[__i], false)
    if _i statAdd('att', mapGetDef(_i, 'att', 0))
    __i += 1
}

if statGetDef('att',0) < 0 {
    statSet('att', 0)
}else {
    var __p = 100
    var __i = 0
    repeat(__equs) {
        var _i = mapGetDef(global.inventory, __equ[__i], false)
        if _i __p += mapGetDef(_i, 'att_p', 0)
        __i += 1
    }
    statSet('att', statGetDef('att',0) * __p / 100)
}

var __i = 0
repeat(__equs) {
    var _i = mapGetDef(global.inventory, __equ[__i], false)
    if _i statAdd('m_att', mapGetDef(_i, 'm_att', 0))
    __i += 1
}

if statGetDef('m_att',0) < 0 {
    statSet('m_att', 0)
}else {
    var __p = 100
    var __i = 0
    repeat(__equs) {
        var _i = mapGetDef(global.inventory, __equ[__i], false)
        if _i __p += mapGetDef(_i, 'm_att_p', 0)
        __i += 1
    }
    statSet('m_att', statGetDef('m_att',0) * __p / 100)
}

var __i = 0
repeat(__equs) {
    var _i = mapGetDef(global.inventory, __equ[__i], false)
    if _i statAdd('att_speed', mapGetDef(_i, 'att_speed', 0))
    __i += 1
}

var __i = 0
repeat(__equs) {
    var _i = mapGetDef(global.inventory, __equ[__i], false)
    if _i statAdd('def', mapGetDef(_i, 'def', 0))
    __i += 1
}

if statGetDef('def',0) < 0 {
    statSet('def', 0)
}else {
    var __p = 100
    var __i = 0
    repeat(__equs) {
        var _i = mapGetDef(global.inventory, __equ[__i], false)
        if _i __p += mapGetDef(_i, 'def_p', 0)
        __i += 1
    }
    statSet('def', statGetDef('def',0) * __p / 100)
}

var __i = 0
repeat(__equs) {
    var _i = mapGetDef(global.inventory, __equ[__i], false)
    if _i statAdd('m_def', mapGetDef(_i, 'm_def', 0))
    __i += 1
}

if statGetDef('m_def',0) < 0 {
    statSet('m_def', 0)
}else {
    var __p = 100
    var __i = 0
    repeat(__equs) {
        var _i = mapGetDef(global.inventory, __equ[__i], false)
        if _i __p += mapGetDef(_i, 'm_def_p', 0)
        __i += 1
    }
    statSet('m_def', statGetDef('m_def',0) * __p / 100)
}

var __i = 0
repeat(__equs) {
    var _i = mapGetDef(global.inventory, __equ[__i], false)
    if _i statAdd('crit', mapGetDef(_i, 'crit', 0))
    __i += 1
}

var __i = 0
repeat(__equs) {
    var _i = mapGetDef(global.inventory, __equ[__i], false)
    if _i statAdd('dodge', mapGetDef(_i, 'dodge', 0))
    __i += 1
}

var __i = 0
repeat(__equs) {
    var _i = mapGetDef(global.inventory, __equ[__i], false)
    if _i statAdd('move_speed', mapGetDef(_i, 'move_speed', 0))
    __i += 1
}

var __i = 0
repeat(__equs) {
    var _i = mapGetDef(global.inventory, __equ[__i], false)
    if _i statAdd('jump', mapGetDef(_i, 'jump', 0))
    __i += 1
}

statSet('hp', round(statGetDef('hp', 0)))
statSet('mp', round(statGetDef('mp', 0)))
statSet('att', round(statGetDef('att', 0)))
statSet('m_att', round(statGetDef('m_att', 0)))
statSet('att_speed', round(statGetDef('att_speed', 0)))
statSet('def', round(statGetDef('def', 0)))
statSet('m_def', round(statGetDef('m_def', 0)))
statSet('crit', round(statGetDef('crit', 0)))
statSet('dodge', round(statGetDef('dodge', 0)))
statSet('move_speed', round(statGetDef('move_speed', 0)))
statSet('jump', round(statGetDef('jump', 0)))
