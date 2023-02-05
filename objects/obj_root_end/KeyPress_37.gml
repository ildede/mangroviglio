if (is_active && !is_dead)
{
	switch (self.prev_direction)
	{
		case 0:
			self.sprite_index = spr_root_end;
		break;
		case 90:
			self.sprite_index = spr_root_end_left;
			self.direction = 180;
		break;
		case 180:
			self.sprite_index = spr_root_end;
			self.direction = 180;
		break;
		case 270:
			self.sprite_index = spr_root_end_right;
			self.direction = 180;
		break;
	}
}