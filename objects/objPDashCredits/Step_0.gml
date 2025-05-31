if (Vanish){
	image_alpha -= 1/20;
	if (image_alpha <= 0) instance_destroy();
}