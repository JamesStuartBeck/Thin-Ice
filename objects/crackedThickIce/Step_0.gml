// Checks for events with the floor

if(place_meeting(x,y,Player) && change){
// If colliding with the floor, and this is the first collision
	if(strength==2){
		strength--
		change=false
		score+=100
		sprite_index=solidIceSprite
	}
	else if(strength==1){
		strength--
		change=false
		score+=100
		sprite_index=thinIceSprite
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