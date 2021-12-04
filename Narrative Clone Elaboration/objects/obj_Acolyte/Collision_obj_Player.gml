/// @description Insert description here
// You can write your code in this editor
if (sprite_index != spr_AcolyteDead && obj_Player.iframes == 0) {
	obj_Player.Health -= 1
	obj_Player.iframes = obj_Player.maxIFrames
}
if (obj_Player.Health <= 0) {
	room_goto(rm_dead)
}