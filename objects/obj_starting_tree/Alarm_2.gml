/// @description Check is dead

if (array_length(self.roots) > 0)
{

	var cur_index = 0;
	while (cur_index < array_length(self.roots))
	{
		var current_is_dead = variable_instance_get(self.roots[cur_index], "is_dead");
		if (current_is_dead)
		{
			array_delete(self.roots, cur_index, 1);
		}
		else
		{
			cur_index += 1;
		}
	}
	if (array_length(self.roots) = 0)
	{
		alarm[4] = 10;
		self.root_creation = [];
		obj_restart.image_blend = c_red;
	}
}
alarm[2] = room_speed * 1;