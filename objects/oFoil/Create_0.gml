//Initiate variables
errorx = 0
errory = 0
dropped = false
grabbed = false

//Play opening sound when spawned
if (global.SFXOn)
{
	audio_play_sound(SoundWrapper, 10, false)
}