num_jumps = 3;//Numero de saltos

partSystem = part_system_create();
part_system_depth(partSystem,1);

partType = part_type_create();
part_type_alpha2(partType,1,0);
part_type_shape(partType,pt_shape_star);
part_type_color1(partType,c_yellow);
part_type_direction(partType,90-5,90+5,0,0);
part_type_speed(partType,1,1.5,1/50,0);
part_type_orientation(partType,0,360,1/20,0,true);
part_type_life(partType,30,55);
part_type_size(partType,0.1,0.25,0,0);

alarm[0] = 1;