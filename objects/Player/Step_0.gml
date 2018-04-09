// Handles player input

if(keyboard_check_pressed(vk_up)){if(!place_meeting(x,y-64,IceWall) && !place_meeting(x,y-64,closedExit)){
	y-=64
	image_angle=0
	}}
else if(keyboard_check_pressed(vk_down)){if(!place_meeting(x,y+64,IceWall) && !place_meeting(x,y+64,closedExit)){
	y+=64
	image_angle=180
	}}
else if(keyboard_check_pressed(vk_left)){if(!place_meeting(x-64,y,IceWall) && !place_meeting(x-64,y,closedExit)){
	x-=64
	image_angle=90
	}}
else if(keyboard_check_pressed(vk_right)){if(!place_meeting(x+64,y,IceWall) && !place_meeting(x+64,y,closedExit)){
	x+=64
	image_angle=270
	}}
// Moves the player

if(place_meeting(x,y,Exit)) {
	//global.steps = 0;
	room_goto_next()
	}
// Go to next level if you reach the exit
/*if (global.steps >= global.maxSteps) {
	if(place_meeting(x,y,closedExit)){room_goto_next()}
}*/ 