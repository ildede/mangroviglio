/// @description Check percentage
#macro TOTAL_GRID_PLACES 299
//show_message("ok");

var deployed_root_count = instance_number(deployed_root);
var root_head_count = instance_number(obj_root_end);

var starting_tree_count = 25;
var rocks_count = instance_number(obj_fixed_obstacle);

var free_space = TOTAL_GRID_PLACES - rocks_count - starting_tree_count;
var covered_space = deployed_root_count + root_head_count;

var percentage = (covered_space / free_space) * 100;
draw_text(room_width - 100, 400, string(percentage));
if (percentage > 85 && !self.win)
{
	self.win = true;
	alarm[3] = 10;
}
