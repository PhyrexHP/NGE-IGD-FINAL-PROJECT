/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_Valken24);
draw_set_color(c_white);
draw_text(400, 350, "Press space to start");

if keyboard_check_pressed(vk_space){
	audio_play_sound(snd_menuStart, 1, false);
	room_goto(rm_gameRoom);
}