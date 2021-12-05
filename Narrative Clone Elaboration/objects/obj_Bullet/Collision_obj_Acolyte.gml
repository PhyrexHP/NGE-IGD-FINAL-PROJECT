/// @description Insert description here
// You can write your code in this editor
if (other.sprite_index = spr_AcolyteIdle or other.sprite_index = spr_AcolyteDamaged or other.sprite_index = spr_AcolyteRun) and other.bulletHit = 0{
	
	if sprite_index = spr_RevolverBullet{
		other.healthPoints = other.healthPoints - obj_Player.equipped.damage;
		other.sprite_index = spr_AcolyteDamaged;
	}

	if chainsLeft > 0{
		image_angle = point_direction(x, y, obj_Acolyte.x, obj_Acolyte.y);
		direction = point_direction(x, y, obj_Acolyte.x, obj_Acolyte.y);
	}

	if chainsLeft = 0{
	sprite_index = spr_RevolverBulletCollide;
	speed = 0;
	}
}

instance_create_depth(x, y, 1, obj_aggrohitbox)

other.bulletHit = 1;