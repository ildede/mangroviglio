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
//draw_text(room_width - 100, 350, "SCORE");
//draw_text(room_width - 100, 400, string(floor(percentage)));
if (percentage > 85 && !self.win)
{
	self.win = true;
	alarm[3] = 10;
};


var _baseX =  room_width - 80; //Where the actual position is (X for horizontal, Y for vertical)
var _baseY = room_height - 360;
var _offset = 360; //Where to start the root (use sprite_width instead?)
var _score = percentage * _offset/100; //Calculate the new X or Y depending on score

//draw_text(room_width - 100, 400, string(points));

//Draw empty gauge
draw_sprite_ext(spr_gauge, 0, _baseX, _baseY, 1, 1, 0, c_white, .5);

//Gauge filling
draw_sprite(spr_gauge, 0, _baseX, _baseY + _offset - _score);
