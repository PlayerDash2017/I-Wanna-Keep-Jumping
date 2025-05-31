var Dir = 0;
if (image_xscale == -1) Dir = 180;

part_type_direction(partType,Dir,Dir,0,0);
part_particles_create(partSystem,x+(irandom_range(25,35))*image_xscale,y+irandom(image_yscale*32),partType,1);
alarm[0] = irandom_range(15,20);