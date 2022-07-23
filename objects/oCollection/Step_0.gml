//If mouse is on button, change the image index to the darker version and play the sound
if (instance_position(mouse_x, mouse_y, self))
{
	image_index = 9
	if (sound and global.SFXOn)
	{
		audio_play_sound(SoundButton, 10, false)
	}
	sound = false
}

else
{
	image_index = 8
	sound = true
}