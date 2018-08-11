while (1) {
    if (
        keyboard_check_pressed(global.pausebutton) ||
        keyboard_check_pressed(vk_escape) ||
        keyboard_check_pressed(vk_enter)
    ) {
        pauseon = false
        background_delete(pauseback)
        if (isBossRoom()) {
            music_resume(curMusic)
        } else {
            music_volume(global.audio_music_volume)
        }
        if (fps != 0 && !global.clear) {
            global.timestep += 2
        }
        break
    }
    sleep(10)
}

