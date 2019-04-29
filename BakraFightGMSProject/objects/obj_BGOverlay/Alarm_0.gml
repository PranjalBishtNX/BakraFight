if(increasing)
{
	if(count >= steps)
	{
		increasing = false;
		count = steps;
	}
	else count++;
}
else
{
	if(count <= 0)
	{
		increasing = true;
		count = 0;
	}
	else count--;
}

image_alpha = count*alphaUp;
alarm_set(0, duration);