// Checks for events with the floor

if(place_meeting(x,y,Player) && change){
// If colliding with the floor, and this is the first collision
	if(sturdy){
		sturdy=false
		if (cracked == 0)
			cracked=1
		change=false
		score+=100
// If sturdy, make it cracked, and don't check for another collison until you step on it again
	}
		else if (cracked == 1) {
			cracked=2
			change=false
		}
		else if (cracked == 2) {
			cracked=3
			change=false
		}
	else if(cracked==3){
		room_goto(EndScreen)
// If cracked, game over
	}
}
else if(!place_meeting(x,y,Player)){
	change=true
// When you step off the ice and the collision is done, allow it to check for collisions again
}
// Player collisions

if(sturdy){sprite_index=solidIceSprite}
else if(cracked == 1){sprite_index=Thin3Ice}
else if(cracked == 2){sprite_index=Thin2Ice}
else if(cracked == 3){sprite_index=thinIceSprite}
// Changes sprites based on condition of ice