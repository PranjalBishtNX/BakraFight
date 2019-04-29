if(global.mode == "preCombat")
{
	if(!timerWaiting && timeLeft>=-1)
	{
		timeLeft--;
		timerWaiting = true;
		alarm_set(0,sec);
	}
	if(timeLeft ==-1){
		global.mode = "combat";   //START COMBAT
		with(obj_playergoat)	event_user(0) //event for settng the stats bought
		with(obj_enemygoat)		event_user(0)
	}
}
else if(global.mode == "combat")
{
	Health1 = obj_playergoat.hp
	Health2 = obj_enemygoat.hp
	
	if(Health1<=0)
		if(Health2>0)  //p2 wins
		{
			global.mode = "postCombat"
			wins2++;
		}
		else  //double KO
		{
			global.mode = "postCombat"
		}
	else if(Health2<=0)
	{
		global.mode = "postCombat"
		wins1++;
	}
		
	
	if(freezeFrame)
	{
		time = current_time;  
		while (current_time-time < 200) { } //infinite loop
		freezeFrame = false;
	}
	
}
else if(global.mode == "postCombat")
{
	if(reAllowTimer>0) reAllowTimer--;
	else restartAllowed = true;
	//do postCombatStuff
}
