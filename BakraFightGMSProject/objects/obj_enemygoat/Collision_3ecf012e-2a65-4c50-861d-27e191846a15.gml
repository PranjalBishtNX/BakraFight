if(state=="attack")
with(other)
	if (!isHit)
	{

		hp = hp - obj_enemygoat.atkDmg;
		isHit = true;
		alarm_set(2, 20);
		
		if(hp <= 0)
		instance_destroy();
	
	}
