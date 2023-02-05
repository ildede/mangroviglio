/// @description Check percentage
#macro TOTAL_GRID_PLACES 253
//show_message("ok");

var deployed_root_count = instance_number(deployed_root);
var root_head_count = instance_number(obj_root_end);

draw_text(100, 100, string(deployed_root_count));
draw_text(100, 200, string(root_head_count));
draw_text_color(100, 300, "AAAAAAA", c_red, c_red, c_red, c_red, 1);

