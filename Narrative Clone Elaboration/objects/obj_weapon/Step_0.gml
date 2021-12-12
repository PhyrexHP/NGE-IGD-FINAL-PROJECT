if obj_GameController.upgradeMenuOn = 0{
	
	if(obj_Player.equipped != pointer_null){
		if (obj_Player.equipped.id == self.id) {
	
			x = (obj_Player.playerXpos);
			y = (obj_Player.playerYpos)+10;
	
			if image_angle > 45 and image_angle < 145{
				depth = obj_Player.depth + 1;
			}
			else{
				depth = obj_Player.depth -1;
			}
	
			if mouse_x < x{
				image_yscale = -1;
			}
			else{
				image_yscale = 1;
			}
			image_angle = point_direction(x,y,mouse_x,mouse_y);
		
			if(bulletTimer > 0){
				bulletTimer -= 1
			}
		}
	}
}

function fire(){
	if(bulletTimer <= 0){
		shots = projectiles
		audio_play_sound(snd_loudCrunch, 2, false);
		shots = projectiles + obj_Player.upgradeExtraBullets
		for (i = 0 ; i < shots; i += 1){
			bullet = instance_create_depth((x), (y-10), -100, obj_Bullet);
			bullet.spread = spread;
			with(bullet){
				xdirection = mouse_x + irandom_range(spread, -spread);
				ydirection = mouse_y + irandom_range(spread, -spread);
				direction = point_direction(x, y, xdirection, ydirection);
				image_angle = point_direction(x, y, xdirection, ydirection);
				speed = irandom_range(25,35);
			}
		}
		bulletTimer = room_speed/bulletsPerSecond
			
		if(ammo != -1){
			ammo -= 1
		}
		
		if obj_Player.equipped.name == "revolver" {
			global.shake = true
			global.shake_power = 2
			alarm[0] = 15
		}
		else if obj_Player.equipped.name == "machine gun" {
			global.shake = true
			global.shake_power = 4
			alarm[0] = 15
		}
		else if obj_Player.equipped.name == "shotgun" {
			global.shake = true
			global.shake_power = 8
			alarm[0] = 15
		}
		
		if(ammo == 0){
			global.gunswitch = true
			newRevolver = instance_create_depth(x, y, 0, obj_Revolver)
			obj_Player.equipped = newRevolver
			instance_destroy()
		}	
	}
}
if global.gunswitch = true {
	global.gunswitch_timer--
	if global.gunswitch_timer = 0 {
		global.shake = false
		global.gunswitch_timer = 15
		global.gunswitch = false
	}
}
	
	
		