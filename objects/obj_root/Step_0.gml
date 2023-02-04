/// @description Collisions detection

if !isActive exit 

colLeft = place_meeting(x-16, y, obj_root);
colRight = place_meeting(x+16, y, obj_root);
colUp = place_meeting(x, y-16, obj_root);
colDown = place_meeting(x, y+16, obj_root);