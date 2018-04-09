// Variables created at the beginning of the game about the ice

sturdy=true
// Whether the ice has been stepped on at all
// True means it has never been stepped on
// False means that it has been stepped on once

cracked=0
// Whether the ice has been stepped on for a second time
// False means it has never been stepped on
// True means that it has been stepped on once

change=true

xpos=Player.x
ypos=Player.y
// Whether the state of the ice should change or not
// Used to prevent a single collision from registerring multiple times