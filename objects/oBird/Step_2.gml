/// @description 
#region Vars
dt = global.DT;	//delta time
jumpKey = keyboard_check_released(vk_up);
onGround = place_meeting(x, y+1, oWall);	//are we on the ground?
#endregion

//Jump
if jumpKey
jump(face);

//Horizontal Movement
if hspd != 0
{
	hspd = approach(hspd, 0, frc*dt)	
}

//Vertical Movement
if !onGround
vspd = approach(vspd, maxVspd, grv*dt);

//prevent getting stuck in the edges
if vspd < 0	///moving upwards
{
	if place_meeting(x, y-1, oWall)	//there is a wall above player's head
	vspd = 0;
}

//Handle Horizontal Collision
if place_meeting(x+hspd*dt, y, oWall) && hspd != 0
{
	while !place_meeting(x+sign(hspd), y, oWall)
	{
		x += sign(hspd);	
	}
	hspd = 0;
	//reverse the direction
	face *= -1;
	event_user(0);	///set the sprite's new facing
}

///Handle vertical collision
if place_meeting(x, y+vspd*dt, oWall)
{
	while !place_meeting(x, y+sign(vspd), oWall)
	{
		y += sign(vspd);	
	}
	vspd = 0;
}


//Actual Movement
x += hspd * dt;
y += vspd * dt;

