// Checks for events with the floor

if(place_meeting(x,y,Player) && change){
// If colliding with the floor, and this is the first collision
	if(strength==1){
		strength--
		change=false
		score+=100
		sprite_index=thinIceSprite
// If sturdy, make it cracked, and don't check for another collison until you step on it again
	}
	else if(strength==0){
		room_goto(EndScreen)
// If cracked, game over
	}
}
else if(!place_meeting(x,y,Player)){
	change=true
// When you step off the ice and the collision is done, allow it to check for collisions again
}
// Player collisions

if(sprite_index==thinIceSprite){
	if(image_index>image_number-1){sprite_index=crackedIceSprite}
}