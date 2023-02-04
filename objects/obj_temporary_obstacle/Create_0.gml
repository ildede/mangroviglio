show_debug_message("Create temporary")
show_debug_message(place_meeting(x, y, all))

if (place_meeting(x, y, all))
{
	instance_destroy()
}
else
{
	alarm[0] = room_speed * 10
}