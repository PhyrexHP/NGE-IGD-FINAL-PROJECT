/// @description Insert description here
// You can write your code in this editor
if sprite_index = spr_BulletYellowCollide or sprite_index = spr_BulletGreenCollide or sprite_index = spr_BulletRedCollide or sprite_index = spr_BulletBlueCollide{
}
else {
	if (other.sprite_index = spr_acolyte_idle or other.sprite_index = spr_AcolyteDamaged or other.sprite_index = spr_acolyte_walking) and other.bulletHit = 0{
	
		if sprite_index = spr_RevolverBullet || sprite_index = spr_ExplodeBullet || sprite_index = spr_ChainBullet || sprite_index = spr_ExtraBullet {
			other.healthPoints = other.healthPoints - (obj_Player.equipped.damage + obj_Player.upgradeDamageUp);
			other.sprite_index = spr_AcolyteDamaged;
		}

		if chainsLeft > 0 && obj_Player.equipped.name = "machine gun"{
			nearestAcolyte = instance_nearest(x, y, obj_Acolyte)
			image_angle = point_direction(x, y, nearestAcolyte.x, nearestAcolyte.y);
			direction = point_direction(x, y, nearestAcolyte.x, nearestAcolyte.y);
			chainsLeft -= 1
		}

		if chainsLeft = 0{
		
			if sprite_index = spr_RevolverBullet{
				sprite_index = spr_BulletGreenCollide
			}
			
			if sprite_index = spr_ChainBullet{
				sprite_index = spr_BulletBlueCollide
			}
			
			if sprite_index = spr_ExplodeBullet{
				sprite_index = spr_BulletRedCollide
			}
			
			if sprite_index = spr_ExtraBullet{
				sprite_index = spr_BulletYellowCollide
			}
			
			speed = 0
			
		}
	}

	instance_create_depth(x, y, 1, obj_aggrohitbox)

	other.bulletHit = 1;
}