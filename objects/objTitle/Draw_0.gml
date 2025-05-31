draw_set_font(fNewTitle);//fntTitle
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var T = (current_time/32);
var C1 = make_color_hsv(T mod 255,255,255);
var C2 = make_color_hsv((T*0.95+127) mod 255,255,255);
var drawX = 400;
var drawY = 250;//40

draw_text_colour(drawX+3, drawY+3, "I Wanna\nKeep Jumping",c_black,c_black,c_black,c_black,0.5);
draw_text_colour(drawX, drawY, "I Wanna\nKeep Jumping",C1,C2,C2,C1,1);

draw_set_font(fntMenu3);
draw_text(380, 550, "[Shift] Start");
draw_set_halign(fa_left);
draw_set_valign(fa_top);