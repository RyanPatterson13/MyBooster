//Automatically resizing the window to fit bigger screen sizes
var base_w = 800;
var base_h = 450;
var max_w = display_get_width();
var max_h = display_get_height();
var aspect = display_get_width() / display_get_height();
if (max_w < max_h)
{
    // portait
	if ((display_get_width() * 0.75) >= 1600) 
	{
	    var VIEW_WIDTH = 1600
	    var VIEW_HEIGHT = 900
	}
	else
	{
		var VIEW_WIDTH = base_w
	    var VIEW_HEIGHT = base_h
	}
}
else
{
    // landscape
	if ((display_get_height() * 0.75) >= 900) 
	{
	    var VIEW_HEIGHT = 900
		var VIEW_WIDTH = 1600
	}
	else
	{
		var VIEW_HEIGHT = base_h
		var VIEW_WIDTH = base_w
	}
}
camera_set_view_size(view_camera[0], floor(VIEW_WIDTH), floor(VIEW_HEIGHT))
view_wport[0] = VIEW_WIDTH
view_hport[0] = VIEW_HEIGHT
window_set_size(view_wport[0], view_hport[0])

