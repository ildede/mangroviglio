/// @description 

rootPlus = keyboard_check_pressed(vk_add);
rootMinus = keyboard_check_pressed(vk_subtract);

right = keyboard_check_pressed(vk_right);
left = keyboard_check_pressed(vk_left);
up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);

if right {with(activeRoot){dir = "right"; xx = x + 16; yy = y;};};
if left {with(activeRoot){dir = "left"; xx = x - 16; yy = y;};};
if up {with(activeRoot){dir = "up"; xx = x; yy = y - 16;};};
if down {with(activeRoot){dir = "down"; xx = x; yy = y + 16;};};

if rootPlus and !rootMinus and (selectedBranch < branchNumber -1)
{
	selectedBranch ++;
};

if !rootPlus and rootMinus and (selectedBranch > 0)
{
	selectedBranch --;
};