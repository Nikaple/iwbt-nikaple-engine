var music, volume;
music = argument0
volume = argument1

if (sound_exists(music)) {
    audio_playsound(music, volume)
} else if (SS_IsHandleValid(music)) {
    audio_playmusic(music, volume)
}

