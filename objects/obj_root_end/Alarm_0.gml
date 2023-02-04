/// @description Grow
var have_collision = false;
switch (self.direction)
{
	case 0:
		var new_x = self.x + self.sprite_width;
		have_collision = place_meeting(new_x, self.y, all);
	break;
	case 90:
		var new_y = self.y - self.sprite_height;
		have_collision = place_meeting(self.x, new_y, all);
	break;
	case 180:
		var new_x = self.x - self.sprite_width;
		have_collision = place_meeting(new_x, self.y, all);
	break;
	case 270:
		var new_y = self.y + self.sprite_height;
		have_collision = place_meeting(x, new_y, all);
	break;
}

if (!have_collision)
{
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
}
alarm[0] = room_speed * 3;