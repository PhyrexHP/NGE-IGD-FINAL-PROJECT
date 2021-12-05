//draws the weapon and the box surrounding it
draw_sprite_ext(spr_UIWeapon, 0, xOffset, yOffset, scale, scale, 0, c_white, 1)
if(obj_Player.equipped != pointer_null){
	weapon = obj_Player.equipped
	weapX = xOffset + (((sprite_get_width(spr_UIWeapon)/2) - (sprite_get_width(weapon.sprite_index)/2 - sprite_get_xoffset(weapon.sprite_index))) * scale)
	weapY = yOffset + (((sprite_get_height(spr_UIWeapon)/2) - (sprite_get_height(weapon.sprite_index)/2 - sprite_get_yoffset(weapon.sprite_index))) * scale)
	draw_sprite_ext(weapon.sprite_index, 0, weapX, weapY, scale, scale, 0, c_white, 1)
}
