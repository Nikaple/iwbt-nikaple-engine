///audio_stopmusic()
//
// stop the current music
//
{
    SS_StopSound(curMusic);
    curMusic = BGM_Null;
}
