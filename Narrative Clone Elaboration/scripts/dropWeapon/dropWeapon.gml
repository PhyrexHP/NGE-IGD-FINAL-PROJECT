// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dropWeapon(){
	rand = irandom(0)
	if (rand == 0) {
		rand = random(1)
		if (rand <= 0.5){
			instance_create_depth(x, y, 0, obj_shotgun)
		} else {
			instance_create_depth(x, y, 0, obj_machineGun)
		}
	}
}