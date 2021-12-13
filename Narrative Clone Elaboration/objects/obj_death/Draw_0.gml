if keyboard_check_pressed(vk_space){
	audio_play_sound(snd_menuStart, 1, false);
	room_goto(rm_gameRoomRespawn)
}

if(currentFrame < 60){
	color = make_color_rgb(colorW, colorW, colorW);
	draw_set_color(color);
	draw_rectangle(0, 0, 1366, 768, false);
	colorW -= 255/60;
} else if(currentFrame < 120){
	draw_set_color(c_white)
	draw_set_alpha(alpha)
	draw_text(room_width/2, 125, "You died")
} else if(currentFrame < 180){
	draw_set_alpha(alpha)
	draw_text(room_width/2, 225, "Acolytes killed: " + string(global.enemies))
} else if(currentFrame < 240){
	draw_set_alpha(alpha)
	draw_text(room_width/2, 325, "Rounds Survived: " + string(global.rounds))
} else {
	instance_create_depth(room_width/2, 625, 0, obj_restartButton)
}

alpha += 1/room_speed
if(alpha == 1){
	alpha = 0
}


if(currentFrame > 119){
	draw_set_alpha(1)
	draw_text(room_width/2, 125, "You died")
}
if(currentFrame > 179){
	draw_text(room_width/2, 225, "Acolytes killed: " + string(global.enemies))
}
if(currentFrame > 239){
	draw_text(room_width/2, 325, "Rounds Survived: " + string(global.rounds))
}
currentFrame++


if(currentFrame == 60){
	instance_create_depth(0, 0, 0, obj_screenflash)
	audio_play_sound(snd_heartbeat, 1, 0)
} else if(currentFrame == 120){
	instance_create_depth(0, 0, 0, obj_screenflash)
	audio_play_sound(snd_heartbeat, 1, 0)
} else if(currentFrame == 180){
	instance_create_depth(0, 0, 0, obj_screenflash)
	audio_play_sound(snd_heartbeat, 1, 0)
} else if(currentFrame == 240){
	instance_create_depth(0, 0, 0, obj_screenflash)
	audio_play_sound(snd_heartbeat, 1, 0)
}