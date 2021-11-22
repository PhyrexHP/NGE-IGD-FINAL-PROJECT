/// @description Insert description here
// You can write your code in this editor
if other.sprite_index = spr_AcolyteIdle or other.sprite_index = spr_AcolyteDamaged or other.sprite_index = spr_AcolyteRun{
	
	if sprite_index = spr_RevolverBullet{
		other.healthPoints = other.healthPoints - 3;
		other.sprite_index = spr_AcolyteDamaged;
	}

	sprite_index = spr_RevolverBulletCollide;
	speed = 0;
	
}