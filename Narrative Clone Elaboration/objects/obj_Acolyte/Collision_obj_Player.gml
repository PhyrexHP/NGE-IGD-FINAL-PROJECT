/// @description Insert description here
// You can write your code in this editor

if (sprite_index != spr_acolyte_dead && obj_Player.iframes == 0) {
	obj_Player.Health -= 1
	obj_Player.iframes = obj_Player.maxIFrames
	audio_play_sound(snd_ouch, 1, false)
	instance_create_depth(0,0,0,obj_screenflash)
}
if (obj_Player.Health <= 0) {
	global.enemies = obj_GameController.cultistsKilledTotal
	global.rounds = obj_GameController.currentWave
	room_goto(rm_dead)
}
