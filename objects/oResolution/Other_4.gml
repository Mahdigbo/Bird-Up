/// @description camera and UI init
///offset from top:
var topMargin = (HEIGHT - DESIGN_HEIGHT)/2;

//create the view
set_camera(0, -topMargin, WIDTH, HEIGHT); 
set_gui_size(WIDTH); 

#macro DW display_get_gui_width()
#macro DH display_get_gui_height()

if os_type == os_windows or os_type == os_linux or os_type == os_macosx 
then window_center(); //this will center the window