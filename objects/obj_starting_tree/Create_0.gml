function add_root_end_up()
{
	instance_create_depth(x, y - sprite_get_height(spr_root_straight_1)*1.5, self.depth + 5, obj_root_straight, { image_angle: 90, image_xscale: 0.5, image_yscale: 0.5 })
	return instance_create_depth(x, y - sprite_get_height(spr_root_end)*2, self.depth, obj_root_end, { image_angle: 0, direction: 90, prev_direction: 90, image_xscale: 0.5, image_yscale: 0.5 });
}

function add_root_end_down()
{
	instance_create_depth(x, y + sprite_get_height(spr_root_straight_1)*1.5, self.depth + 5, obj_root_straight, { image_angle: 90, image_xscale: 0.5, image_yscale: 0.5 })
	return instance_create_depth(x, y + sprite_get_height(spr_root_end)*2, self.depth, obj_root_end, { image_angle: 180, direction: 270, prev_direction: 270, image_xscale: 0.5, image_yscale: 0.5 });
}

function add_root_end_left()
{
	instance_create_depth(x - sprite_get_width(spr_root_straight_1)*1.5, y, self.depth + 5, obj_root_straight, { image_angle: 0, image_xscale: 0.5, image_yscale: 0.5 })
	return instance_create_depth(x - sprite_get_width(spr_root_end)*2, y, self.depth, obj_root_end, { image_angle: 90, direction: 180, prev_direction: 180, image_xscale: 0.5, image_yscale: 0.5 });
}

function add_root_end_right()
{
	instance_create_depth(x + sprite_get_width(spr_root_straight_1)*1.5, y, self.depth + 5, obj_root_straight, { image_angle: 0, image_xscale: 0.5, image_yscale: 0.5 })
	return instance_create_depth(x + sprite_get_width(spr_root_end)*2, y, self.depth, obj_root_end, { image_angle: 270, direction: 0, prev_direction: 0, image_xscale: 0.5, image_yscale: 0.5 });
}

self.roots = [];

array_push(
	self.roots,
	add_root_end_up(),
	add_root_end_right(),
	add_root_end_down(),
	add_root_end_left()
);

variable_instance_set(self.roots[active_root], "is_active", true);

self.rocks = [];

array_push(
	self.rocks,
	create_fixed()
);

alarm[0] = room_speed * 4;
