/// @description Collecting coin
oAdmin.life += 1;
if !oHeartHud.collected	//play the scaling animation of HUD heart
oHeartHud.collected = true;
instance_destroy(other);	
