// Checks for events with the floor

if(place_meeting(x,y,Player) && change){
// If colliding with the floor, and this is the first collision
	if(sturdy){
		sturdy=false
		cracked=true
		change=false
		global.steps += 1
		score+=100
// If sturdy, make it cracked, and don't check for another collison until you step on it again
	}
	else if(cracked){
		room_goto(room)
// If cracked, game over
	}
}
else if(!place_meeting(x,y,Player)){
	change=true
// When you step off the ice and the collision is done, allow it to check for collisions again
}
// Player collisions

if(sturdy){sprite_index=solidIceSprite}
else if(cracked){sprite_index=thinIceSprite}
// Changes sprites based on condition of ice