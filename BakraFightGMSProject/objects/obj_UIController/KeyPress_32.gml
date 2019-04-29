if(global.mode = "gameStart")
{
	global.mode = "preCombat"
	
}

else if(global.mode = "postCombat" && restartAllowed)
{
	room_restart();
	event_user(0);
}