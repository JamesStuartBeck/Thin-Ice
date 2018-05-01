if (title == "Exit")
	game_end();
else {
	roomId = asset_get_index(roomName);
	room_goto(roomId);
}
