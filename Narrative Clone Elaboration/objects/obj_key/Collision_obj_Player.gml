/// @description Insert description here
// You can write your code in this editor
if keyboard_check_released(ord("E")) and obj_GameController.upgradeMenuOn = 0{
	obj_GameController.upgradeMenuOn = 1;
	audio_play_sound(snd_keyPickup, 1, false);
}