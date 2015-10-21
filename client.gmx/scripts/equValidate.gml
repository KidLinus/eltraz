var _type = mapGetDef(argument1, 'type', 'etc')
switch(argument0){
    case 'earring':
    if _type == 'earring' return true;
    break;
    
    case 'head':
    if _type == 'hat' return true;
    break;
    
    case 'ammo':
    if _type == 'arrows' return true;
    if _type == 'bolts' return true;
    if _type == 'throwing_item' return true;
    break;
    
    case 'main_hand':
    if _type == 'dagger' return true;
    if _type == 'sword' return true;
    if _type == 'longsword' return true;
    if _type == 'blunt_weapond' return true;
    if _type == 'wand' return true;
    if _type == 'staff' return true;
    if _type == 'bow' return true;
    if _type == 'axe' return true;
    if _type == 'spear' return true;
    if _type == 'claw' return true;
    if _type == 'gun' return true;
    break;
    
    case 'off_hand':
    if _type == 'shield' return true;
    break;

    case 'body':
    if _type == 'body' return true;
    if _type == 'overall' return true;
    break;

    case 'gloves':
    if _type == 'gloves' return true;
    break;
    
    case 'legs':
    if _type == 'legs' return true;
    break;
    
    case 'belt':
    if _type == 'belt' return true;
    break;
    
    case 'ring':
    if _type == 'ring' return true;
    break;
    
    case 'feet':
    if _type == 'shoes' return true;
    break;
    
    case 'neck':
    if _type == 'necklace' return true;
    break;
}

return false;
