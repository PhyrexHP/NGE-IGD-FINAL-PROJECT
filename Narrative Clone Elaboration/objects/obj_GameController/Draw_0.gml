/// @description Insert description here
// You can write your code in this editor

if cultistsKilled = 10 and cultistSoundPlayed = 0{
	
	cultistSoundPlayed = 1;
}

if cultistsSpawning = 1{
	cultistsSpawningTimer += 1;
	draw_text_box("Wave Start!", obj_Player);
	if cultistsSpawningTimer = 30{
		cultistsSpawningTimer = 0;
		cultistsSpawning = 2;
	}
}

if upgradeMenuOn = 1{
	if obj_weapon.explode = 0{
		view_upgrade_menu(irandom_range(1, 3));
	}
	else{
		view_upgrade_menu(irandom_range(1, 2));
	}
}

