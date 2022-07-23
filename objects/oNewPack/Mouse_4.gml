if (global.SFXOn)
{
	audio_play_sound(SoundButton, 10, false)
}

// Delete any cards on screen
with (oSparkles)
{
	instance_destroy()
}

with (oCard)
{
	instance_destroy()
}

//Spawn a pack and destroy itself
instance_create_layer(100, 225, "Instances", oPack);
instance_destroy(self);

//Destroy back button until pack is finished
with (oBack)
{
	instance_destroy()
}