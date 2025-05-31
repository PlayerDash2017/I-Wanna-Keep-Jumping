leave_room = false;
now_x = 0;
now_y = 0;
target_x = 0;
target_y = 0;

var getId = layer_get_id("Background");
var getBack = layer_background_get_id(getId);
layer_background_visible(getBack,false);