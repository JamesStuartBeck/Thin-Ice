// Variables created at the beginning of the game about the ice

strength = init_strength;

if (strength == 3) {
	sprite_index=solidIceSprite
} else if (strength == 2) {
	sprite_index=thirdCrackedSprite
} else if (strength == 1) {
	sprite_index=firstHalfCrackedSprite
} else if (strength = 0){
	sprite_index=secondHalfCrackedSprite
}

change=true
// Whether the state of the ice should change or not
// Used to prevent a single collision from registerring multiple times

virgin = true;