/// @description Insert description here
// You can write your code in this editor
color = make_color_rgb(colorW, colorW, colorW);
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

currentFrame += 1;