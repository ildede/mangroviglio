if (is_active)
{
	switch (self.prev_direction)
	{
		case 0:
			self.sprite_index = spr_root_end_left;
		break;
		case 90:
			self.sprite_index = spr_root_end;
		break;
		case 180:
			self.sprite_index = spr_root_end_right;
		break;
		case 270:
			self.sprite_index = spr_root_end;
		break;
	}
	self.direction = 90;
}