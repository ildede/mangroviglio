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
		alarm[1] = room_speed * 30;
	}
	else
	{
		alarm[1] = room_speed * 1;
	}
}
