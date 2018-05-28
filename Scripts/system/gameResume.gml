{
    while (1) {
        if (
            keyboard_check_pressed(ord('P')) ||
            keyboard_check_pressed(vk_escape) ||
            keyboard_check_pressed(vk_enter)
        ) {
            pauseon = false
            background_delete(pauseback)
            if (getBossRoom() == true) {
                audio_resumemusic(curMusic)
            } else {
                SS_SetSoundVol(curMusic, 2000 + 80 * global.audio_music_volume)
            }
            if (fps != 0 && !global.clear) {
                global.timestep += 2
            }
            break
        }
        sleep(10)
    }
    //anti-cheat initialize
    date_time_previous = date_current_time()
    date_time = date_current_time()
}

