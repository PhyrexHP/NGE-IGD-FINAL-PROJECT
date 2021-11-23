/// @description Insert description here
// You can write your code in this editor

if obj_GameController.upgradeMenuOn = 0{

	sprite_index = spr_Revolver;

	if equipped = 1{
	
		x = (obj_Player.playerXpos);
		y = (obj_Player.playerYpos) + 10;
	
		if image_angle > 0 and image_angle < 180{
			depth = obj_Player.depth + 1;
		}
		else{
			depth = obj_Player.depth -1;
		}
	
		if mouse_x < x{
			image_yscale = -1;
		}
		else{
			image_yscale = 1;
		}
		image_angle = point_direction(x,y,mouse_x,mouse_y);
	
		if mouse_check_button_pressed(mb_left){
			audio_play_sound(snd_loudCrunch, 2, false);
			for (i = 0 ; i < projectiles; i += 1){
				bullet = instance_create_depth((x), (y-10), -100, obj_Bullet);
				with(bullet){
					xdirection = mouse_x + irandom_range(15, -15);
					ydirection = mouse_y + irandom_range(15, -15);
					direction = point_direction(x, y, xdirection, ydirection);
					image_angle = point_direction(x, y, xdirection, ydirection);
					speed = 30;
				}
			}
			camera_set_view_pos(view_camera[0], (obj_Player.cameraX + choose(-10, 10)), (obj_Player.cameraY + choose(-10, 10)));
		}
	}
}
