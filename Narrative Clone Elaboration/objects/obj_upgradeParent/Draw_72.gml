draw_sprite(spr_upgradeBackground, 0, x, y)
mouseOver = false
if (mouse_x < (x + 175) and mouse_x > (x - 175)) and (mouse_y < (y + 175) and mouse_y > (y - 175)){
	mouseOver = true
}
if (mouseOver){
	draw_sprite(spr_upgradeOutlineHighlight, 0, x, y)
} else {
	draw_sprite(spr_upgradeOutline, 0, x, y)
}