if (prevRoom == "Exit"){
	audio_play_sound(snd_select,10,false);
	game_end();
}
	
else {
	roomId = asset_get_index(prevRoom);
	audio_play_sound(snd_select, 10, false);
	room_goto(roomId);
}