/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_StetsIdle, image_index, x, y);

if obj_Player.key_acquired = 0 and place_meeting(x, y, obj_Player) and keyboard_check_pressed(vk_space) or boxActive = 1 and obj_Player.key_acquired = 0{
	draw_text_box("Hey, my friend locked themself in their house and lost the key. I think I saw it somewhere to the east, could you let him out?", obj_Stets);
}
if obj_Player.key_acquired = 1 and place_meeting(x, y, obj_Player) and keyboard_check_pressed(vk_space) or boxActive = 1 and obj_Player.key_acquired = 1{
	draw_text_box("Great, you found it. Go unlock the door, they'll want to thank you.", obj_Stets);
}