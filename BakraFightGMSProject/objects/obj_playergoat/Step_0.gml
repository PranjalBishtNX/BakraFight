if(global.mode=="combat")
{
	//player
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(ord("W"));
	key_attack = keyboard_check_pressed(vk_space);

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
				justLanded = 3;
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
		 image_index=0;  //when attack starts bring anim to start(for bash)
		 alarm_set(0, atkTime)
		 canAttack = false;
	 }
	 else if(state == "normal")
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
		if(image_xscale>0)
			hmov = bashSpeed;
		else
			hmov = -bashSpeed;
			
		if(image_index<antFrames) hmov = 0; //first few anticipation frames of bash are static
	}

	if (place_meeting(x,y,obj_end))
		while (!place_meeting(x+sign(x),y,obj_end))
		{
			x = x + sign(x)
		}
	x = x + hmov;


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
	}
}
