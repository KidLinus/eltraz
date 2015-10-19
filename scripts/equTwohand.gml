var _type = mapGetDef(argument0, 'type', 'etc')
switch(_type){
    case 'longsword':
    case 'staff':
    case 'bow':
    case 'spear':
    return true;
    break;
}

return false;
