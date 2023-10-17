/// @description 
#region Basic Vars
life = 3;
coin = 0;
canGetHurt = true;
vspd = 0;
hspd = 0;
grv = 0.5;	//Gravity
frc = 0.2;	//horizontal friction
jumpVerForce = -10;	//vertical spd of jumping
jumpHorForce = 8;	//horizontl spd of jumping
hurtVerForce = -1;	//vertical spd of hurting
hurtHorForce = 1;	//horizontl spd of hurting
face = 1;	//which direction the character is facing (1 : to the right / -1 : to the left)
maxVspd = 20;
#endregion
#region Functions
jump = function()
{
	vspd = jumpVerForce;
	hspd = jumpHorForce * face;
}
hurtPossibler = function()
{
	canGetHurt = true;
}
hurt = function()
{
	life-= 1;
	if(life <= 0){
		room_restart()	
	}
	canGetHurt = false;
	call_later(30, time_source_units_frames, hurtPossibler);
	vspd = jumpVerForce;
	hspd = -jumpHorForce * face;
}

#endregion





