sprite_index = spr_shotgun
if(obj_Player.equipped != self){
	if (place_meeting(x, y, obj_Player)){
		sprite_index = spr_shotgunHighlight
	}
}
draw_self()