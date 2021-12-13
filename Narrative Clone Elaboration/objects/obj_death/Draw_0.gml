/// @description Insert description here
// You can write your code in this editor
/*color = make_color_rgb(colorW, colorW, colorW);
draw_set_color(color);
draw_rectangle(0, 0, 1366, 768, false);
colorW += 1;

if currentFrame = 0{
	
	audio_play_sound(snd_backtrack, 1, false);
	
}

if currentFrame = 240{
	
	audio_play_sound(snd_loudCrunch, 2, false);
	room_goto(rm_gameStart);
}

currentFrame += 1;*/
if keyboard_check_pressed(vk_space){
	room_goto(rm_gameRoom)
}

if(currentFrame < 60){
	color = make_color_rgb(colorW, colorW, colorW);
	draw_set_color(color);
	draw_rectangle(0, 0, 1366, 768, false);
	colorW -= 255/60;
} else if(currentFrame < 120){
	draw_set_color(c_white)
	draw_set_alpha(alpha)
	draw_text(room_width/2, 100, "You died")
} else if(currentFrame < 180){
	draw_set_alpha(alpha)
	draw_text(room_width/2, 200, "Acolytes killed: " + string(global.enemies))
} else if(currentFrame < 240){
	draw_set_alpha(alpha)
	draw_text(room_width/2, 300, "Rounds Survived: " + string(global.rounds))
} else {
	instance_create_depth(room_width/2, 400, 0, obj_restartButton)
}

alpha += 1/room_speed
if(alpha == 1){
	alpha = 0
}


if(currentFrame > 119){
	draw_set_alpha(1)
	draw_text(room_width/2, 100, "You died")
}
if(currentFrame > 179){
	draw_text(room_width/2, 200, "Acolytes killed: " + string(global.enemies))
}
if(currentFrame > 239){
	draw_text(room_width/2, 300, "Rounds Survived: " + string(global.rounds))
}
currentFrame++