if(global.mode == "preCombat")
{
	if(!timerWaiting && timeLeft>=-1)
	{
		timeLeft--;
		timerWaiting = true;
		alarm_set(0,sec);
	}
	if(timeLeft <=-2){
		global.mode = "combat";   //START COMBAT
		obj_P1IconCursor.visible = false;
		obj_P2IconCursor.visible = false;
		with(obj_playergoat)	event_user(0)
			with(obj_enemygoat)	event_user(0)
	}
}
else if(global.mode == "combat")
{
	Health1 = obj_playergoat.hp
	Health2 = obj_enemygoat.hp
}
