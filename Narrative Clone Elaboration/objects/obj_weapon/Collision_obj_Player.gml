/// @description changes player secondWeapon to this weapon
if(obj_Player.equipped != self){
	if keyboard_check_pressed(ord("E")){
		if(obj_Player.equipped != pointer_null){
			instance_destroy(obj_Player.equipped)
		}
		obj_Player.equipped = self
	}
}