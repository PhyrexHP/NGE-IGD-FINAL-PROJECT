mouseOver = false
draw_sprite_ext(spr_upgradeBackground, 0, x, y, scale, scale, 0, c_white, 1)
if (device_mouse_x_to_gui(0) < (x + (sprite_get_width(spr_upgradeBackground)/2)*scale) and device_mouse_x_to_gui(0) > (x - (sprite_get_width(spr_upgradeBackground)/2)*scale)) and (device_mouse_y_to_gui(0) < (y + (sprite_get_height(spr_upgradeBackground)/2)*scale) and device_mouse_y_to_gui(0) > (y - sprite_get_height((spr_upgradeBackground)/2)*scale)){
	mouseOver = true
}
if (mouseOver){
	draw_sprite_ext(spr_upgradeOutlineHighlight, 0, x, y, scale, scale, 0, c_white, 1)
} else {
	draw_sprite_ext(spr_upgradeOutline, 0, x, y, scale, scale, 0, c_white, 1)
}