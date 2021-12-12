/// @description Insert description here
// You can write your code in this editor
if obj_GameController.cultistsSpawning = 2 and packSpawned = 0{
	
	if spawning = 1{
		instance_create_depth(x, y, (depth - 1), obj_packspawner);
		packSpawned = 1
	}
	else{
		packSpawned = 1
	}
}
else if obj_GameController.cultistsSpawning = 2 and obj_GameController.cultistsKilled > 10{
	obj_GameController.cultistsSpawning = 0;
	instance_create_depth(obj_Player.x, obj_Player.y, (obj_Player.depth + 1), obj_key);
}

if obj_GameController.cultistsSpawning = 1{
	packSpawned = 0
}

spawning = 1