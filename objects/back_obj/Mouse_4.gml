if (prevRoom == "Exit"){
	audio_play_sound(snd_select, 10, false);
	game_end();
}
else {
	audio_play_sound(snd_select, 10, false);

	roomId = asset_get_index(prevRoom);
	room_goto(roomId);
}