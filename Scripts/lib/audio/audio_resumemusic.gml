///audio_resumemusic(music)
//
//  resumes the current music using global music volume
//
//      music         the music to resume
//
//
var music;
music = set_default(argument0, curMusic)

if (!global.audio_music_muted) {
    if (SS_IsSoundPaused(music)) {
        SS_SetSoundVol(music, 2000 + 80 * global.audio_music_volume)
        SS_ResumeSound(music)
    }
}

