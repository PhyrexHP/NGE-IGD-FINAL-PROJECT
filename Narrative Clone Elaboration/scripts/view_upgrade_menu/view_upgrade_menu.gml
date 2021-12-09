// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function view_upgrade_menu(){
	place1X = obj_Player.cameraX + obj_Player.cameraWidth/4
	place2X = obj_Player.cameraX + obj_Player.cameraWidth*3/4
	placeY = obj_Player.cameraY + obj_Player.cameraHeight/2
	placeDepth = obj_monsterSpawner.depth - 1
	upgrades = [instance_create_depth(0, 0 , placeDepth, obj_upgradeChain), instance_create_depth(0, 0, placeDepth, obj_upgradeDamage), instance_create_depth(0, 0, placeDepth, obj_upgradeProj)]
	if(!obj_Player.upgradeExplode){
		array_push(upgrades, instance_create_depth(0, 0, placeDepth, obj_upgradeExplode))
	}
	if (obj_Player.Health != obj_Player.maxHealth){
		array_push(upgrades, instance_create_depth(0, 0, placeDepth, obj_upgradeHealth))
	}
	
	picker = irandom(array_length(upgrades) - 1)
	upgrades[picker].x = place1X
	upgrades[picker].y = placeY
	array_delete(upgrades, picker, 1)
	picker = irandom(array_length(upgrades) - 1)
	upgrades[picker].x = place2X
	upgrades[picker].y = placeY
	
	array_delete(upgrades, 0, array_length(upgrades))
}
