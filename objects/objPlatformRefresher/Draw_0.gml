draw_self();
draw_set_color(c_white);
draw_set_alpha((alarm[0]/75)*0.5);
draw_rectangle(x,y,x+sprite_width-1,y+sprite_height-1,false);
draw_set_alpha(1);