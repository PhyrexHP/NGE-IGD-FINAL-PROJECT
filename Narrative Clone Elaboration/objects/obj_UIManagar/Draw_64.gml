//draws the weapon and the box surrounding it
draw_sprite_ext(spr_UIWeapon, 0, xOffset, yOffset, scale, scale, 0, c_white, 1)
if(obj_Player.equipped != pointer_null){
	weapon = obj_Player.equipped
	weapX = xOffset + (((sprite_get_width(spr_UIWeapon)/2) - (sprite_get_width(weapon.sprite_index)/2 - sprite_get_xoffset(weapon.sprite_index))) * scale)
	weapY = yOffset + (((sprite_get_height(spr_UIWeapon)/2) - (sprite_get_height(weapon.sprite_index)/2 - sprite_get_yoffset(weapon.sprite_index))) * scale)
	draw_sprite_ext(weapon.sprite_index, 0, weapX, weapY, scale, scale, 0, c_white, 1)

	//draws ammo bar
	ammoXOffset = xOffset + xOffset/2 + (sprite_get_width(spr_UIWeapon) * scale)
	ammoYOffset = yOffset + ((sprite_get_height(spr_UIWeapon) - (sprite_get_height(spr_UIHealth) -4)) * scale)
	draw_sprite_ext(spr_UIHealthBackground, 0, ammoXOffset, ammoYOffset, scale, scale, 0, c_white, 1)
	ammobarXOffset = ammoXOffset + (4 * scale)
	ammobarYOffset = ammoYOffset + (4 * scale)
	ammobarHeight = 20 * scale
	if(weapon.ammo != -1){
		ammobarWidth = (120 * scale) * (weapon.ammo / weapon.maxAmmo)
	} else {
		ammobarWidth = (120 * scale)
	}
	draw_sprite_stretched(spr_UIAmmoBar, 0, ammobarXOffset - 1, ammobarYOffset - 1, ammobarWidth + 2, ammobarHeight + 2)
	draw_sprite_ext(spr_UIHealth, 0, ammoXOffset, ammoYOffset, scale, scale, 0, c_white, 1)
}

//draws health bar
healthXOffset = xOffset + xOffset/2 + (sprite_get_width(spr_UIWeapon) * scale)
healthYOffset = yOffset
draw_sprite_ext(spr_UIHealthBackground, 0, healthXOffset, healthYOffset, scale, scale, 0, c_white, 1)
healthbarXOffset = healthXOffset + (4 * scale)
healthbarYOffset = healthYOffset + (4 * scale)
healthbarWidth = (120 * scale) * (obj_Player.Health / obj_Player.maxHealth)
healthbarHeight = 20 * scale
draw_sprite_stretched(spr_UIHealthBar, 0, healthbarXOffset - 1, healthbarYOffset - 1, healthbarWidth + 2, healthbarHeight + 2)
draw_sprite_ext(spr_UIHealth, 0, healthXOffset, healthYOffset, scale, scale, 0, c_white, 1)