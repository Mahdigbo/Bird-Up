/// @description 
#region Basic Vars
canGetHurt = true;
vspd = 0;
hspd = 0;
grv = 0.5;	//Gravity
frc = 0.2;	//horizontal friction
jumpVerForce = -10;	//vertical spd of jumping
jumpHorForce = 8;	//horizontl spd of jumping
face = 1;	//which direction the character is facing (1 : to the right / -1 : to the left)
maxVspd = 20;
#endregion
#region Functions
jump = function(_face)
{
	vspd = jumpVerForce;
	hspd = jumpHorForce * _face;
}
#region Damage and hurt
backToNormalCallback = function()
{
	canGetHurt = true;
}
hurt = function()
{
	oAdmin.life -= 1;
	if(oAdmin.life <= 0){
		room_restart();
		exit;
	}
	canGetHurt = false;
	time_source_start(tsHurtPeriod);
	jump(-face);	//throwback as a result of getting damage
}
#endregion
#endregion
#region Timers
tsHurtPeriod = time_source_create(time_source_game, 0.5, time_source_units_seconds, backToNormalCallback)
#endregion





