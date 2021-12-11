if(!obj_GameController.upgradeMenuOn){
	
	//draws the weapon and the box surrounding it
	draw_sprite_ext(spr_UIWeapon, 0, xOffset, yOffset, scale, scale, 0, c_white, 1)
	if(obj_Player.equipped != pointer_null){
		weapon = obj_Player.equipped
		switch(weapon.name){
			case "shotgun":
				weapX = xOffset + ((sprite_get_xoffset(weapon.sprite_index)*scale/2) + (sprite_get_height(spr_UIWeapon)*scale/2) - (sprite_get_width(weapon.sprite_index)*scale/2));
				break;
			case "machine gun":
				weapX = xOffset + ((sprite_get_xoffset(weapon.sprite_index)*scale/2) + (sprite_get_height(spr_UIWeapon)*scale/2) - (sprite_get_width(weapon.sprite_index)*scale/2) + 3);
				break;
			case "revolver":
				weapX = xOffset + ((sprite_get_xoffset(weapon.sprite_index)*scale) + (sprite_get_height(spr_UIWeapon)*scale/2) - (sprite_get_width(weapon.sprite_index)*scale/2) - 3);
				break;
		}
		weapY = yOffset + ((sprite_get_yoffset(weapon.sprite_index)*scale) + (sprite_get_height(spr_UIWeapon)*scale/2) - (sprite_get_height(weapon.sprite_index)*scale/2))
		draw_sprite_ext(weapon.sprite_index, 0, weapX, weapY, scale * 2, scale * 2, 0, c_white, 1)

		//draws ammo bar
		ammoXOffset = xOffset + xOffset/2 + (sprite_get_width(spr_UIWeapon) * scale)
		ammoYOffset = yOffset + ((sprite_get_height(spr_UIWeapon) - sprite_get_height(spr_UIHealth)) * scale)
		draw_sprite_ext(spr_UIHealthBackground, 0, ammoXOffset, ammoYOffset, scale, scale, 0, c_white, 1)
		
		ammobarXOffset = ammoXOffset + (8 * scale)
		ammobarYOffset = ammoYOffset + (8 * scale)
		ammobarHeight = 40 * scale
		if(weapon.ammo != -1){
			ammobarWidth = (240 * scale) * (weapon.ammo / weapon.maxAmmo)
		} else {
			ammobarWidth = (240 * scale)
		}
		draw_sprite_stretched(spr_UIAmmoBar, 0, ammobarXOffset - 1, ammobarYOffset - 1, ammobarWidth + 2, ammobarHeight + 2)
		
		draw_sprite_ext(spr_UIHealth, 0, ammoXOffset, ammoYOffset, scale, scale, 0, c_white, 1)
	}

	//draws health bar
	healthXOffset = xOffset + xOffset/2 + (sprite_get_width(spr_UIWeapon) * scale)
	healthYOffset = yOffset
	draw_sprite_ext(spr_UIHealthBackground, 0, healthXOffset, healthYOffset, scale, scale, 0, c_white, 1)
	
	healthbarXOffset = healthXOffset + (8 * scale)
	healthbarYOffset = healthYOffset + (8 * scale)
	healthbarWidth = (240 * scale) * (obj_Player.Health / obj_Player.maxHealth)
	healthbarHeight = 40 * scale
	draw_sprite_stretched(spr_UIHealthBar, 0, healthbarXOffset - 1, healthbarYOffset - 1, healthbarWidth + 2, healthbarHeight + 2)
	
	draw_sprite_ext(spr_UIHealth, 0, healthXOffset, healthYOffset, scale, scale, 0, c_white, 1)
}