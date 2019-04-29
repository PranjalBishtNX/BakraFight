///@description Combat Start

atkDmg = 10 + 10*obj_UIController.p1Stats[0];  //atk
walksp = 4 + 1.5*obj_UIController.p1Stats[1];	//
bashSpeed = 15 + 4*obj_UIController.p1Stats[1];
jmpHt = 17 + 1.66*obj_UIController.p1Stats[2];
critdmg = 10 * (obj_UIController.p1Stats[2] - minCritCards);
if (critdmg <= 0) critdmg = 0

critChance = 5*(obj_UIController.p1Stats[2] - minCritCards);
if (critChance <= 0) critChance= 0;

