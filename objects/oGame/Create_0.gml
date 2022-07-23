//At the game's start, set random seed
randomize();

//Initiate global variables and lists
global.card_depth = 1
global.upcards = ds_list_create();
global.list = ds_list_create();

//Play background music on loop
audio_play_sound(SoundMusic, 10, true)

//Check for collection save file and get its data if it exists
if (file_exists("collection.save"))
{
	var _buffer = buffer_load( "collection.save")
	var _string = buffer_read( _buffer, buffer_string)
	buffer_delete( _buffer)
	
	global.collection_array = json_parse( _string)
}

//Otherwise, create a blank collection array
else
{
	global.collection_array = array_create(0)
	var i = 0;
	repeat(121)
	{
	    global.collection_array[i] = 0
	    i += 1
	}
}

//Check for settings save file and get its data if it exists
if (file_exists("settings.save"))
{
	var _buffer = buffer_load( "settings.save")
	var _string = buffer_read( _buffer, buffer_string)
	buffer_delete( _buffer)
	
	settings_array = json_parse( _string)
	global.SFXOn = settings_array[0]
	global.MusicOn = settings_array[1]
}

//Otherwise, create the default settings variables
else
{
	global.SFXOn = true
	global.MusicOn = true
}

//Mute the music if the settings allow it
if (not(global.MusicOn))
{
	audio_sound_gain(SoundMusic, 0, 0)
}