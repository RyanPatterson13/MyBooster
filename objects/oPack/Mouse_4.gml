//Reset global card depth for the new pack
global.card_depth = 1

//Clear the pull list and the up cards just to tidy up
ds_list_clear(global.list)
ds_list_clear(global.upcards)

//Loop 10 times, deciding a card and inserting into the pull list
var i;
for (i=0; i<9; i++)
{	
	//1 in 200 chance of stealth rare, only for cards 3, 6 and 9
	var stealth = irandom(199) + 1
	if (stealth == 200)
	{
		if (i == 2 or i == 5 or i == 8)
		{
			//Random stealth rare is chosen and inserted
			var value = irandom(11) + 103
			while (ds_list_find_index(global.list, value) != (-1))
			{	
				var value = irandom(11) + 103
			}
			ds_list_insert(global.list, i, value);
		}
		
		else
		{
			//Random common is chosen and inserted
			var value = irandom(35) + 1
			while (ds_list_find_index(global.list, value) != (-1))
			{	
				var value = irandom(35) + 1
			}
			ds_list_insert(global.list, i, value);
		}
	}
	
	else
	{
		//Random common is chosen and inserted
		var value = irandom(35) + 1
		while (ds_list_find_index(global.list, value) != (-1))
		{	
			var value = irandom(35) + 1
		}
		ds_list_insert(global.list, i, value);
	}
}

//Random number decides what type the rare card will be
var rare = irandom(199) + 1

//Uncommon
if (rare <= 150)
{
	value = irandom(35) + 37
	ds_list_insert(global.list, 9, value);
}

//Semi
else if (rare > 150 and rare <= 195)
{
	value = irandom(17) + 73
	ds_list_insert(global.list, 9, value);
}

//Full
else if (rare > 195 and rare <= 199)
{
	value = irandom(11) + 91
	ds_list_insert(global.list, 9, value);
}

//Insane
else
{
	value = irandom(5) + 115
	ds_list_insert(global.list, 9, value);
}

//All active cards are deleted
with (oCard)
{
	instance_destroy()
}

//Spawn foil
var instance = instance_create_layer(100, 225, "Instances", oFoil);

//Loop through the pull list to spawn each card
for (i=0; i<10; i++)
{
	var current = ds_list_find_value(global.list, i)
	
	//Sparkles are spawned on the final card
	if (i == 9)
	{
		var sparkles = instance_create_layer(100, 225, "Instances", oSparkles)
		with (sparkles) 
		{
			depth = global.card_depth
			//Change sparkle sprite
			if (current > 72)
			{
				sprite_index = sSemiSparkles
			}
			
			else if (current > 90)
			{
				sprite_index = sFullSparkles
			}
		}
	}
	
	//Sparkles are spawned on stealth rares
	if (current >= 103 and current <= 114)
	{
		var sparkles = instance_create_layer(100, 225, "Instances", oSparkles)
		with (sparkles) 
		{
			depth = global.card_depth
			sprite_index = sFullSparkles
		}
	}
	
	//Spawn card
	var instance = instance_create_layer(100, 225, "Instances", oCard);
	with (instance) {
		image_speed = 0
		image_index = current - 1
		depth = global.card_depth
		global.card_depth++
		instance.card = instance
	}
	
	//The sparkles are assigned the final card or stealth rares to stick to
	if ((i == 9) or (current >= 103 and current <= 114))
	{
		with (sparkles) 
		{
			card = instance
		}
	}
	
	//Add new card to upcard list
	ds_list_insert(global.upcards, i, instance);
}

//Add card pulls to the collection array
for (i=0; i<10; i++)
{
	var adder = ds_list_find_value(global.list, i);
	global.collection_array[adder]++
}

//Add 1 to packs opened
global.collection_array[0]++


//Write the new card_count_array to the .save file
var _string = json_stringify(global.collection_array)
var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1)
buffer_write( _buffer, buffer_string, _string)
buffer_save( _buffer, "collection.save")
buffer_delete( _buffer)

show_debug_message("Game Saved! " + _string)

instance_destroy(self)