function add_root_end_up()
{
	instance_create_depth(x, y - self.sprite_height/2 + sprite_get_height(spr_root_straight)/2, self.depth + 10, obj_root_straight, { image_angle: 90 })
	return instance_create_depth(x, y - self.sprite_height/2 - sprite_get_height(spr_root_end)/2, self.depth, obj_root_end, { image_angle: 0, direction: 90, prev_direction: 90 });
}

function add_root_end_down()
{
	instance_create_depth(x, y + self.sprite_height/2 - sprite_get_height(spr_root_straight)/2, self.depth + 10, obj_root_straight, { image_angle: 90 })
	return instance_create_depth(x, y + self.sprite_height/2 + sprite_get_height(spr_root_end)/2, depth, obj_root_end, { image_angle: 180, direction: 270, prev_direction: 270 });
}

function add_root_end_left()
{
	instance_create_depth(x - self.sprite_width/2 + sprite_get_width(spr_root_straight)/2, y, self.depth + 10, obj_root_straight, { image_angle: 0 })
	return instance_create_depth(x - self.sprite_width/2 - sprite_get_width(spr_root_end)/2, y, depth, obj_root_end, { image_angle: 90, direction: 180, prev_direction: 180 });
}

function add_root_end_right()
{
	instance_create_depth(x + self.sprite_width/2 - sprite_get_width(spr_root_straight)/2, y, self.depth + 10, obj_root_straight, { image_angle: 0 })
	return instance_create_depth(x + self.sprite_width/2 + sprite_get_width(spr_root_end)/2, y, depth, obj_root_end, { image_angle: 270, direction: 0, prev_direction: 0 });
}

show_debug_message("Create tree - START");
self.roots = [];

array_push(
	self.roots,
	add_root_end_up(),
	add_root_end_right(),
	add_root_end_down(),
	add_root_end_left()
);

show_debug_message(self.roots);
variable_instance_set(self.roots[active_root], "is_active", true);

show_debug_message("Create tree - END");
