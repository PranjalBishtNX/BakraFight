playerOnLeft = sign(other.x-x);
other.playerOnLeft = sign(other.x-x);


if(state=="attack" && image_index>antFrames)  //i.e. player is charging(and not in anticipation frames)
{
	state="normal";
	x = x - playerOnLeft * bashSpeed/2;
	hmov = -playerOnLeft * bashSpeed/2;
	
	if(other.state == "attack" && other.image_index>=antFrames) //no damamge  //make sure he's not in anticipation phase of attack
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
			state="normal";
			x = x + playerOnLeft*bashSpeed;
			hmov = playerOnLeft*bashSpeed;	
			hp = hp - obj_playergoat.atkDmg; //attack damage

			state = "hurt";
			alarm_set(3,hurtTime);

			
			if (obj_playergoat.critdmg > 0)
			{
				if (random_range(0,100) <= obj_playergoat.critChance)
				{
						hp = hp - obj_playergoat.critdmg;
						
				}
			
			}

		}
		
	}
	
}
else //player is not charging
{
	if(other.state == "attack" && other.image_index>=antFrames)
	{
		state = "normal";
		x = x - playerOnLeft*bashSpeed;
		hmov = -playerOnLeft*bashSpeed;	
		
		
		
		hp = hp - obj_enemygoat.atkDmg; //attack damage

		state = "hurt";
		alarm_set(3,hurtTime);

			
			if (obj_enemygoat.critdmg > 0)
			{
				
				if (random_range(0,100) <= obj_enemygoat.critChance)
				{
						hp = hp - obj_enemygoat.critdmg;
						
				}
			
			}

		
		
		with(other){
			state = "normal";
			x = x + playerOnLeft*bashSpeed/2;
			hmov = playerOnLeft*bashSpeed/2;
		}
	}
	else {  // simple collision, no one is charging
		
		x = x - playerOnLeft * bashSpeed/2;
		hmov = -playerOnLeft * bashSpeed/2;
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