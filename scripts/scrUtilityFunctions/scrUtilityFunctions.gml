#region Arrays
function array_shuffle(array) {
	var length = array_length(array);

	for (var i = 0; i < length; i++) {
	    var temp = array[i];
	    var rnd = irandom(length - 1);
	    array[i] = array[rnd];
	    array[rnd] = temp;
	}

	return array;
}

function array_pick(array) {
	return array[irandom(array_length(array) - 1)];
}
#endregion

#region Drawing
function draw_text_outline(x, y, text, border_color) {
	var color = draw_get_color();
	draw_set_color(border_color);

	for (var i = -1; i < 2; i++) {
	    for (var j = -1; j < 2; j++) {
	        draw_text(x + j, y + i, text);
	    }
	}

	draw_set_colour(color);
	draw_text(x, y, text);
}

function draw_sprite_fog(sprite, subimg, xx, yy, xscale, yscale, rot, col, alpha, fog_color = c_black) {
	gpu_set_fog(true, fog_color, 0, 0);
	draw_sprite_ext(sprite, subimg, xx, yy, xscale, yscale, rot, col, alpha);
	gpu_set_fog(false, c_black, 0, 0);
}
#endregion

#region Other
function camera_properties(num) {
	var cam = view_camera[num];
	
	return {
		view_cam: cam,
		view_x: camera_get_view_x(cam),
		view_y: camera_get_view_y(cam),
		view_w: camera_get_view_width(cam),
		view_h: camera_get_view_height(cam),
		view_xw: camera_get_view_x(cam) + camera_get_view_width(cam),
		view_yh: camera_get_view_y(cam) + camera_get_view_height(cam),
		view_angle: camera_get_view_angle(cam),
	};
}

function remap(value, from1, to1, from2, to2) {
	return (value - from1) / (to1 - from1) * (to2 - from2) + from2;
}

function approach(val1, val2, amount) {
	if (val1 == val2) {
		return val1;
	}
	
	if (val1 < val2) {
		return min(val1 + amount, val2);
	} else {
		return max(val1 - amount, val2);
	}
}

function struct_all(struct) {
    var names = variable_struct_get_names(struct);

    for (var i = 0; i < array_length(names); i++) {
        if (!struct[$ names[i]]) {
            return false;
        }
    }

    return true;
}

function struct_set_all(struct, value) {
    var names = variable_struct_get_names(struct);
    
    for (var i = 0; i < array_length(names); i++) {
        struct[$ names[i]] = value;
    }
}

function seconds_to_frames(seconds) {
	return game_get_speed(gamespeed_fps) * seconds;
}

function print(str) {
	show_debug_message(str);
}

function scrSpikeSprite() {
	var Dir = "Up", Type = "Spike";
	
	switch(object_index){
		case objSpikeUp: Dir = "Up"; break;
		case objSpikeDown: Dir = "Down"; break;
		case objSpikeRight: Dir = "Right"; break;
		case objSpikeLeft: Dir = "Left"; break;
		
		case objMiniUp: Dir = "Up"; Type = "Mini"; break;
		case objMiniDown: Dir = "Down"; Type = "Mini"; break;
		case objMiniLeft: Dir = "Left"; Type = "Mini"; break;
		case objMiniRight: Dir = "Right"; Type = "Mini"; break;
	}
	
	sprite_index = asset_get_index("sprNew"+string(Type)+string(Dir));
	
	var c_stage2 = make_color_hsv(128,25,255);
	var c_stage3 = make_color_hsv(0,25,255);
	
	switch(room){
		//Intro
		case rIntroRoom:
			if (x > 800 && x < 800*2) image_blend = c_stage2;
			if (x >= 800*2) image_blend = c_stage3;
		break;
		
		//Stage 2
		case rRoom2_1: case rRoom2_2: case rRoom2_3:
			image_blend = c_stage2;
		break;
		
		//Stage 3
		case rRoom3_1: case rRoom3_2:
			image_blend = c_stage3;
		break;
		
		//Last room
		case rRoom3_3:
			if (x >= 800-32*2 && x < 800*2) image_blend = c_stage2;
			if (x > 800*2-32*2 || x < 32*5) image_blend = c_stage3;
		break;
	}
}
#endregion