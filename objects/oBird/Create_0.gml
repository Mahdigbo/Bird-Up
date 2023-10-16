/// @description 
#region Basic Vars
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
jump = function()
{
	vspd = jumpVerForce;
	hspd = jumpHorForce * face;
}
#endregion





