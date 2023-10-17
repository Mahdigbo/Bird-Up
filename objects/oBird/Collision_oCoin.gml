/// @description Collecting coin
oAdmin.coins += 1;
if !oCoinHud.collected	//play the scaling animation of HUD coin
oCoinHud.collected = true;
instance_destroy(other);	
