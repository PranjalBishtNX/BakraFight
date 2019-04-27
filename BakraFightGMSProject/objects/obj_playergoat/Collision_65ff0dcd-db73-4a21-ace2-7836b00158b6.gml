playerOnLeft = sign(other.x-x);
other.playerOnLeft = sign(other.x-x);


if(state=="attack")
{
	state="normal";
	x = x - playerOnLeft * bashSpeed/2;
	hmov = -playerOnLeft * bashSpeed/2;
	
	if(other.state == "attack") //no damamge
	{
		with(other)
		{
			state = "normal";
			x = x + playerOnLeft*bashSpeed/2;
			hmov = playerOnLeft*bashSpeed/2;
			
		}
	} else{
		with(other)
		{
			x = x + playerOnLeft*bashSpeed;
			hmov = playerOnLeft*bashSpeed;	
			hp = hp - obj_playergoat.atkDmg; //attack damage
		}
		
	}
	
}
else 
{
	if(other.state == "attack")
	{
		x = x - playerOnLeft*bashSpeed;
		hmov = -playerOnLeft*bashSpeed;	
		hp = hp - obj_enemygoat.atkDmg; //attack damage
		
		with(other){
			state = "normal";
			x = x + playerOnLeft*bashSpeed/2;
			hmov = playerOnLeft*bashSpeed/2;
		}
	}
	else {
		x = x - playerOnLeft * bashSpeed/2;
		hmov = -playerOnLeft*bashSpeed/2;
		with(other){
			x = x + playerOnLeft*bashSpeed/2;
			hmov = playerOnLeft*bashSpeed/2;
		}
	}
		
}



//if (place_meeting(x+hmov,y,obj_playergoat))
//{
//		while (!place_meeting(x+sign(hmov),y,obj_playergoat))
//		{
//			x = x + sign(hmov)
			
//		}
//		hmov = bashSpeed - 10