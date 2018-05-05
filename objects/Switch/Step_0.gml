if((place_meeting(x,y,Player) || place_meeting(x,y,Evil)) && change){
// If colliding with the floor, and this is the first collision
		change=false
		global.on=true
		instance_destroy(self)
}