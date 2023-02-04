if (is_active)
{
	switch (self.prev_direction)
	{
		case 0:
			self.sprite_index = spr_root_end_left;
			self.direction = 90;
		break;
		case 90:
			self.sprite_index = spr_root_end;
			self.direction = 90;
		break;
		case 180:
			self.sprite_index = spr_root_end_right;
			self.direction = 90;
		break;
		case 270:
			self.sprite_index = spr_root_end;
		break;
	}
}