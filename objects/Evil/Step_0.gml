// Handles player input
if(keyboard_check_pressed(vk_down)){
	if(!place_meeting(x,y-64,IceWall)&&
	   !place_meeting(x,y-64,SwitchWall)&&
	   !place_meeting(x,y-64,RockWall)&&
	   !place_meeting(x,y-64,IceWallCorner)){
			y-=64
			image_angle=180
			global.steps++
	}}
else if(keyboard_check_pressed(vk_up)){
	if(!place_meeting(x,y+64,IceWall)&&
	   !place_meeting(x,y+64,SwitchWall)&&
	   !place_meeting(x,y+64,RockWall)&&
	   !place_meeting(x,y+64,IceWallCorner)){
			y+=64
			image_angle=0
			global.steps++
	}}
else if(keyboard_check_pressed(vk_right)){
	if(!place_meeting(x-64,y,IceWall)&&
	   !place_meeting(x-64,y,SwitchWall)&&
	   !place_meeting(x-64,y,RockWall)&&
	   !place_meeting(x-64,y,IceWallCorner)){
			x-=64
			image_angle=270
			global.steps++
	}}
else if(keyboard_check_pressed(vk_left)){
	if(!place_meeting(x+64,y,IceWall)&&
	   !place_meeting(x+64,y,SwitchWall)&&
	   !place_meeting(x+64,y,RockWall)&&
	   !place_meeting(x+64,y,IceWallCorner)){
			x+=64
			image_angle=90
			global.steps++
	}}
// Moves the player