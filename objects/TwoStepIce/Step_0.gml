// Checks for events with the floor

if(place_meeting(x,y,Player) && change){
	if(strength==2) {
		global.steps++;
		strength--
		change=false
		score+=100
		sprite_index=thinIceSprite2
		cracked = true
	} else if(strength==1) {
		global.steps++;
		strength--
		change=false
		score+=100
		sprite_index=thinIceSprite
		cracked = true
	} else if(strength==0) {
		Player.sprite_index=playerDeath
		if(Player.image_index>Player.image_number-1){
			Player.sprite_index=playerSpriteUp
			room_goto(room)
		}
	}
}
else if(place_meeting(x,y,Evil) && change){
	if(strength==2) {
		global.steps++;
		strength--
		change=false
		score+=100
		sprite_index=thinIceSprite2
		cracked = true
	} else if(strength==1) {
		global.steps++;
		strength--
		change=false
		score+=100
		sprite_index=thinIceSprite
		cracked = true
	} else if(strength==0) {
		evil = instance_place(x,y,Evil)
		instance_destroy(evil)
	}
}
else if(!(place_meeting(x,y,Player) || place_meeting(x,y,Evil))){
	change=true
	if (strength == 1 && cracked) {
		sprite_index=twotoone;
		cracked=false;
	}
	else if(strength == 0 && cracked) {
		sprite_index=onetozero
		cracked=false
	}
}

if(sprite_index==thinIceSprite){
	if(image_index>image_number-1){sprite_index=crackedIceSprite}
} else if(sprite_index==thinIceSprite2){
	if(image_index>image_number-1){sprite_index=twoCrackedIceSprite}
} else if(sprite_index==onetozero){
	if(image_index>image_number-1){sprite_index=zeroStepIceTile}
} else if (sprite_index == twotoone) {
	if(image_index>image_number-1){sprite_index=solidIceSprite}
}
