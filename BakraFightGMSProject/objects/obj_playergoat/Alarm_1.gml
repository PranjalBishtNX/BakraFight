/// @description Attack Cooldown done
if(global.mode == "combat")
{
canAttack = true;
instance_create_layer(x, y-64, "UI_Feedback", FX_P1AtkOK);

}



