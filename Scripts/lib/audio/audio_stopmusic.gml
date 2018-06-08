///audio_stopmusic()
//
// stop the current music
//
var music;
music = set_default(argument0, curMusic)

SS_StopSound(music)
if (music == curMusic) {
    curMusic = BGM_Null
}

