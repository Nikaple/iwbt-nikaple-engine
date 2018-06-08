///audio_loopmusic(music)
//
//  loops the music using global music volume
//
//      music         the music to loop
//
//

if (!SS_IsHandleValid(argument0)) {
    exit
}
if (curMusic != argument0 && !global.audio_music_muted) {
    SS_StopSound(curMusic)
    curMusic = argument0
    if (!global.audio_music_muted) {
        if (!SS_IsSoundPlaying(curMusic)) {
            SS_SetSoundVol(curMusic, 2000 + 80 * global.audio_music_volume)
            SS_LoopSound(curMusic)
        }
    }
}

