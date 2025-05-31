var setBack;
switch(room){
	case rTransition1_2: setBack = bBlueSky; break;
	case rTransition2_3: setBack = bPinkSky; break;
	case rTransition3_Clear: setBack = bNightSky; break;
}

var getId = layer_get_id("Background");
var getBack = layer_background_get_id(getId);
layer_background_sprite(getBack,setBack);

audio_play_sound(sndGlass,0,false);
alarm[0] = 10;

y = 700;