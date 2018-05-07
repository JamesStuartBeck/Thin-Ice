audio_play_sound(snd_select, 10, false);
if (title == "Exit")
	game_end();
else if (title == "Restart (R)")
	room_goto(room);
else if (title == "Levels") {
	if (roomName == "0") {
	str = room_get_name(room);
	c = string_char_at(str,5)
	if (c = "0")
		room_goto(easy_levels);
	else if (c = "1")
		room_goto(medium_levels);
	else if (c = "2")
		room_goto(hard_levels);
	else room_goto(expert_levels);
	} else {
		roomId = asset_get_index(roomName);
		room_goto(roomId);
	}
}
else {
	show_debug_message(roomName)
	roomId = asset_get_index(roomName);
	room_goto(roomId);
}