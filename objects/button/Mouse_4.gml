if (title == "Exit")
	game_end();
else if (title == "Restart (R)")
	room_goto(room);
else if (title == "Level Selection") {
	str = room_get_name(room);
	c = str[5]
	if (c = "0")
		room_goto(easy_levels);
	else if (c = "1")
		room_goto(medium_levels);
	else if (c = "2")
		room_goto(hard_levels);
	else room_goto(expert_levels);
}
else {
	roomId = asset_get_index(roomName);
	room_goto(roomId);
}
