///audio_resumemusic(music)
//
//  resumes the current music using global music volume
//
//      music         the music to resume
//
//
{
    if (!global.audio_music_muted) {
        if (SS_IsSoundPaused(curMusic)) {
            SS_SetSoundVol(curMusic, 2000 + 80 * global.audio_music_volume)
            SS_ResumeSound(curMusic)
        }
    }
}

