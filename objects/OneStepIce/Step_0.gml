// Checks for events with the floor

if(place_meeting(x,y,Player) && change){
	if(strength==1) {
		global.steps++;
		strength--
		change=false
		score+=100
		sprite_index=thinIceSprite
		cracked = true;
	} else if(strength==0) {
		room_goto(room)
	}
}
else if(!place_meeting(x,y,Player)){
	change=true
	if (cracked = true) {
		sprite_index=onetozero
		cracked = false;
	}
}

if(sprite_index==thinIceSprite){
	if(image_index>image_number-1){sprite_index=crackedIceSprite}
} else if(sprite_index==onetozero){
	if(image_index>image_number-1){sprite_index=zeroStepIceTile}
}