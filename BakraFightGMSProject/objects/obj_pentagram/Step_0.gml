if(global.mode == "gameStart" || global.mode == "preCombat")
{
	image_alpha = lerp(image_alpha, 1, lerpV)
}
else
{
	image_alpha = lerp(image_alpha, 0, lerpV)
}