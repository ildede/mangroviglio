/// @description

if isActive and (branchNumber == obj_tree.selectedBranch +1)
{
	draw_text(50, 200, "R: " + string(colRight));
	draw_text(50, 230, "L: " + string(colLeft));
	draw_text(50, 260, "U: " + string(colUp));
	draw_text(50, 290, "D: " + string(colDown));
	draw_text(50, 320, "Dir: " + string(dir));
};