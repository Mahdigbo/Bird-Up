#region General things
///mobile device-related
os_powersave_enable(false);
device_mouse_dbclick_enable(false);

//Delta Timeing
global.DT = 1;
global.FPS = 60;	//target FPS
#endregion
#region Functions
function approach(start, target, increment)
{
	if start < target
	return min(start + increment, target);
	return max(start - increment, target)
	
}

function setText(_color, _hAlign, _vAlign)
{
	draw_set_color(_color);
	draw_set_halign(_hAlign);
	draw_set_valign(_vAlign);
}
#endregion