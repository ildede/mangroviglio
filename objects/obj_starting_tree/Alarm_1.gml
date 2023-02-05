/// @description Create new root

if (array_length(self.root_creation) > 0)
{
	var result = array_pop(self.root_creation)();
	if (result != undefined)
	{
		array_push(
			self.roots,
			result
		);
		if (array_length(self.roots) == 1)
		{
			variable_instance_set(self.roots[active_root], "is_active", true);
		}
		alarm[1] = room_speed * 30;
	}
	else
	{
		alarm[1] = room_speed * 1;
	}
}
