/// @description Insert description here
// You can write your code in this editor
if obj_Player.y > y{
	depth = obj_Player.depth +1;
}
else{
	depth = obj_Player.depth -1;
}

if obj_GameController.cultistsSpawning = 2 and obj_GameController.cultistsKilled < 10{
	if spawnTimer % (ceil(1000 / obj_GameController.currentWave)) = 0 or spawnTimer = 0{
	instance_create_depth(x, y, (depth - 1), obj_Acolyte);
	}
	spawnTimer += 1;
}
else if obj_GameController.cultistsSpawning = 2 and obj_GameController.cultistsKilled > 10{
	obj_GameController.cultistsSpawning = 0;
	instance_create_depth(obj_Player.x, obj_Player.y, (obj_Player.depth + 1), obj_key);
}