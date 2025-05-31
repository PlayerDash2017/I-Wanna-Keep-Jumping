draw_set_color(c_yellow);
for (i = 0; i <= 1; i ++){
	draw_line(x-1,y+i,x+sprite_width-1,y+i);
	//draw_set_color(c_ltgray);
}

gpu_set_blendmode(bm_add);
draw_rectangle_color(x,y-8+lengthdir_y(3,current_time/15),x+sprite_width-1,y,
					 c_black,c_black,
					 c_yellow,c_yellow,
					 false);
gpu_set_blendmode(bm_normal);