if(global.mode == "combat")
{
//player
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);
key_attack = keyboard_check_pressed(vk_numpad0);

	move=0
	//move
	if(state!="attack"){
		move = key_right - key_left;

		if(move == 1)  image_xscale = scale
		else if(move == -1) image_xscale = -scale

		hmov = lerp(hmov, move * walksp,0.2);

		vmov = vmov + grv;
	}
	//jump
	if (place_meeting(x,y+1,obj_ground) && (key_jump) && state != "attack")
	{	
		state = "jump"
		vmov = -jmpHt //jump height
	

	}


	//gravity
	if (place_meeting(x,y+vmov,obj_ground))
	{
			if (state == "jump")
			{
				state = "normal";
				jumpAtkUsed = false;
			}
			while (!place_meeting(x,y+sign(vmov),obj_ground))
			{
				y = y + sign(vmov);
		
			}
		
			vmov = 0;
	
	}

	y = y + vmov;


	if (key_attack && canAttack)
	{
	 if(state=="jump" && !jumpAtkUsed)
	 {
		 jumpAtkUsed = true;
		 state = "attack"
		 alarm_set(0, atkTime)
		 canAttack = false;
	 }
	 else if(state == "normal")
	 {
		  jumpAtkUsed = false;
		 state = "attack"
		 alarm_set(0, atkTime)
		 canAttack = false;
	 }
	}

	if(state == "attack")
	{
		vmov = 0;
		if(image_xscale>0)
			hmov = bashSpeed;
		else
		hmov = -bashSpeed;
	}

	if (place_meeting(x,y,obj_end))
		while (!place_meeting(x+sign(x),y,obj_end))
		{
			x = x + sign(x)
		}
	x = x + hmov;

	////room boundary
	//if (place_meeting(x+hmov,y,obj_end))
	//{
	//		while (!place_meeting(x+sign(hmov),y,obj_end))
	//		{
	//			x = x + sign(hmov)
			
	//		}
	//		hmov = 0
	
	//}
	///////////////////////////animation stuff///////////////////////


	//if(move!=0 && state == "normal")  // && state!= "jump" && state!="attack")  this isn't needed  - if state is normal it can't be jump or attack, so extra checks are useless
	//{
	//	sprite_index = spr_playergoat_run;
	//}

	//if(move==0 && state == "normal")
	//{
	//	sprite_index = spr_playergoat;
	//}
	//if  (state == "attack")
	//{
	//	sprite_index = spr_playergoat_dash;

	//}
	//obj_UIController.Health1 = hp

}
