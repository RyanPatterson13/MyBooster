//Clear the pull list and the up cards just to tidy up
ds_list_clear(global.list)
ds_list_clear(global.upcards)

//Go to the home screen
if (global.SFXOn)
{
	audio_play_sound(SoundButton, 10, false)
}
room_goto(rHome)