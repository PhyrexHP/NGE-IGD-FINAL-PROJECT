/// @description Insert description here
// You can write your code in this editor

if sprite_index = spr_RevolverBulletCollide{
	explodeTimer = explodeTimer + 1;
	if explodeTimer = 25{
		instance_destroy(id);
	}
}

lifeTimer += 1

if lifeTimer >= 200{
	instance_destroy();
}
