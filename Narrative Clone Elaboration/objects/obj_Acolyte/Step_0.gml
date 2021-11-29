/// @description Insert description here
// You can write your code in this editor
if healthPoints <= 0{
	if (irandom_range(0, 10) < 5 && sprite_index != spr_AcolyteDead){
		instance_create_depth(x, y, 0, obj_machineGun)
	}
	
	if obj_weapon.explode = 0{
		sprite_index = spr_AcolyteDead;
		alive = 0;
		speed = 0;
		if pointAdded = 0{
			obj_GameController.cultistsKilled += 1;
			pointAdded = 1;
		}
	}
	
	if obj_weapon.explode = 1{
		instance_create_depth(x, y, (depth+1), obj_explosion);
		if pointAdded = 0{
			obj_GameController.cultistsKilled += 1;
			pointAdded = 1;
		}
		instance_destroy();
	}
}

if sprite_index = spr_AcolyteDamaged{
	damageTimer = damageTimer + 1;
	if damageTimer % 10 = 0{
		sprite_index = spr_AcolyteRun;
	}
}

if aggro = 0 and alive = 1{
	if idleTimer % 120 = 0{
		if movementTimer % 60 = 0{
			direction = random_range(1, 360);
			speed = 3;
			sprite_index = spr_AcolyteRun;
		}
		movementTimer += 1;
		if movementTimer % 59 = 0{
			idleTimer += 1;
			movementTimer += 1;
			speed = 0;
			sprite_index = spr_AcolyteIdle;
		}
	}
	else{
		idleTimer += 1;
	}
}

if aggro = 1 and alive = 1{
	speed = 3
	direction = point_direction(x, y, obj_Player.x, obj_Player.y);
	if growlPlayed = 0{
		audio_play_sound(snd_cultistGrowl, 1, false);
		growlPlayed = 1;
	}
	
	if obj_Player.x < x{
		image_xscale = -1
	}
	else{
		image_xscale = 1
	}
}

if sprite_index = spr_AcolyteDamaged or obj_GameController.cultistsKilled >= 10{
	aggro = 1;
}

if obj_GameController.cultistsSpawning = 1{
	instance_destroy();
}

bulletHit = 0;