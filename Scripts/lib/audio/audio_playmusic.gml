///audio_playmusic(music)
//
//  plays the music using global music volume
//
//      music         the music to play
//
//
{
    if (!SS_IsHandleValid(argument0)) {
        exit
    }
    if (curMusic != argument0 && !global.audio_music_muted) {
        SS_StopSound(curMusic)
        curMusic = argument0
        if (!global.audio_music_muted) {
            if (!SS_IsSoundPlaying(curMusic)) {
                music_volume(global.audio_music_volume)
                SS_PlaySound(curMusic)
            }
        }
    }
}

