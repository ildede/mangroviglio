if (place_meeting(x, y, all))
{
	instance_destroy()
}
else
{
	audio_play_sound(self.entry_sound, 1, false);
	alarm[0] = room_speed * 10
}