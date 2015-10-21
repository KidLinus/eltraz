//mapGetDef(argument0, 'type', 'etc')
_item_stats = 0
_item_stat[0] = ""

var _stat = mapGetDef(argument0, 'hp', 0)
if _stat != 0 {
    if _stat > 0 {
        _item_stat[_item_stats] = 'HP +' + string(_stat)
    }else {
        _item_stat[_item_stats] = 'HP ' + string(_stat)
    }
    _item_stats += 1
}

var _stat = mapGetDef(argument0, 'hp_p', 0)
if _stat != 0 {
    if _stat > 0 {
        _item_stat[_item_stats] = 'HP +' + string(_stat) + "%"
    }else {
        _item_stat[_item_stats] = 'HP ' + string(_stat) + "%"
    }
    _item_stats += 1
}

var _stat = mapGetDef(argument0, 'mp', 0)
if _stat != 0 {
    if _stat > 0 {
        _item_stat[_item_stats] = 'MP +' + string(_stat)
    }else {
        _item_stat[_item_stats] = 'MP ' + string(_stat)
    }
    _item_stats += 1
}

var _stat = mapGetDef(argument0, 'mp_p', 0)
if _stat != 0 {
    if _stat > 0 {
        _item_stat[_item_stats] = 'MP +' + string(_stat) + "%"
    }else {
        _item_stat[_item_stats] = 'MP ' + string(_stat) + "%"
    }
    _item_stats += 1
}

var _stat = mapGetDef(argument0, 'att', 0)
if _stat != 0 {
    if _stat > 0 {
        _item_stat[_item_stats] = 'Att +' + string(_stat)
    }else {
        _item_stat[_item_stats] = 'Att ' + string(_stat)
    }
    _item_stats += 1
}

var _stat = mapGetDef(argument0, 'att_p', 0)
if _stat != 0 {
    if _stat > 0 {
        _item_stat[_item_stats] = 'Att +' + string(_stat) + "%"
    }else {
        _item_stat[_item_stats] = 'Att ' + string(_stat) + "%"
    }
    _item_stats += 1
}

var _stat = mapGetDef(argument0, 'm_att', 0)
if _stat != 0 {
    if _stat > 0 {
        _item_stat[_item_stats] = 'M.Att +' + string(_stat)
    }else {
        _item_stat[_item_stats] = 'M.Att ' + string(_stat)
    }
    _item_stats += 1
}

var _stat = mapGetDef(argument0, 'm_att_p', 0)
if _stat != 0 {
    if _stat > 0 {
        _item_stat[_item_stats] = 'M.Att +' + string(_stat) + "%"
    }else {
        _item_stat[_item_stats] = 'M.Att ' + string(_stat) + "%"
    }
    _item_stats += 1
}

var _stat = mapGetDef(argument0, 'att_speed', 0)
if _stat != 0 {
    if _stat > 0 {
        _item_stat[_item_stats] = 'Att Speed +' + string(_stat) + "%"
    }else {
        _item_stat[_item_stats] = 'Att Speed ' + string(_stat) + "%"
    }
    _item_stats += 1
}

var _stat = mapGetDef(argument0, 'def', 0)
if _stat != 0 {
    if _stat > 0 {
        _item_stat[_item_stats] = 'Def +' + string(_stat)
    }else {
        _item_stat[_item_stats] = 'Def ' + string(_stat)
    }
    _item_stats += 1
}

var _stat = mapGetDef(argument0, 'def_p', 0)
if _stat != 0 {
    if _stat > 0 {
        _item_stat[_item_stats] = 'Def +' + string(_stat) + "%"
    }else {
        _item_stat[_item_stats] = 'Def ' + string(_stat) + "%"
    }
    _item_stats += 1
}

var _stat = mapGetDef(argument0, 'm_def', 0)
if _stat != 0 {
    if _stat > 0 {
        _item_stat[_item_stats] = 'M.Def +' + string(_stat)
    }else {
        _item_stat[_item_stats] = 'M.Def ' + string(_stat)
    }
    _item_stats += 1
}

var _stat = mapGetDef(argument0, 'm_def_p', 0)
if _stat != 0 {
    if _stat > 0 {
        _item_stat[_item_stats] = 'M.Def +' + string(_stat) + "%"
    }else {
        _item_stat[_item_stats] = 'M.Def ' + string(_stat) + "%"
    }
    _item_stats += 1
}

var _stat = mapGetDef(argument0, 'crit', 0)
if _stat != 0 {
    if _stat > 0 {
        _item_stat[_item_stats] = 'Crit +' + string(_stat) + "%"
    }else {
        _item_stat[_item_stats] = 'Crit ' + string(_stat) + "%"
    }
    _item_stats += 1
}

var _stat = mapGetDef(argument0, 'dodge', 0)
if _stat != 0 {
    if _stat > 0 {
        _item_stat[_item_stats] = 'Dodge +' + string(_stat) + "%"
    }else {
        _item_stat[_item_stats] = 'Dodge ' + string(_stat) + "%"
    }
    _item_stats += 1
}

var _stat = mapGetDef(argument0, 'move_speed', 0)
if _stat != 0 {
    if _stat > 0 {
        _item_stat[_item_stats] = 'Movement +' + string(_stat) + "%"
    }else {
        _item_stat[_item_stats] = 'Movement ' + string(_stat) + "%"
    }
    _item_stats += 1
}

var _stat = mapGetDef(argument0, 'jump', 0)
if _stat != 0 {
    if _stat > 0 {
        _item_stat[_item_stats] = 'Jump +' + string(_stat) + "%"
    }else {
        _item_stat[_item_stats] = 'Jump ' + string(_stat) + "%"
    }
    _item_stats += 1
}

return _item_stats
