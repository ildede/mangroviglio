/// @description Check is dead

//;

if (variable_instance_get(self.roots[active_root], "is_dead")) {
	array_delete(self.roots, active_root, 1);
	set_next_active();
};


alarm[2] = room_speed * 1;