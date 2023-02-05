if (array_length(self.roots) > 0)
{
	variable_instance_set(self.roots[active_root], "is_active", false);

	var root_count = array_length(self.roots);
	if (root_count == 1) {
		self.active_root = 0
	}
	else if (self.active_root < root_count-1)
	{
		self.active_root += 1;
	}
	else
	{
		self.active_root = 0;
	}

	variable_instance_set(self.roots[active_root], "is_active", true);
}
else
{
	active_root = 0
}