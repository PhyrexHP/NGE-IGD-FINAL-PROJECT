/// @description Insert description here
// You can write your code in this editor
if obj_GameController.currentWave % 3 = 0{
	minPackSize = 2 + (obj_GameController.currentWave / 3)
}

if obj_GameController.currentWave % 2 = 0{
	maxPackSize = 6 + (obj_GameController.currentWave / 2)
}

for (var i = 0; i < (irandom_range(minPackSize, maxPackSize)); i += 1){
	instance_create_depth(x+(irandom_range(-50, 50)),y+(irandom_range(-50, 50)), 1, obj_Acolyte)
}