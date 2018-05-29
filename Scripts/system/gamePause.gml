//pause the game

if (keyboard_check_pressed(ord('P'))) {
    if (instance_exists(player)) {
        pauseon = true
        pauseback = background_create_from_screen(
            0, 0,
            room_width, room_height,
            0, 0
        )
        if (isBossRoom() == true) {
            SS_PauseSound(curMusic)
        } else {
            SS_SetSoundVol(curMusic, 2000 + 60 * global.audio_music_volume)
        }
    }
}

