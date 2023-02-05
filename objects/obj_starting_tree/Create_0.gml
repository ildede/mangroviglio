randomize();

#macro DEFAULT_STEP 60

function add_root_end(root_x, root_y, end_x, end_y, local_direction)
{
	if (position_empty(end_x, end_y))
	{
		instance_create_depth(root_x, root_y, depth + 5, obj_root_straight, { image_angle: local_direction, image_xscale: 0.5, image_yscale: 0.5 })
		return instance_create_depth(end_x, end_y, depth + 5, obj_root_end, { image_angle: local_direction - 90, direction: local_direction, prev_direction: local_direction, image_xscale: 0.5, image_yscale: 0.5 });
	}
	else return undefined;
}

function add_root_end_up_left()
{
	return add_root_end(
		self.x - DEFAULT_STEP, self.y - sprite_get_height(spr_root_straight_1)*1.5,
		self.x - DEFAULT_STEP, self.y - sprite_get_height(spr_root_end)*2,
		90
	);
}

function add_root_end_up_center()
{
	return add_root_end(
		self.x, self.y - sprite_get_height(spr_root_straight_1)*1.5,
		self.x, self.y - sprite_get_height(spr_root_end)*2,
		90
	);
}
function add_root_end_up_right()
{
	return add_root_end(
		self.x + DEFAULT_STEP, self.y - sprite_get_height(spr_root_straight_1)*1.5,
		self.x + DEFAULT_STEP, self.y - sprite_get_height(spr_root_end)*2,
		90
	);
}


function add_root_end_down_right()
{
	return add_root_end(
		x + DEFAULT_STEP, y + sprite_get_height(spr_root_straight_1)*1.5,
		x + DEFAULT_STEP, y + sprite_get_height(spr_root_end)*2,
		270
	);
}
function add_root_end_down_center()
{
	return add_root_end(
		x, y + sprite_get_height(spr_root_straight_1)*1.5,
		x, y + sprite_get_height(spr_root_end)*2,
		270
	);
}
function add_root_end_down_left()
{
	return add_root_end(
		x - DEFAULT_STEP, y + sprite_get_height(spr_root_straight_1)*1.5,
		x - DEFAULT_STEP, y + sprite_get_height(spr_root_end)*2,
		270
	);
}


function add_root_end_left_down()
{
	return add_root_end(
		x - sprite_get_width(spr_root_straight_1)*1.5, y + DEFAULT_STEP,
		x - sprite_get_width(spr_root_end)*2, y + DEFAULT_STEP,
		180
	);
}
function add_root_end_left_center()
{
	return add_root_end(
		x - sprite_get_width(spr_root_straight_1)*1.5, y,
		x - sprite_get_width(spr_root_end)*2, y,
		180
	);
}
function add_root_end_left_up()
{
	return add_root_end(
		x - sprite_get_width(spr_root_straight_1)*1.5, y - DEFAULT_STEP,
		x - sprite_get_width(spr_root_end)*2, y - DEFAULT_STEP,
		180
	);
}

function add_root_end_right_up()
{
	return add_root_end(
		x + sprite_get_width(spr_root_straight_1)*1.5, y - DEFAULT_STEP,
		x + sprite_get_width(spr_root_end)*2, y - DEFAULT_STEP,
		0
	);
}
function add_root_end_right_center()
{
	return add_root_end(
		x + sprite_get_width(spr_root_straight_1)*1.5, y,
		x + sprite_get_width(spr_root_end)*2, y,
		0
	);
}
function add_root_end_right_down()
{
	return add_root_end(
		x + sprite_get_width(spr_root_straight_1)*1.5, y + DEFAULT_STEP,
		x + sprite_get_width(spr_root_end)*2, y + DEFAULT_STEP,
		0
	);
}

self.root_creation = [];
array_push(
	self.root_creation,
	add_root_end_up_left,
	add_root_end_up_center,
	add_root_end_up_right,

	add_root_end_right_up,
	add_root_end_right_center,
	add_root_end_right_down,

	add_root_end_down_right,
	add_root_end_down_center,
	add_root_end_down_left,

	add_root_end_left_down,
	add_root_end_left_center,
	add_root_end_left_up
);
array_shuffle_ext(self.root_creation);

self.roots = [];

array_push(
	self.roots,
	array_pop(self.root_creation)()
);

variable_instance_set(self.roots[active_root], "is_active", true);

self.rocks = [];

array_push(
	self.rocks,
	create_fixed(),
	create_fixed(),
	create_fixed(),
);

alarm[0] = room_speed * 4;
alarm[1] = room_speed * 30;
alarm[2] = room_speed * 1;