/// @description 

branchNumber = 0;

isActive = true;
isVisible = true;
image_alpha = .75;

alarm[2] = 2;
dirGiven = false;
/*
dir = "right";
switch(dir)
{
	case "right": xx = x + 16; yy = y; break;
	case "left": xx = x - 16; yy = y; break;
	case "up": xx = x; yy = y - 16; break;
	case "down": xx = x; yy = y + 16; break;
};
*/
//Start growing
alarm[0] = room_speed * 2;