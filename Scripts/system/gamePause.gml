//pause the game

if (isBossRoom() && !global.enable_pause_in_boss_room) {
    exit;
}

if (keyboard_check_pressed(ord('P'))) {
    if (instance_exists(player)) {
        pauseon = true
        pauseback = background_create_from_screen(
            0, 0,
            room_width, room_height,
            0, 0
        )
        if (isBossRoom() == true) {
            music_pause(curMusic)
        } else {
            SS_SetSoundVol(curMusic, 2000 + 60 * global.audio_music_volume)
        }
    }
}

