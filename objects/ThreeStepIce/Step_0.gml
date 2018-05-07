// Checks for events with the floor

if(place_meeting(x,y,Player) && change){
	if(strength==3) {
		global.steps++;
		strength--
		change=false
		score+=100
		sprite_index=thinIceSprite3
	} else if(strength==2) {
		global.steps++;
		strength--
		change=false
		score+=100
		sprite_index=thinIceSprite2
	} else if(strength==1) {
		global.steps++;
		strength--
		change=false
		score+=100
		sprite_index=thinIceSprite
	} else if(strength==0) {
		Player.sprite_index=playerDeath
		
		if(Player.image_index == 0.5 || Player.image_index == 0 || Player.image_index == 0.57)
		audio_play_sound(snd_splash, 1, false);
		
		if(Player.image_index>Player.image_number-1){
			Player.sprite_index=playerSpriteUp
			room_goto(room)
		}
	}
}
else if(place_meeting(x,y,Evil) && change){
	if(strength==3) {
		global.steps++;
		strength--
		change=false
		score+=100
		sprite_index=thinIceSprite3
	} else if(strength==2) {
		global.steps++;
		strength--
		change=false
		score+=100
		sprite_index=thinIceSprite2
	} else if(strength==1) {
		global.steps++;
		strength--
		change=false
		score+=100
		sprite_index=thinIceSprite
	} else if(strength==0) {
		instance_destroy(Evil)
	}
}
else if(!(place_meeting(x,y,Player) || place_meeting(x,y,Player))){
	change=true
	if(sprite_index=crackedIceSprite){sprite_index=onetozero}
}

if(sprite_index==thinIceSprite){
	if(image_index>image_number-1){sprite_index=crackedIceSprite}
} else if(sprite_index==thinIceSprite2){
	if(image_index>image_number-1){sprite_index=solidIceSprite}
} else if(sprite_index==thinIceSprite3){
	if(image_index>image_number-1){sprite_index=TwoStepIceSprite}
} else if(sprite_index==onetozero){
	if(image_index>image_number-1){sprite_index=zeroStepIceTile}
}