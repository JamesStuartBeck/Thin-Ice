// Draws the sprite

draw_self()
// Draws sprite
if (global.steps < global.tiles) {
	image_blend = c_red;
} else {
	image_blend = c_white;
}