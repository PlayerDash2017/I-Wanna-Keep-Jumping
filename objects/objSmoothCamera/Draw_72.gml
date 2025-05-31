var getId = layer_get_id("Background");
var getBack = layer_background_get_id(getId);
var getSprBack = layer_background_get_sprite(getBack);

var W = sprite_get_width(getSprBack);
var H = sprite_get_height(getSprBack);

draw_sprite_ext(getSprBack,0,now_x,now_y,800/W,608/H,0,c_white,1);