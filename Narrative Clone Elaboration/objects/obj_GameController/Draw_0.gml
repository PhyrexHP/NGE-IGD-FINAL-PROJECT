/// @description Insert description here
// You can write your code in this editor

if cultistsKilled = 10 and cultistSoundPlayed = 0{
	
	cultistSoundPlayed = 1;
}

if cultistsSpawning = 1{
	cultistsSpawningTimer += 1;
	//drawing fight sprite
	if cultistsSpawningTimer = 30{
		cultistsSpawningTimer = 0;
		cultistsSpawning = 2;
	}
}