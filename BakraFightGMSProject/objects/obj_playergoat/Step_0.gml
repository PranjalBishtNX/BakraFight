if(global.mode=="combat")
{
	//player
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(ord("W"));
	key_attack = keyboard_check_pressed(vk_space);

	move = key_right - key_left;
	//move
	if(state!="attack"){
		
		
		if(state=="hurt") move = 0;   //can't move if hurt
		
		if(move == 1)  image_xscale = scale
		else if(move == -1) image_xscale = -scale

		hmov = lerp(hmov, move * walksp,0.2);

		vmov = vmov + grv;
	}
	
	//jump
	if (place_meeting(x,y+1,obj_ground) && (key_jump) && state != "attack" && state!="hurt")
	{	
		state = "jump"
		vmov = -jmpHt //jump height	
	}


	//gravity
	if (place_meeting(x,y+vmov,obj_ground))
	{
		jumpAtkUsed = false;
			if (state == "jump")
			{
				state = "normal";
				justLanded = 3;
			}
			while (!place_meeting(x,y+sign(vmov),obj_ground))
			{
				y = y + sign(vmov);
			}	
			vmov = 0;
	}

	y = y + vmov;

	//attack/anticipation
	if (key_attack && canAttack  && state!="hurt")
	{
	 if(state=="jump" && !jumpAtkUsed)  //able to attack once during a jump
	 {
		 jumpAtkUsed = true;
		 state = "attack"
		 image_index=0;  //when attack starts bring anim to start(for bash)
		 alarm_set(0, atkTime)
		 canAttack = false;
	 }
	 else if(state == "normal")  //attack on ground
	 {
		  jumpAtkUsed = false;
		 state = "attack"
		  image_index=0;
		 alarm_set(0, atkTime)
		 canAttack = false;
	 }
	}

	if(state == "attack")
	{
		vmov = 0;
		if(image_xscale>0){
			hmov = bashSpeed;
			vmov = bashSpeed
			}
		else{
			hmov = -bashSpeed;
			vmov = bashSpeed
			}
			
		if(image_index<antFrames)
		{
			hmov = 0;
			vmov = 0;//first few anticipation frames of bash are static
			//if(image_xscale*move<0) //opposite dir button is pressed during anticipation NOT DOING THIS
			//{
			//	state = "normal"  // allow attack cancellation
			//}	
		}
		
		else if(image_index==antFrames && atkDmg>60) // when damamge is very high do a shake at start of charge
		{
			ss = instance_create_layer(0,0,"UI",obj_screenShake);
			ss.y_multiplier = 0;
		}
		
		
	}

	
	
	
	x = x + hmov;  //TO Final NEXT X ONCE ALL CALCS ARE DONE

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/////////////////animation stuff/////////////
	if(alarm_get(3)>0) state ="hurt"
	
	if(move!=0 && state == "normal")  //run
	{
		image_speed = 1;
		sprite_index = spr_playergoat_run;
	}

	else if(move==0 && state == "normal")  //idle
	{
		image_speed = 1;
		sprite_index = spr_playergoat;
		if(justLanded>0)
		{
			justLanded--;
			sprite_index = spr_playergoat_jumpFall;
			image_index = 2;
		}
	}
	else if  (state == "attack")
	{
		sprite_index = spr_playergoat_dash;
		if(image_index>3) image_speed = 0;

	} else if (state =="jump")
	{
		sprite_index = spr_playergoat_jumpFall;
		if(vmov<0) image_index = 0;
		else image_index = 1;
	} else if (state == "hurt")
	{
		image_speed = 1;
		sprite_index = spr_playergoat_hurt;
		
	}
}


if(global.mode =="postCombat")
{
	if(hp>0)
	{
		
		image_speed = 1;
		sprite_index = spr_playergoat;
	}
	else if(state = "dead")
	{
		image_speed = 0;
		sprite_index = spr_playergoat_death;
	}
	vmov = vmov + grv;
	if (place_meeting(x,y+vmov,obj_ground))
	{
			if (state == "jump")
			{
				state = "normal";
				jumpAtkUsed = false;
				justLanded = 3;
			}
			while (!place_meeting(x,y+sign(vmov),obj_ground))
			{
				y = y + sign(vmov);
			}	
			vmov = 0;
	}
	y = y + vmov;
}




/////////////////////////////////sound/////////////////////////


