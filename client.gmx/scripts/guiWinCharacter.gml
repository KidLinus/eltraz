var _w_wid = argument0
var _wx = argument1
var _wy = argument2
var _item = 0

draw_set_font(fntSmall)
draw_set_colour(c_black)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

draw_text(_wx + 2, _wy, 
"HP
MP
Att
M.Att
Att Speed
Def
M.Def
Crit
Dodge
Movement
Jump")

draw_set_halign(fa_right)
draw_text(_wx + 110, _wy, 
string(statGetDef('hp', 0)) + "#" +
string(statGetDef('mp', 0)) + "#" +
string(statGetDef('att', 0)) + "#" +
string(statGetDef('m_att', 0)) + "#" +
string(statGetDef('att_speed', 0)) + "%#" +
string(statGetDef('def', 0)) + "#" +
string(statGetDef('m_def', 0)) + "#" +
string(statGetDef('crit', 0)) + "%#" +
string(statGetDef('dodge', 0)) + "%#" +
string(statGetDef('move_speed', 0)) + "%#" +
string(statGetDef('jump', 0)) + "%"
)


if guiDrawItemslot(_w_wid,  _wx + 112, _wy, mapGetDef(global.inventory, 'earring', false)) {
    if mouse_check_button_pressed(mb_left) && mapGetDef(global.inventory, 'earring', false) {
        global._guiDrag = "equ_earring"
    }
    if mouse_check_button_released(mb_left) && (string_copy(global._guiDrop, 1, 3) == "inv" || string_copy(global._guiDrop, 1, 3) == "equ") {
        var _w_item = string_copy(global._guiDrop, 5, string_length(global._guiDrop) - 4)
        if equValidate('earring', mapGetDef(global.inventory, _w_item, false)) {
        
            var _tmp = ds_map_create()
            ds_map_copy(_tmp, ds_map_find_value(global.inventory, 'earring'))
            ds_map_delete(global.inventory, 'earring')
            ds_map_add_map(global.inventory, 'earring', mapGetDef(global.inventory, _w_item, false))
            ds_map_delete(global.inventory, _w_item)
            if ds_map_exists(_tmp, 'name') {
                ds_map_add_map(global.inventory, _w_item, _tmp)
            }
            equUpdate()
        }
    }
}

if guiDrawItemslot(_w_wid,  _wx + 36 + 112, _wy, mapGetDef(global.inventory, 'head', false)) {
    if mouse_check_button_pressed(mb_left) && mapGetDef(global.inventory, 'head', false) {
        global._guiDrag = "equ_head"
    }
    if mouse_check_button_released(mb_left) && (string_copy(global._guiDrop, 1, 3) == "inv" || string_copy(global._guiDrop, 1, 3) == "equ") {
        var _w_item = string_copy(global._guiDrop, 5, string_length(global._guiDrop) - 4)
        if equValidate('head', mapGetDef(global.inventory, _w_item, false)) {
            
    
            var _tmp = ds_map_create()
            ds_map_copy(_tmp, ds_map_find_value(global.inventory, 'head'))
            ds_map_delete(global.inventory, 'head')
            ds_map_add_map(global.inventory, 'head', mapGetDef(global.inventory, _w_item, false))
            ds_map_delete(global.inventory, _w_item)
            if ds_map_exists(_tmp, 'name') {
                ds_map_add_map(global.inventory, _w_item, _tmp)
            }
            equUpdate()
        }
    }
}

if guiDrawItemslot(_w_wid,  _wx + 72 + 112, _wy, mapGetDef(global.inventory, 'ammo', false)) {
    if mouse_check_button_pressed(mb_left) && mapGetDef(global.inventory, 'ammo', false) {
        global._guiDrag = "equ_ammo"
    }
    if mouse_check_button_released(mb_left) && (string_copy(global._guiDrop, 1, 3) == "inv" || string_copy(global._guiDrop, 1, 3) == "equ") {
        var _w_item = string_copy(global._guiDrop, 5, string_length(global._guiDrop) - 4)
        if equValidate('ammo', mapGetDef(global.inventory, _w_item, false)) {
        
            var _tmp = ds_map_create()
            ds_map_copy(_tmp, ds_map_find_value(global.inventory, 'ammo'))
            ds_map_delete(global.inventory, 'ammo')
            ds_map_add_map(global.inventory, 'ammo', mapGetDef(global.inventory, _w_item, false))
            ds_map_delete(global.inventory, _w_item)
            if ds_map_exists(_tmp, 'name') {
                ds_map_add_map(global.inventory, _w_item, _tmp)
            }
            equUpdate()
        }
    }
}

if guiDrawItemslot(_w_wid,  _wx + 112, _wy + 36, mapGetDef(global.inventory, 'main_hand', false)) {
    if mouse_check_button_pressed(mb_left) && mapGetDef(global.inventory, 'main_hand', false) {
        global._guiDrag = "equ_main_hand"
    }
    if mouse_check_button_released(mb_left) && (string_copy(global._guiDrop, 1, 3) == "inv" || string_copy(global._guiDrop, 1, 3) == "equ") {
        var _w_item = string_copy(global._guiDrop, 5, string_length(global._guiDrop) - 4)
        if equValidate('main_hand', mapGetDef(global.inventory, _w_item, false)) {
            
            var _tmp = ds_map_create()
            ds_map_copy(_tmp, ds_map_find_value(global.inventory, 'main_hand'))
            ds_map_delete(global.inventory, 'main_hand')
            ds_map_add_map(global.inventory, 'main_hand', mapGetDef(global.inventory, _w_item, false))
            ds_map_delete(global.inventory, _w_item)
            if ds_map_exists(_tmp, 'name') {
                ds_map_add_map(global.inventory, _w_item, _tmp)
            }
            equUpdate() 
        }
    }
}

if guiDrawItemslot(_w_wid,  _wx + 36 + 112, _wy + 36, mapGetDef(global.inventory, 'body', false)) {
    if mouse_check_button_pressed(mb_left) && mapGetDef(global.inventory, 'body', false) {
        global._guiDrag = "equ_body"
    }
    if mouse_check_button_released(mb_left) && (string_copy(global._guiDrop, 1, 3) == "inv" || string_copy(global._guiDrop, 1, 3) == "equ") {
        var _w_item = string_copy(global._guiDrop, 5, string_length(global._guiDrop) - 4)
        if equValidate('body', mapGetDef(global.inventory, _w_item, false)) {
        
            var _tmp = ds_map_create()
            ds_map_copy(_tmp, ds_map_find_value(global.inventory, 'body'))
            ds_map_delete(global.inventory, 'body')
            ds_map_add_map(global.inventory, 'body', mapGetDef(global.inventory, _w_item, false))
            ds_map_delete(global.inventory, _w_item)
            if ds_map_exists(_tmp, 'name') {
                ds_map_add_map(global.inventory, _w_item, _tmp)
            }
            equUpdate()
        }
    }
}

if guiDrawItemslot(_w_wid,  _wx + 72 + 112, _wy + 36, mapGetDef(global.inventory, 'off_hand', false)) {
    if mouse_check_button_pressed(mb_left) && mapGetDef(global.inventory, 'off_hand', false) {
        global._guiDrag = "equ_off_hand"
    }
    if mouse_check_button_released(mb_left) && (string_copy(global._guiDrop, 1, 3) == "inv" || string_copy(global._guiDrop, 1, 3) == "equ") {
        var _w_item = string_copy(global._guiDrop, 5, string_length(global._guiDrop) - 4)
        if equValidate('off_hand', mapGetDef(global.inventory, _w_item, false)) {
        
            var _tmp = ds_map_create()
            ds_map_copy(_tmp, ds_map_find_value(global.inventory, 'off_hand'))
            ds_map_delete(global.inventory, 'off_hand')
            ds_map_add_map(global.inventory, 'off_hand', mapGetDef(global.inventory, _w_item, false))
            ds_map_delete(global.inventory, _w_item)
            if ds_map_exists(_tmp, 'name') {
                ds_map_add_map(global.inventory, _w_item, _tmp)
            }
            equUpdate()
        }
    }
}

if !global.inventory_offhand {
    draw_sprite(sprSlotDisabled, 0, _wx + 72 + 112, _wy + 36)
}

if guiDrawItemslot(_w_wid,  _wx + 112, _wy + 72, mapGetDef(global.inventory, 'gloves', false)) {
    if mouse_check_button_pressed(mb_left) && mapGetDef(global.inventory, 'gloves', false) {
        global._guiDrag = "equ_gloves"
    }
    if mouse_check_button_released(mb_left) && (string_copy(global._guiDrop, 1, 3) == "inv" || string_copy(global._guiDrop, 1, 3) == "equ") {
        var _w_item = string_copy(global._guiDrop, 5, string_length(global._guiDrop) - 4)
        if equValidate('gloves', mapGetDef(global.inventory, _w_item, false)) {
        
            var _tmp = ds_map_create()
            ds_map_copy(_tmp, ds_map_find_value(global.inventory, 'gloves'))
            ds_map_delete(global.inventory, 'gloves')
            ds_map_add_map(global.inventory, 'gloves', mapGetDef(global.inventory, _w_item, false))
            ds_map_delete(global.inventory, _w_item)
            if ds_map_exists(_tmp, 'name') {
                ds_map_add_map(global.inventory, _w_item, _tmp)
            }
            equUpdate()
        }
    }
}

if guiDrawItemslot(_w_wid,  _wx + 36 + 112, _wy + 72, mapGetDef(global.inventory, 'legs', false)) {
    if mouse_check_button_pressed(mb_left) && mapGetDef(global.inventory, 'legs', false) {
        global._guiDrag = "equ_legs"
    }
    if mouse_check_button_released(mb_left) && (string_copy(global._guiDrop, 1, 3) == "inv" || string_copy(global._guiDrop, 1, 3) == "equ") {
        var _w_item = string_copy(global._guiDrop, 5, string_length(global._guiDrop) - 4)
        if equValidate('legs', mapGetDef(global.inventory, _w_item, false)) {
        
            var _tmp = ds_map_create()
            ds_map_copy(_tmp, ds_map_find_value(global.inventory, 'legs'))
            ds_map_delete(global.inventory, 'legs')
            ds_map_add_map(global.inventory, 'legs', mapGetDef(global.inventory, _w_item, false))
            ds_map_delete(global.inventory, _w_item)
            if ds_map_exists(_tmp, 'name') {
                ds_map_add_map(global.inventory, _w_item, _tmp)
            }
            equUpdate()
        }
    }
}

if !global.inventory_legs {
    draw_sprite(sprSlotDisabled, 0, _wx + 36 + 112, _wy + 72)
}

if guiDrawItemslot(_w_wid,  _wx + 72 + 112, _wy + 72, mapGetDef(global.inventory, 'belt', false)) {
    if mouse_check_button_pressed(mb_left) && mapGetDef(global.inventory, 'belt', false) {
        global._guiDrag = "equ_belt"
    }
    if mouse_check_button_released(mb_left) && (string_copy(global._guiDrop, 1, 3) == "inv" || string_copy(global._guiDrop, 1, 3) == "equ") {
        var _w_item = string_copy(global._guiDrop, 5, string_length(global._guiDrop) - 4)
        if equValidate('belt', mapGetDef(global.inventory, _w_item, false)) {
        
            var _tmp = ds_map_create()
            ds_map_copy(_tmp, ds_map_find_value(global.inventory, 'belt'))
            ds_map_delete(global.inventory, 'belt')
            ds_map_add_map(global.inventory, 'belt', mapGetDef(global.inventory, _w_item, false))
            ds_map_delete(global.inventory, _w_item)
            if ds_map_exists(_tmp, 'name') {
                ds_map_add_map(global.inventory, _w_item, _tmp)
            }
            equUpdate()
        }
    }
}

if guiDrawItemslot(_w_wid,  _wx + 112, _wy + 108, mapGetDef(global.inventory, 'ring', false)) {
    if mouse_check_button_pressed(mb_left) && mapGetDef(global.inventory, 'ring', false) {
        global._guiDrag = "equ_ring"
    }
    if mouse_check_button_released(mb_left) && (string_copy(global._guiDrop, 1, 3) == "inv" || string_copy(global._guiDrop, 1, 3) == "equ") {
        var _w_item = string_copy(global._guiDrop, 5, string_length(global._guiDrop) - 4)
        if equValidate('ring', mapGetDef(global.inventory, _w_item, false)) {
        
            var _tmp = ds_map_create()
            ds_map_copy(_tmp, ds_map_find_value(global.inventory, 'ring'))
            ds_map_delete(global.inventory, 'ring')
            ds_map_add_map(global.inventory, 'ring', mapGetDef(global.inventory, _w_item, false))
            ds_map_delete(global.inventory, _w_item)
            if ds_map_exists(_tmp, 'name') {
                ds_map_add_map(global.inventory, _w_item, _tmp)
            }
            equUpdate()
        }
    }
}

if guiDrawItemslot(_w_wid,  _wx + 36 + 112, _wy + 108, mapGetDef(global.inventory, 'feet', false)) {
    if mouse_check_button_pressed(mb_left) && mapGetDef(global.inventory, 'feet', false) {
        global._guiDrag = "equ_feet"
    }
    if mouse_check_button_released(mb_left) && (string_copy(global._guiDrop, 1, 3) == "inv" || string_copy(global._guiDrop, 1, 3) == "equ") {
        var _w_item = string_copy(global._guiDrop, 5, string_length(global._guiDrop) - 4)
        if equValidate('feet', mapGetDef(global.inventory, _w_item, false)) {
        
            var _tmp = ds_map_create()
            ds_map_copy(_tmp, ds_map_find_value(global.inventory, 'feet'))
            ds_map_delete(global.inventory, 'feet')
            ds_map_add_map(global.inventory, 'feet', mapGetDef(global.inventory, _w_item, false))
            ds_map_delete(global.inventory, _w_item)
            if ds_map_exists(_tmp, 'name') {
                ds_map_add_map(global.inventory, _w_item, _tmp)
            }
            equUpdate()
        }
    }
}

if guiDrawItemslot(_w_wid,  _wx + 72 + 112, _wy + 108, mapGetDef(global.inventory, 'neck', false)) {
    if mouse_check_button_pressed(mb_left) && mapGetDef(global.inventory, 'neck', false) {
        global._guiDrag = "equ_neck"
    }
    if mouse_check_button_released(mb_left) && (string_copy(global._guiDrop, 1, 3) == "inv" || string_copy(global._guiDrop, 1, 3) == "equ") {
        var _w_item = string_copy(global._guiDrop, 5, string_length(global._guiDrop) - 4)
        if equValidate('neck', mapGetDef(global.inventory, _w_item, false)) {
        
            var _tmp = ds_map_create()
            ds_map_copy(_tmp, ds_map_find_value(global.inventory, 'neck'))
            ds_map_delete(global.inventory, 'neck')
            ds_map_add_map(global.inventory, 'neck', mapGetDef(global.inventory, _w_item, false))
            ds_map_delete(global.inventory, _w_item)
            if ds_map_exists(_tmp, 'name') {
                ds_map_add_map(global.inventory, _w_item, _tmp)
            }
            equUpdate()
        }
    }
}

if guiDrawButton(_w_wid, _wx, _wy + 132, 55, 14, "Combat", 0) {
    if mouse_check_button_pressed(mb_left) {
        guiWindowSet(_w_wid, 'page', 0)
    }
    global.cur = cr_handpoint
}
if guiDrawButton(_w_wid, _wx + 55, _wy + 132, 55, 14, "Crafting", 0) {
    if mouse_check_button_pressed(mb_left) {
        guiWindowSet(_w_wid, 'page', 1)
    }
    global.cur = cr_handpoint
}

if guiWindowGetDef(_w_wid, 'page', 0) == 0 {
    var _xat = 0;
    var _yat = 0;
    _wstats = 23
    _wstat[0] = "hp"
    _wstatspr[0] = sprStatHp
    _wstat[1] = "str"
    _wstatspr[1] = sprStatStr
    _wstat[2] = "magic"
    _wstatspr[2] = sprStatMagic
    _wstat[3] = "dodge"
    _wstatspr[3] = sprStatDodge
    _wstat[4] = "acc"
    _wstatspr[4] = sprStatAcc
    _wstat[5] = "def"
    _wstatspr[5] = sprStatDef
    _wstat[6] = "fencing"
    _wstatspr[6] = sprStatFencing
    _wstat[7] = "archery"
    _wstatspr[7] = sprStatArchery
    _wstat[8] = "guns"
    _wstatspr[8] = sprStatGuns
    _wstat[9] = "throwing"
    _wstatspr[9] = sprStatThrowing
    _wstat[10] = "axes"
    _wstatspr[10] = sprStatAxe
    _wstat[11] = "spears"
    _wstatspr[11] = sprStatSpear
    _wstat[12] = "blunt"
    _wstatspr[12] = sprStatBlunt
    _wstat[13] = "fire_magic"
    _wstatspr[13] = sprStatFire
    _wstat[14] = "dark_magic"
    _wstatspr[14] = sprStatDark
    _wstat[15] = "air_magic"
    _wstatspr[15] = sprStatAir
    _wstat[16] = "ground_magic"
    _wstatspr[16] = sprStatGround
    _wstat[17] = "ice_magic"
    _wstatspr[17] = sprStatIce
    _wstat[18] = "poison_magic"
    _wstatspr[18] = sprStatPoison
    _wstat[19] = "divine_magic"
    _wstatspr[19] = sprStatDivine
    _wstat[20] = "water_magic"
    _wstatspr[20] = sprStatWater
    _wstat[21] = "lightning_magic"
    _wstatspr[21] = sprStatLightning
    _wstat[22] = "fairy_magic"
    _wstatspr[22] = sprStatFairy
    
    
     var _i = 0
    repeat(_wstats) {
        guiDrawStat(_w_wid,  _wx + 44 * _xat, _wy + 147 + 32 * _yat, _wstat[_i], _wstatspr[_i])
        
        _i += 1
        _xat +=1
        if _xat == 5 {
            _xat = 0
            _yat += 1
        }
    }
}else {
    var _xat = 0;
    var _yat = 0;
    _wstats = 12
    _wstat[0] = "mining"
    _wstatspr[0] = sprStatMining
    _wstat[1] = "cooking"
    _wstatspr[1] = sprStatMining
    _wstat[2] = "forging"
    _wstatspr[2] = sprStatMining
    _wstat[3] = "botanics"
    _wstatspr[3] = sprStatMining
    _wstat[4] = "alchemy"
    _wstatspr[4] = sprStatMining
    _wstat[5] = "tailory"
    _wstatspr[5] = sprStatMining
    _wstat[6] = "fishing"
    _wstatspr[6] = sprStatMining
    _wstat[7] = "carpentry"
    _wstatspr[7] = sprStatMining
    _wstat[8] = "enchanting"
    _wstatspr[8] = sprStatMining
    _wstat[9] = "engineering"
    _wstatspr[9] = sprStatMining
    _wstat[10] = "music"
    _wstatspr[10] = sprStatMining
    _wstat[11] = "art"
    _wstatspr[11] = sprStatMining
    
    
    
     var _i = 0
    repeat(_wstats) {
        guiDrawStat(_w_wid,  _wx + 44 * _xat, _wy + 147 + 32 * _yat, _wstat[_i], _wstatspr[_i])
        
        _i += 1
        _xat +=1
        if _xat == 5 {
            _xat = 0
            _yat += 1
        }
    }
}
