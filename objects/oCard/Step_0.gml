//Click and drag object
if (mouse_check_button(mb_left) && grabbed == true)
{
	//Screen edge limits
	if (mouse_x - errorx < 62)
	{
	    x = 62
	}
	else if (mouse_x - errorx > 737)
	{
		x = 737
	}
	else
	{
		x = mouse_x - errorx;
	}
	
	if (mouse_y - errory < 87)
	{
	    y = 87
	}
	else if (mouse_y - errory > 362)
	{
		y = 362
	}
	else
	{
		y = mouse_y - errory;
	}
}

//Animations for dropping at pos or neg angles
if (dropped and angle >= 0)
{
	if (dropped and image_angle < angle)
	{
		image_angle = image_angle + increment
	}
}

else if (dropped)
{
	if (dropped and image_angle > angle)
	{
		image_angle = image_angle + increment
	}
}

//Scaling down when dropped
if  (dropped and image_xscale > 0.5)
{
	image_xscale = image_xscale - 0.02
	image_yscale = image_yscale - 0.02
}