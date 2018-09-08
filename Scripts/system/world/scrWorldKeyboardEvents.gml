// return to a room when press backspace
if (key_check_pressed(global.backbutton)) {
    if (!debug_mode) exit
    roomTo = rHub
    if (isInGameRoom() && instance_exists(player)) {
        music_stop(SE_Death)
        global.frozen = false
        global.frozen2 = false
        scrWarpTo(roomTo)
    }
}
// Alt + Enter - switch between screen modes / chat functions
if (keyboard_check_pressed(vk_enter)) {
    if (key_check(vk_alt)) {
        if (global.enable_fullscreen) {
            if (window_get_fullscreen()) {
                window_set_fullscreen(false)
            } else {
                window_set_fullscreen(true)
            }
        }
    } else {
        if (ns_is_logged_in() && objChat.text == '' && global.enable_chat) {
            with (objChat) {
                active = !active
                showPlaceholder = true
            }
            with (objChatLog) {
                active = !active
                titleText = i18n_get('chat_room')
                tarTitleTextAlpha = 1
                tarTitleWidth = i18n_string_width(titleText, true)
                alarm[0] = 0
                alarm[1] = 0
                alarm[2] = 0
            }
            keyboard_string = ''
        }
    }
}
// Esc - quit game
if (keyboard_check_pressed(global.quitbutton)) {
    if (pauseon) {
        gameResume()
    } else if (objChat.active) {
        objChat.active = false
        objChatLog.active = false
    } else {
        if (isInGameRoom()) {
            saveDeathTime()
        }
        game_end()
    }
}
// M - toggle music
if (key_check_pressed(global.mutebutton)) {
    audio_togglemusicmuted()
}
// F2 - reset game
if (keyboard_check_pressed(global.resetbutton)) {
    if (pauseon) {
        gameResume()
    }
    music_stop(curMusic)
    music_stop(SE_Death)
    sound_stop_all()
    if (isInGameRoom()) {
        saveDeathTime()
    }
    if (global.game_mode == MODE_SINGLE_PLAYER) {
        global._online_mode = false
    } else {
        global._online_mode = true
    }
    with (player) {
        instance_destroy()
    }
    gameReset()
}
// Alt + F4 - end game
if (keyboard_check_pressed(vk_f4)) {
    if (keyboard_check(vk_alt) == true) {
        game_end()
    } else {
        //F4 - switch between screen modes
        if (global.enable_fullscreen) {
            if (window_get_fullscreen()) {
                window_set_fullscreen(false)
            } else {
                window_set_fullscreen(true)
            }
        }
    }
}
