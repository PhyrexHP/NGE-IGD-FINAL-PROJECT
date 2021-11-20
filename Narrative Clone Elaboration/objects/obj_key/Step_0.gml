/// @description Insert description here
// You can write your code in this editor
if menuClosed = 1{	
	obj_GameController.cultistsSpawning = 1;
	obj_GameController.cultistsKilled = 0;
	obj_GameController.currentWave += 1;
	audio_play_sound(snd_keyPickup, 1, false);
	instance_destroy();
}