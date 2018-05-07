if(place_meeting(x,y,Player) && change){
// If colliding with the floor, and this is the first collision
		change=false
		global.on=true
		audio_play_sound(snd_switch,10,false)
		instance_destroy(self)
}