//Play click noise
if (global.SFXOn)
{
	audio_play_sound(SoundButton, 10, false)
}

//Change global setting
if (global.MusicOn) {
	global.MusicOn = false
	image_index = 0
}

else {
	global.MusicOn = true
	image_index = 1
}

//Write the new settings to the .save file
settings_array = array_create(0)
settings_array[0] = global.SFXOn
settings_array[1] = global.MusicOn

var _string = json_stringify(settings_array)
var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1)
buffer_write( _buffer, buffer_string, _string)
buffer_save( _buffer, "settings.save")
buffer_delete( _buffer)

show_debug_message("Settings Saved! " + _string)