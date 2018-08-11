///audio_playmusic(music)
//
//  plays the music using global music volume
//
//      music         the music to play
//
//
var music, volume;
music = argument0
volume = clamp(set_default(argument1, 1), 0, 1)

if (!SS_IsHandleValid(argument0)) {
    exit
}
if (curMusic != music && !global.audio_music_muted) {
    SS_StopSound(curMusic)
    curMusic = music
    if (!global.audio_music_muted) {
        if (!SS_IsSoundPlaying(curMusic)) {
            music_volume(global.audio_music_volume * power(volume, 0.3))
            SS_PlaySound(curMusic)
        }
    }
}


