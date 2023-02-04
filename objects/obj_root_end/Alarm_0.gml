/// @description Grow
show_debug_message("I want to grow!");
show_debug_message(self.prev_direction);
show_debug_message(self.direction);

if (self.prev_direction == self.direction)
{
	instance_create_depth(self.x, self.y, self.depth, obj_root_straight, { image_angle: self.direction });
}
else
{
	var bent_direction = 0;
	if (self.prev_direction == 0 && self.direction == 90)
	{
		bent_direction = 0;
	}
	if (self.prev_direction == 0 && self.direction == 270)
	{
		bent_direction = 90;
	}

	if (self.prev_direction == 180 && self.direction == 90)
	{
		bent_direction = 270;
	}
	if (self.prev_direction == 180 && self.direction == 270)
	{
		bent_direction = 180;
	}

	if (self.prev_direction == 90 && self.direction == 180)
	{
		bent_direction = 90;
	}
	if (self.prev_direction == 90 && self.direction == 0)
	{
		bent_direction = 180;
	}

	if (self.prev_direction == 270 && self.direction == 180)
	{
		bent_direction = 0;
	}
	if (self.prev_direction == 270 && self.direction == 0)
	{
		bent_direction = 270;
	}

	instance_create_depth(self.x, self.y, self.depth, obj_root_bent, { image_angle: bent_direction });
	self.prev_direction = self.direction;
}

switch (self.direction)
{
	case 0:
		self.x += sprite_width;
		self.image_angle = 270;
	break;
	case 90:
		self.y -= self.sprite_height;
		self.image_angle = 0;
	break;
	case 180:
		self.x -= self.sprite_width;
		self.image_angle = 90;
	break;
	case 270:
		self.y += self.sprite_height;
		self.image_angle = 180;
	break;
}
self.sprite_index = spr_root_end;
alarm[0] = room_speed * 2;