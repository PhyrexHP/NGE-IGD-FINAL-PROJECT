/// @description Insert description here
// You can write your code in this editor
if (obj_Player.gameStarted == false){
	if keyboard_check_pressed(ord("E")) {
		obj_Player.equipped = self;
		obj_GameController.cultistsSpawning = 1;
		obj_Player.gameStarted = true;
		window_set_cursor(cr_none);
		cursor_sprite = spr_cursor;
	}
}