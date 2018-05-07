roomName = "Stage";
audio_play_sound(snd_select, 10, false);

if (room == easy_levels)
	roomName += "0_";
else if (room == medium_levels)
	roomName += "1_";
else if (room == hard_levels)
	roomName += "2_";
else if (room == expert_levels)
	roomName += "3_";
roomName += title;
show_debug_message(roomName);
roomId = asset_get_index(roomName);
room_goto(roomId);
