/// @description Direction XX and YY
switch(dir)
{
	case "right": xx = x + 16; yy = y; break;
	case "left": xx = x - 16; yy = y; break;
	case "up": xx = x; yy = y - 16; break;
	case "down": xx = x; yy = y + 16; break;
};