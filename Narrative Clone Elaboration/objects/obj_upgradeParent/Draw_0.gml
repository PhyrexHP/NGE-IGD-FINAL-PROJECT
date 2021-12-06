mouseOver = false
drawX = x - sprite_get_height(spr_upgradeBackground)/2
drawY = y - sprite_get_width(spr_upgradeBackground)/2
draw_sprite(spr_upgradeBackground, 0, drawX, drawY)
if (mouse_x < (x + 175) and mouse_x > (x - 175)) and (mouse_y < (y + 175) and mouse_y > (y - 175)){
	mouseOver = true
}
if (mouseOver){
	draw_sprite(spr_upgradeOutlineHighlight, 0, drawX, drawY)
} else {
	draw_sprite(spr_upgradeOutline, 0, drawX, drawY)
}