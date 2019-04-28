if(global.mode == "preCombat")
{
	if(!timerWaiting && timeLeft>=0)
	{
		timeLeft--;
		timerWaiting = true;
		alarm_set(0,60);
	}
}
else if(global.mode == "combat")
{
	Health1 = obj_playergoat.hp
	Health2 = obj_enemygoat.hp
}
