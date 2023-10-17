/// @description 
collected = false;
scale = 1;
collect = function()
{
	static acPos = 0;
	static channel = animcurve_get_channel(acCoinHudCollected, "Scale");
	if acPos < 0.95
	{
		acPos += 0.05 * dt;
		scale = animcurve_channel_evaluate(channel, acPos);
	}
	else
	{
		acPos = 0;
		scale = 1;
		collected = false;
	}
}







