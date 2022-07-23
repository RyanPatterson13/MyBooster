//If there's more cards in the stack other than this one, the card is dropped if in a valid spot
if (ds_list_size(global.upcards) > 1)
{
	//Check for distance from stack (origin)
	if (point_distance(x, y, originx, originy) >= 125)
	{
		//Check if on shelf or not
		if (x < 490 and grabbed == true)
		{
			//The card is given greater depth and is dropped into the background
			depth = global.card_depth + 10
			angle = irandom(269) - 135
			increment = angle / 25
			dropped = true
			
			//Global card depth is lowered to account for the next card to be closer now
			global.card_depth = global.card_depth - 1
			
			//Find this card in the upcards list and remove it
			var spot = ds_list_find_index(global.upcards, card)
			if (spot != (-1))
			{
				ds_list_delete(global.upcards, spot);
			}
		}
	}
}

//The same procedure, but the origin doesn't apply to the final card
else
{
	if (x < 490 and grabbed == true)
	{
		depth = global.card_depth + 10
		angle = irandom(269) - 135
		increment = angle / 25
		dropped = true
		global.card_depth = global.card_depth - 1
		var spot = ds_list_find_index(global.upcards, card)
		if (spot != (-1))
		{
			ds_list_delete(global.upcards, spot);
		}
	}
}

//The card is no longer being grabbed
grabbed = false