/// @description Insert description here
// You can write your code in this editor
if (prevRoom == "Exit")
	game_end();
else {
	roomId = asset_get_index(prevRoom);
	room_goto(roomId);
}