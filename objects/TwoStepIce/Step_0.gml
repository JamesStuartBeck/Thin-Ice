// Checks for events with the floor

if(place_meeting(x,y,Player) && change){
	if(strength==2) {
		strength--
		change=false
		score+=100
		sprite_index=solidIceSprite
		global.steps++;
	} else if(strength==1) {
		strength--
		change=false
		score+=100
		sprite_index=thinIceSprite
		global.steps++;
	} else if(strength==0) {
		room_goto(room)
	}
}
else if(!place_meeting(x,y,Player)){
	change=true
}

/*if (sprite_index==thirdCrackedSprite) {
	if(image_index>image_number-1){sprite_index=thirdCrackSprite}
} else if(sprite_index==firstHalfCrackedSprite){
	if(image_index>image_number-1){sprite_index=halfCrackedSprite}
} else if(sprite_index==secondHalfCrackedSprite){
	if(image_index>image_number-1){sprite_index=crackedIceSprite}
}*/

if(sprite_index==thinIceSprite){
	if(image_index>image_number-1){sprite_index=crackedIceSprite}
}