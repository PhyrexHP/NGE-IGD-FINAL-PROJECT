/// @description camera positioning and movement
// You can write your code in this editor
if obj_GameController.upgradeMenuOn = 0{

	if gameStarted {
		playerXpos = x;
		playerYpos = y;
		relMouseX = mouse_x - playerXpos
		relMouseY = mouse_y - playerYpos
		cameraX = (playerXpos - cameraWidth/2) + (relMouseX/4);
		cameraY = (playerYpos - cameraHeight/2) + (relMouseY/4);
		
		if(mouse_check_button(mb_left)){
			if(mousePressed = false || equipped.autofire = true){
				show_debug_message("firing")
				with(equipped){
					fire()
				}
			}
			mousePressed = true
		} else {
			mousePressed = false
		}
		
		camera_set_view_pos(view_camera[0], cameraX, cameraY);
	} else {
	camera_set_view_pos(view_camera[0], x - (cameraWidth/2), y - (cameraHeight/2));
	}
	
	if keyboard_check(ord("W")) or keyboard_check(ord("A")) or keyboard_check(ord("S")) or keyboard_check(ord("D")){
	}
	else if sprite_index = spr_PlayerWalkUp{
		sprite_index = spr_PlayerIdleUp;
	}
	else if sprite_index = spr_PlayerIdleUp{
	}
	else{
		sprite_index = spr_PlayerIdle;
	}

	if keyboard_check(ord("W")){
		sprite_index = spr_PlayerWalkUp;
		vspeed = -(playerSpeed);
	}

	if keyboard_check(ord("S")){
		sprite_index = spr_PlayerWalkDown
		vspeed = playerSpeed;
	}

	if keyboard_check(ord("A")){
		if keyboard_check(ord("W")) or keyboard_check(ord("S")){
		}
		else{
			sprite_index = spr_PlayerWalkHor;
			image_xscale = -1;
		}
		hspeed = -(playerSpeed);
	}

	if keyboard_check(ord("D")){
		if keyboard_check(ord("W")) or keyboard_check(ord("S")){
		}
		else{
			sprite_index = spr_PlayerWalkHor;
			image_xscale = 1;
		}
		hspeed = playerSpeed;
	}

if equipped != pointer_null {

	if keyboard_check_pressed(vk_space){
		cursor_sprite = spr_cursorWarp;
	}
	
	if keyboard_check_released(vk_space){
		x = mouse_x;
		y = mouse_y;
		cursor_sprite = spr_cursor;
	}
}
	
}

if(place_meeting(x, y + vspeed, obj_Collidable)){
	vspeed = 0
} 
if(place_meeting(x + hspeed, y, obj_Collidable)){
	hspeed = 0
}

hspeed = hspeed * 0.8;
vspeed = vspeed * 0.8;
	