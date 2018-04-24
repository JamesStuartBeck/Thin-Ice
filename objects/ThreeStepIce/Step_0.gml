// Checks for events with the floor

if(place_meeting(x,y,Player) && change){
	if(strength==3) {
		strength--
		change=false
		score+=100
		sprite_index=threeIceSprite
		global.steps++;
		cracked = true;
	} else if(strength==2) {
		strength--
		change=false
		score+=100
		sprite_index=twothinIceSprite
		global.steps++;
		cracked = true;
	} else if(strength==1) {
		strength--
		change=false
		score+=100
		sprite_index=thinIceSprite
		global.steps++;
		cracked = true;
	} else if(strength==0) {
		room_goto(room)
	}
}
else if(!place_meeting(x,y,Player)){
	change=true
	if (strength == 2 && cracked) {
		sprite_index=threetotwo;
		cracked = false;
	} else if (strength == 1 && cracked) {
		sprite_index=twotoone;
		cracked = false;
	} else if (strength == 0 && cracked) {
		sprite_index=onetozero;
		cracked = false;
	}
}

if(sprite_index==threeIceSprite){
	if(image_index>image_number-1){sprite_index=threeCrackedIceSprite}
} else if(sprite_index==twothinIceSprite){
	if(image_index>image_number-1){sprite_index=twoCrackedIceSprite}
} else if(sprite_index==thinIceSprite){
	if(image_index>image_number-1){sprite_index=crackedIceSprite}
} else if(sprite_index==onetozero){
	if(image_index>image_number-1){sprite_index=zeroStepIceTile}
} else if(sprite_index==threetotwo){
	if(image_index>image_number-1){sprite_index=TwoStepIceSprite}
} else if(sprite_index==twotoone){
	if(image_index>image_number-1){sprite_index=solidIceSprite}
}