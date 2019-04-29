

with(obj_playergoat)
	if (state == "attack" && image_index==antFrames)

	{ 
		audio_play_sound(bakra_normal,10000,0)

	}
	
	//if (state = "hurt" && image_index==hurtTime)
	//{
	//audio_play_sound(bakra_hurt,100,1)
	
	//}
	
	
with(obj_enemygoat)
		if (state == "attack" && image_index==antFrames)

	{ 
		audio_play_sound(bakra_1,10000,0)

	}
	
	//if(state ="hurt")
	//{
	//audio_play_sound(bakra_hurt,100,1)
	
	//}
if (global.mode = "preCombat")
{
	if keyboard_check_pressed(vk_right)||keyboard_check_pressed(vk_left)||keyboard_check_pressed(ord("A"))|| keyboard_check_pressed(ord("D"))
	audio_play_sound(Neutral_click_1,100,false)

	if keyboard_check_pressed(vk_up)||keyboard_check_pressed(vk_down)||keyboard_check_pressed(ord("W")) || keyboard_check_pressed(ord("S"))
	audio_play_sound(neutral_click_2,100,false)
}