// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function view_upgrade_menu(specialUpgrade){
		
	if specialUpgrade = 1 and obj_GameController.upgrade1Created = 0{
		instance_create_depth(obj_Player.cameraX + obj_Player.cameraWidth/4, obj_Player.cameraY + obj_Player.cameraHeight/2, (obj_bush.depth - 1), obj_upgradeChain);
		obj_GameController.upgrade1Created = 1;
	}
	
	if specialUpgrade = 2 and obj_GameController.upgrade1Created = 0{
		instance_create_depth(obj_Player.cameraX + obj_Player.cameraWidth/4, obj_Player.cameraY + obj_Player.cameraHeight/2, (obj_bush.depth - 1), obj_upgradeProj);
		obj_GameController.upgrade1Created = 1;
	}
	
	if specialUpgrade = 3 and obj_GameController.upgrade1Created = 0{
		instance_create_depth(obj_Player.cameraX + obj_Player.cameraWidth/4, obj_Player.cameraY + obj_Player.cameraHeight/2, (obj_bush.depth - 1), obj_upgradeExplode);
		obj_GameController.upgrade1Created = 1;
	}
	
	if obj_GameController.upgrade2Created = 0{
		instance_create_depth(obj_Player.cameraX + (obj_Player.cameraWidth/4 * 3), obj_Player.cameraY + obj_Player.cameraHeight/2, (obj_bush.depth - 1), obj_upgradeDamage);
		obj_GameController.upgrade2Created = 1;
	}
}
