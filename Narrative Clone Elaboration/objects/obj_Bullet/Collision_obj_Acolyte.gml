/// @description Insert description here
// You can write your code in this editor
if image_index = not spr_BulletYellowCollide and image_index = not spr_BulletGreenCollide and image_index = not spr_BulletRedCollide and image_index = not spr_BulletBlueCollide{
	if (other.sprite_index = spr_AcolyteIdle or other.sprite_index = spr_AcolyteDamaged or other.sprite_index = spr_AcolyteRun) and other.bulletHit = 0{
	
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
		
			if image_index = spr_RevolverBullet{
				image_index = spr_BulletGreenCollide
				speed = 0
			}
			
			if image_index = spr_ChainBullet{
				image_index = spr_BulletBlueCollide
				speed = 0
			}
			
			if image_index = spr_ExplodeBullet{
				image_index = spr_BulletRedCollide
				speed = 0
			}
			
			if image_index = spr_ExtraBullet{
				image_index = spr_BulletYellowCollide
				speed = 0
			}
		}
	}

	instance_create_depth(x, y, 1, obj_aggrohitbox)

	other.bulletHit = 1;
}