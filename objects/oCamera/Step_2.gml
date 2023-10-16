/// @description 
//Follow the bird
dt = global.DT
if instance_exists(oBird)
{
	y = lerp(y, oBird.y, 0.1*dt);	
}
camera_set_view_pos(view_camera[0], x-WIDTH/2, y-HEIGHT/2 + yOffset)






