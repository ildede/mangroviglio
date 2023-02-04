/// @description 

rootPlus = keyboard_check_pressed(vk_add) || keyboard_check_pressed(ord("P"));
rootMinus = keyboard_check_pressed(vk_subtract) || keyboard_check_pressed(ord("M"));

right = keyboard_check_pressed(vk_right);
left = keyboard_check_pressed(vk_left);
up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);

if right
{with(activeRoot)
{
	if !instance_place(x + 16, y, obj_root)
	{
		dir = "right";
		xx = x + 16;
		yy = y;
	};
};
};

if left
{with(activeRoot)
{
	if !instance_place(x - 16, y, obj_root)
	{
		dir = "left";
		xx = x - 16;
		yy = y;
	};
};
};

if up
{with(activeRoot)
{
	if !instance_place(x, y - 16, obj_root)
	{
		dir = "up";
		xx = x;
		yy = y - 16;
	};
};
};

if down
{with(activeRoot)
{
	if !instance_place(x, y + 16, obj_root)
	{
		dir = "down";
		xx = x;
		yy = y + 16;
	};
};
};

//Create pool of selectable (active) roots

var i, branches, count;
i = 0;
count = 0;
with (obj_root)
{
  if (isActive) {
    branches[i] = id;
    i += 1;
	count ++;
	if i == other.selectedBranch
	{
		other.activeRoot = self;
	};
  };
};

if rootPlus and !rootMinus
{
	selectedBranch ++;
	if selectedBranch > count -1
	{
		selectedBranch = 0;
	};
};

if !rootPlus and rootMinus
{
	selectedBranch --;
	if selectedBranch < 0
	{
		selectedBranch = count -1;
	};
};

/*
//Find selected root
with(obj_root)
{
	if (branchNumber == obj_tree.selectedBranch +1) and isActive
	{
		obj_tree.activeRoot = self;
	};
};