
//basic partical
var _part = part_type_create();
part_type_shape(_part, pt_shape_disk);
part_type_life(_part, 20, 40);

global.part_basic = _part;

#macro ROOM_START rm_parent

#macro RES_W 240
#macro RES_H 135
#macro RES_HALFW (RES_W * 0.5)
#macro RES_HALFH (RES_H * 0.5)
#macro RES_SCALE 8
#macro CAM_SMOOTH 0.1
#macro CARDINAL_DIR round(direction/180)

#macro ENERGY_X  149
#macro ENERGY_Y  45