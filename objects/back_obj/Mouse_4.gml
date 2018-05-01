if (prevRoom == "Exit")
	game_end();
else {
	roomId = asset_get_index(prevRoom);
	room_goto(roomId);
}