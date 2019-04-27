
//player
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);
key_attack = keyboard_check_pressed(vk_numpad0);


//move
if(state!="attack"){
	var move = key_right - key_left;

	if(move == 1)  image_xscale = scale
	else if(move == -1) image_xscale = -scale

	hmov = lerp(hmov, move * walksp,0.2);

	vmov = vmov + grv;
}

//jump
if (place_meeting(x,y+1,obj_ground)) && (key_jump) && state != "attack"
{	
	state = "jump"
	vmov = -15

}


//gravity
if (place_meeting(x,y+vmov,obj_ground))
{
		if state = "jump"
			state = "normal";
		while (!place_meeting(x,y+sign(vmov),obj_ground))
		{
			y = y + sign(vmov);
		
		}
		
		vmov = 0;
	
}

y = y + vmov;


if (key_attack && canAttack)
{
 state = "attack"
 alarm_set(0, atkTime)
 canAttack = false;
}

if(state == "attack")
{
	vmov = 0;
	if(image_xscale>0)
		hmov = bashSpeed;
	else
	hmov = -bashSpeed;
}

//player collision
if (place_meeting(x+hmov,y,obj_enemygoat))
{
		while (!place_meeting(x+sign(hmov),y,obj_enemygoat))
		{
			x = x + sign(hmov)
			
		}
		hmov = -bashSpeed + 10
	
}

x = x + hmov;

//room boundary
if (place_meeting(x+hmov,y,obj_end))
{
		while (!place_meeting(x+sign(hmov),y,obj_end))
		{
			x = x + sign(hmov)
			
		}
		hmov = 0
	
}

x = x + hmov;






