var music;
music = argument0

if (sound_exists(music)) {
    audio_playsound(music)
} else if (SS_IsHandleValid(music)) {
    audio_playmusic(music)
}

