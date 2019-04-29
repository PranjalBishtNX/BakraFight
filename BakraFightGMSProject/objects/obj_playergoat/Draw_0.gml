draw_self();

if(state == "attack")
{
	if(image_index==antFrames && atkDmg>50) // when damamge is very high do a flash
	{
		shader_set(sh_Flash);
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_red, 1);
		shader_reset();
	}
}

if(state == "hurt" && alarm_get(3) >= hurtTime-1) //right after getting hurt, flash white
{
	shader_set(sh_Flash);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
	shader_reset();

}