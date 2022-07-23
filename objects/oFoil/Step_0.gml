//Allow object to follow the mouse
if (mouse_check_button(mb_left) && grabbed == true)
{
    x = mouse_x - errorx;
    y = mouse_y - errory;
}

//If dropped, the object fades into background and is destroyed
if (dropped)
{
	image_alpha -= 0.05
	image_xscale = image_xscale - 0.01
	image_yscale = image_yscale - 0.01
    if image_alpha < 0 instance_destroy()
}