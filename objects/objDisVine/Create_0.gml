partSystem = part_system_create();
//part_system_depth(partSystem,301);

partType = part_type_create();
part_type_shape(partType,pt_shape_sphere);
part_type_alpha2(partType,0.5,0);
part_type_color1(partType,c_black);
part_type_life(partType,25,50);
part_type_size(partType,0.1,0.3,0,0);
part_type_speed(partType,0.1,0.5,0,0);

alarm[0] = 1;