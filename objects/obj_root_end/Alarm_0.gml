/// @description Grow

if (!self.is_dead)
{
	var could_grow = true;
	switch (self.direction)
	{
		case 0:
			var new_x = self.x + self.sprite_width;
			var new_y = self.y;
			if (new_x > room_width)
			{
				could_grow = false
			}

			if (place_meeting(new_x, new_y, all))
			{
				could_grow = false;
				var root_found = instance_place(new_x, new_y, deployed_root);
				if (root_found != noone && root_found.green_level = 0)
				{
					could_grow = true;
				}			
			}

		break;
		case 90:
			var new_x = self.x;
			var new_y = self.y - self.sprite_height;
			if (new_y < 0)
			{
				could_grow = false
			}

			if (place_meeting(new_x, new_y, all))
			{
				could_grow = false;
				var root_found = instance_place(new_x, new_y, deployed_root);
				if (root_found != noone && root_found.green_level = 0)
				{
					could_grow = true;
				}			
			}
		break;
		case 180:
			var new_x = self.x - self.sprite_width;
			var new_y = self.y;
			if (new_x < 0)
			{
				could_grow = false
			}

			if (place_meeting(new_x, new_y, all))
			{
				could_grow = false;
				var root_found = instance_place(new_x, new_y, deployed_root);
				if (root_found != noone && root_found.green_level = 0)
				{
					could_grow = true;
				}			
			}
		break;
		case 270:
			var new_x = self.x;
			var new_y = self.y + self.sprite_height;
			if (new_y > room_height)
			{
				could_grow = false;
			}

			if (place_meeting(new_x, new_y, all))
			{
				could_grow = false;
				var root_found = instance_place(new_x, new_y, deployed_root);
				if (root_found != noone && root_found.green_level = 0)
				{
					could_grow = true;
				}			
			}
		break;
	}

	if (could_grow)
	{
		if (self.prev_direction == self.direction)
		{
			instance_create_depth(self.x, self.y, self.depth - 5, obj_root_straight, { image_angle: self.direction, image_xscale: 0.5, image_yscale: 0.5 });
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

			instance_create_depth(self.x, self.y, self.depth - 5, obj_root_bent, { image_angle: bent_direction, image_xscale: 0.5, image_yscale: 0.5 });
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
	else
	{
		self.is_dead = true;
		audio_play_sound(snd_root_dead, 1, false);
	}
	alarm[0] = room_speed * 3;
}