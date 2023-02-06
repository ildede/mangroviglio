if (!audio_is_playing(music_loop))
{
	var len;
	len = audio_sound_length(title_screen_fade_in);
	audio_play_sound(title_screen_fade_in, 1, false);
	alarm[0] = room_speed * len - 20;
}

window_set_fullscreen(true);