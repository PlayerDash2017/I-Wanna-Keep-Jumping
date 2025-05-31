partSystem = part_system_create();
part_system_depth(partSystem,1);

partType = part_type_create();
part_type_alpha2(partType,1,0);
part_type_shape(partType,pt_shape_disk);
part_type_color1(partType,c_white);
part_type_direction(partType,90,90,0,0);
part_type_speed(partType,1,2,0,0);
part_type_life(partType,30,55);
part_type_size(partType,0.1,0.3,0,0);

alarm[0] = 1;