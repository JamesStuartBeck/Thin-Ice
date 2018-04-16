// Checks for events with the floor

if(place_meeting(x,y,Player) && change){
	global.steps--
	change=false
}
else if(!place_meeting(x,y,Player)){
	change=true
// When you step off the ice and the collision is done, allow it to check for collisions again
}
// Player collisions