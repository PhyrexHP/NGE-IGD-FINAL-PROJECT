/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_PerriIdle, image_index, x, y);

if obj_GameController.cultistsKilled < 10 and place_meeting(x, y, obj_Player) and keyboard_check_pressed(vk_space) or boxActive = 1 and obj_GameController.cultistsKilled < 10{
	draw_text_box("Thanks for freeing me. Take this gun and go take care of those cultists hopping out of the bushes.", obj_Perri);
	if obj_GameController.cultistsSpawning = 0{
		obj_GameController.cultistsSpawning = 1;
	}
}

if  obj_GameController.cultistsKilled >= 10 and place_meeting(x, y, obj_Player) and keyboard_check_pressed(vk_space) or boxActive = 1 and obj_GameController.cultistsKilled >= 10{
	draw_text_box("Thanks for taking care of those cultists, the way out of here is behind a bush to the north.", obj_Perri)
}