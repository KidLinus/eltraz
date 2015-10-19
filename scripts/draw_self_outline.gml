d3d_set_fog(true,argument0,0,0);
draw_sprite_ext(sprite_index,image_index,x+1,y,image_xscale,image_yscale,image_angle,argument0,1)
draw_sprite_ext(sprite_index,image_index,x,y+1,image_xscale,image_yscale,image_angle,argument0,1)
draw_sprite_ext(sprite_index,image_index,x-1,y,image_xscale,image_yscale,image_angle,argument0,1)
draw_sprite_ext(sprite_index,image_index,x,y-1,image_xscale,image_yscale,image_angle,argument0,1)
d3d_set_fog(false,c_white,0,0);
