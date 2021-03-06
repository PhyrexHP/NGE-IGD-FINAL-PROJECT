/// @description Acolyte step event
if healthPoints <= 0{
	if (sprite_index != spr_acolyte_dead){
		dropWeapon()
		
		if (obj_Player.upgradeExplode = true && obj_Player.equipped.name = "shotgun"){
			instance_create_depth(x, y, (depth+1), obj_explosion);
			if pointAdded = 0{
				obj_GameController.cultistsKilled += 1;
				pointAdded = 1;
				obj_GameController.cultistsKilledTotal += 1;
			}
			
		instance_destroy();
		
		} 
		
		else {
			sprite_index = spr_acolyte_dead;
			alive = 0;
			speed = 0;
			if pointAdded = 0{
				obj_GameController.cultistsKilled += 1;
				pointAdded = 1;
				obj_GameController.cultistsKilledTotal += 1;
			}
		}
	}
}

if sprite_index = spr_acolyte_damaged{
	damageTimer = damageTimer + 1;
	if damageTimer % 10 = 0{
		sprite_index = spr_acolyte_walking;
	}
}

if aggro = 0 and alive = 1{
	if idleTimer % 120 = 0{
		if movementTimer % 60 = 0{
			direction = random_range(1, 360);
			speed = 2;
			sprite_index = spr_acolyte_walking;
		}
		movementTimer += 1;
		if movementTimer % 59 = 0{
			idleTimer += 1;
			movementTimer += 1;
			speed = 0;
			sprite_index = spr_acolyte_idle;
		}
	}
	else{
		idleTimer += 1;
	}
}

if aggro = 1 and alive = 1{
	speed = 2
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

if sprite_index = spr_acolyte_damaged or obj_GameController.cultistsKilled >= 10{
	aggro = 1;
}

if obj_GameController.cultistsSpawning = 1{
	instance_destroy();
}


if(place_meeting(x, y + vspeed, obj_Collidable)){
	vspeed = 0
} 
if(place_meeting(x + hspeed, y, obj_Collidable)){
	hspeed = 0
}

bulletHit = 0;