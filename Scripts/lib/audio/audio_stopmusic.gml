///audio_stopmusic()
//
// stop the current music
//
var music;
music = set_default(argument0, curMusic)

if (SS_IsSoundPlaying(music)) {
    SS_StopSound(music)
}

if (music == curMusic) {
    curMusic = BGM_Null
}

