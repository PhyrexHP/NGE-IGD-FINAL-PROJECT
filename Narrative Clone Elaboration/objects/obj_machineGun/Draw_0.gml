sprite_index = spr_machineGun
if(obj_Player.equipped != self){
	if (place_meeting(x, y, obj_Player)){
		sprite_index = spr_machineGunHighlight
	}
}
draw_self()