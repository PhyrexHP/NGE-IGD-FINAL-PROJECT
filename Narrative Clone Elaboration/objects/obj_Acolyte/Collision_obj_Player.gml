/// @description Insert description here
// You can write your code in this editor
if (sprite_index != spr_AcolyteDead) {
	obj_Player.Health -= 1
}
if (obj_Player.Health <= 0) {
	room_goto(rm_dead)
}