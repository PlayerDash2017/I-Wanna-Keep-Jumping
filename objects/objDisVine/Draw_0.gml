draw_set_alpha(0.3+lengthdir_x(0.1,real(instance_id)+current_time/16));
draw_set_color(c_black);
draw_rectangle(x+18*image_xscale,y,x+32*image_xscale-1,y+sprite_height-1,false);
draw_set_alpha(1);

draw_self();