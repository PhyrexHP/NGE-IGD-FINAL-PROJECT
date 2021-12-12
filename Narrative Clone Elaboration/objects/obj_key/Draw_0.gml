/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_key
if (place_meeting(x, y, obj_Player)){
	sprite_index = spr_keyHighlight
}
draw_self()