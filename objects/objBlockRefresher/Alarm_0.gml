alarm[0] = irandom_range(20,30) - (image_xscale != 1)*5;

repeat(2)
	{ part_particles_create(partSystem,x+irandom(sprite_width),y,partType,1); }