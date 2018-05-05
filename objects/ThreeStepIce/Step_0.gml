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
		room_goto(room)
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
		evil = instance_place(x,y,Evil)
		instance_destroy(evil)
	}
}
else if(!(place_meeting(x,y,Player) || place_meeting(x,y,Evil))){
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