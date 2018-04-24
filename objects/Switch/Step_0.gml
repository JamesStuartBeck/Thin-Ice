if(place_meeting(x,y,Player) && change){
// If colliding with the floor, and this is the first collision
		change=false
		on=true
		//sprite_index=thinIceSprite
}
// Player collision

if(sprite_index==thinIceSprite){
	if(image_index>image_number-1){sprite_index=crackedIceSprite}	
}