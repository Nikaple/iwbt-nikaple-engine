music_stop(BGM_Death)
music_stop(sndDeath)

if (instance_exists(objDeathSound)) {
    if (!global.paused) {
        music_volume(objDeathSound.start_vol)
    } else {
        if (!global.audio_music_muted) {
            music_volume(global.audio_music_volume)
            music_resume(curMusic)
        }
    }
    with (objDeathSound) {
        instance_destroy()
    }
}
