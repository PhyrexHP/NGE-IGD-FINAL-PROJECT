/// @description Insert description here
// You can write your code in this editor
if(obj_Player.equipped != pointer_null){
	chainsLeft = obj_Player.upgradeChains
} else {
	chainsLeft = 0
}

if obj_Player.upgradeExplode = true && obj_Player.equipped.name == "shotgun"  {
	
	sprite_index = spr_ExplodeBullet
	
}

if obj_Player.upgradeExtraBullets > 0 && obj_Player.equipped.name == "revolver" {
	
	sprite_index = spr_ExtraBullet
	
}

if obj_Player.upgradeChains > 0 && obj_Player.equipped.name == "machine gun" {
	
	sprite_index = spr_ChainBullet
	
}