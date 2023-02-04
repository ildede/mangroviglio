/// @description  Grow

if !isActive exit

//Create new bit

var next = instance_create_depth(xx, yy, depth, obj_root);
next.dir = dir;
next.alarm[1] = 1; //blink
next.alarm[2] = 1; //Get direction
next.branchNumber = branchNumber;

//Deactivate
isActive = false;

//Continue growing
alarm[0] = room_speed * 2;