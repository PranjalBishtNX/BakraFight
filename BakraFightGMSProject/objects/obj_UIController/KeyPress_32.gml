if(global.mode = "gameStart")
{
	global.mode = "preCombat"
	audio_play_sound(bakra_fight,1,1)
	
}

else if(global.mode = "postCombat" && restartAllowed)
{
	room_restart();
	event_user(0);
}