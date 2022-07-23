//Play music if settings allow it
if (global.MusicOn)
{
	audio_sound_gain(SoundMusic, 1, 0)
}

else {
	audio_sound_gain(SoundMusic, 0, 0)
}

//Create the back and new pack buttons if all cards are down
if (ds_list_empty(global.upcards) and not(instance_exists(oNewPack)) && not(instance_exists(oFoil)) && room == rDesk)
{
	instance_create_layer(672, 384, "Instances", oNewPack)
	instance_create_layer(32, 384, "Instances", oBack)
}

//When there's new cards in the upcards list, delete the back and new card buttons
if (instance_exists(oNewPack) and (instance_exists(oPack) or not(ds_list_empty(global.upcards))))
{
	instance_destroy(oNewPack)	
	instance_destroy(oBack)	
}

/*Create the back button for the settings screen
if (room == rSettings and not(instance_exists(oBack)))
{
	instance_create_layer(64, 380, "Instances", oBack)
}

/*Create the back button for the collection screen
if (room == rCollection1 and not(instance_exists(oBack)))
{
	instance_create_layer(64, 380, "Instances", oBack)
}
*/