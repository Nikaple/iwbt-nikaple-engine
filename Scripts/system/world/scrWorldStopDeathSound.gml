SS_StopSound(SE_Death)
sound_stop(sndDeath)
if (instance_exists(objDeathSound)) {
    if (!global.paused) {
        SS_SetSoundVol(curMusic, objDeathSound.start_vol)
        with (objDeathSound) {
            instance_destroy()
        }
    } else {
        if (!global.audio_music_muted) {
            SS_SetSoundVol(curMusic, 2000 + 80 * global.audio_music_volume)
            SS_ResumeSound(curMusic)
        }
        with (objDeathSound) {
            instance_destroy()
        }
    }
}
