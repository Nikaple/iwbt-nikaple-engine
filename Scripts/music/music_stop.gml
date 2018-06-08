var music;
music = argument0

if (sound_exists(music)) {
    sound_stop(music)
} else if (SS_IsHandleValid(music)){
    audio_stopmusic(music)
}

