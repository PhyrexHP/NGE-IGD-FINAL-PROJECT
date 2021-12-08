/// @description highlights the weapon if game has not started and player is over it 
sprite_index = spr_Revolver
if(obj_Player.gameStarted == false){
	if (place_meeting(x, y, obj_Player)){
		sprite_index = spr_RevolverHighlight
	}
}
draw_self()