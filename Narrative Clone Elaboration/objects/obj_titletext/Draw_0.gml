/// @description draws initial text to screen and starts game
draw_set_font(fnt_Valken24);
draw_set_color(c_white);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_text(room_width/2, room_height/2, "Press space to start");

if keyboard_check_pressed(vk_space){
	audio_play_sound(snd_menuStart, 1, false);
	room_goto(rm_gameRoom);
}