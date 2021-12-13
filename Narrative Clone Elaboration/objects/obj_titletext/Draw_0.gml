/// @description draws initial text to screen and starts game


if keyboard_check_pressed(vk_space){
	audio_play_sound(snd_menuStart, 1, false);
	room_goto(rm_gameRoom);
}