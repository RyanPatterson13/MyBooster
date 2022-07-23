//Make sure no other cards are grabbed
with (oCard) {
	grabbed = false
}

//Create a list of all cards under the mouse
pile = ds_list_create()
instance_position_list(mouse_x, mouse_y, oCard, pile, false)

//If there are cards in the pile, top is the first instance in the list
if (ds_list_size(pile)>0) var top = ds_list_find_value(pile, 0)

var i
//Loop through the list, changing top to be the instance with the lowest depth
for (i=0; i<ds_list_size(pile); i++) 
{
	var current = ds_list_find_value(pile, i)
	if (current.depth < top.depth and current.dropped == false) top = current
}

//The error variables keep the mouse's position on the object contant while dragging
errorx = mouse_x - x;
errory = mouse_y - y;

//If top exists and is grabbable, with no foil in the way, the top card is grabbed
if (instance_exists(top) and top.dropped == false and not(instance_position(mouse_x, mouse_y, oFoil)))
{
	top.grabbed = true	
}
