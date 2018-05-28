///audio_togglesoundmuted()
//
//  toggle music on/off
{
    global.audio_music_muted = !global.audio_music_muted
    //stop the music
    if (global.audio_music_muted) {
        SS_StopSound(curMusic)
        curMusic = BGM_Null
        global.paused = 0
    } else {
        //play music instantly
        musicFunctions()
    }
    audio_update()
}

