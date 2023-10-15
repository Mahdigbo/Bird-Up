/// @description Resolution Set-up

//display macros
#macro WIDTH global.ideal_width
#macro HEIGHT global.ideal_height
#macro DESIGN_WIDTH 540
#macro DESIGN_HEIGHT 960

set_resolution(DESIGN_WIDTH, false, true, true, 0.75);

alarm[0] = 1; // we will change room on the next step, just to be sure that everything will initialized correctly


