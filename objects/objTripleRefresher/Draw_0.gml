
gpu_set_blendmode(bm_add);
draw_circle_color(x,y,11+lengthdir_x(2,real(instance_id)+current_time/16),c_yellow,c_black,false);
gpu_set_blendmode(bm_normal);

draw_sprite_ext(spr2x2,0,x,y,7,7,real(instance_id)+current_time/16,c_yellow,0.5);

draw_self();