/// @description Collisions detection

if branchNumber == obj_tree.selectedBranch +1
{
	image_index = 0;
} else image_index = 1;


if !isActive exit 

colLeft = place_meeting(x-16, y, obj_root);
colRight = place_meeting(x+16, y, obj_root);
colUp = place_meeting(x, y-16, obj_root);
colDown = place_meeting(x, y+16, obj_root);

//Stop growth if touching root
if place_meeting(x, y, obj_root)
{
	isActive = false;
	alarm[0] = 0;
	obj_tree.branchCount --;
};