var music;
music = set_default(argument0, curMusic)

if (sound_exists(music)) {
    sound_stop(music)
} else if (SS_IsHandleValid(music)){
    audio_stopmusic(music)
}

