// Handles player input

if (start) {
	if (global.rotation == 0) {
		directionn = "DOWN";
	} else if (global.rotation == 90) {
		directionn = "RIGHT";
	} else if (global.rotation == 180) {
		directionn = "UP";
	} else if (global.rotation == 270) {
		directionn = "LEFT";
	}
	start = false;
}

if (sprite_index != playerDeath) {
if(move[UP] && keyboard_check_pressed(vk_up)) {
	if(!place_meeting(x,y-64,IceWall) &&
	   !place_meeting(x,y-64,SwitchWall) &&
	   !place_meeting(x,y-64,IceWallCorner) &&
	   !place_meeting(x,y-64,RockWall)&&
	   !place_meeting(x,y-64,DummyIce)) {
			y-=64
			image_angle=0
			audio_play_sound(snd_move, 10, false)
	}
} else if(move[DOWN] && keyboard_check_pressed(vk_down)) {
	if(!place_meeting(x,y+64,IceWall) &&
	   !place_meeting(x,y+64,SwitchWall) &&
	   !place_meeting(x,y+64,IceWallCorner) &&
	   !place_meeting(x,y+64,RockWall)&&
	   !place_meeting(x,y+64,DummyIce)) {
			y+=64
			image_angle=180
			audio_play_sound(snd_move, 10, false)
	}
} else if(move[LEFT] && keyboard_check_pressed(vk_left)) {
	if(!place_meeting(x-64,y,IceWall) &&
	   !place_meeting(x-64,y,SwitchWall) &&
	   !place_meeting(x-64,y,IceWallCorner) &&
	   !place_meeting(x-64,y,RockWall)&&
	   !place_meeting(x-64,y,DummyIce)) {
			x-=64
			image_angle=90
			audio_play_sound(snd_move, 10, false)
	}
} else if(move[RIGHT] && keyboard_check_pressed(vk_right)) {
	if(!place_meeting(x+64,y,IceWall) &&
	   !place_meeting(x+64,y,SwitchWall) &&
	   !place_meeting(x+64,y,IceWallCorner) &&
	   !place_meeting(x+64,y,RockWall)&&
	   !place_meeting(x+64,y,DummyIce)) {
			x+=64
			image_angle=270
			audio_play_sound(snd_move, 10, false)
	}
}

}
// Moves the player
player_x = x;
player_y = y;

enter_exit(move, directionn, player_x, player_y);

if(place_meeting(x,y,Exit)) {
	room_goto_next()
}
