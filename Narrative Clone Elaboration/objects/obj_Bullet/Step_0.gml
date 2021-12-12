/// @description Insert description here
// You can write your code in this editor

depth = (y * -1) - 32

if sprite_index = spr_BulletBlueCollide or sprite_index = spr_BulletYellowCollide or sprite_index = spr_BulletGreenCollide or sprite_index = spr_BulletRedCollide{
	explodeTimer = explodeTimer + 1;
	if explodeTimer = 25{
		instance_destroy(id);
	}
}

lifeTimer += 1

if lifeTimer >= 200{
	instance_destroy();
}
