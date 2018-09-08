// Check the global variables...

if (!global.enable_internationalization) {
    global.language = LANG_EN
    global.enable_builtin_drawing = true
}

if (global.enable_production_mode) {
    if (global.enable_encryption) {
        if (global.key == "huYJCGjN3rwG%du!aZc0Phw9P&9WJBYd1*CjXmXdY@tWYW83Tuv%7FHd6Be2GBTS") {
            i18n_show_error(
                '你的加密密钥与引擎完全一致！这会带来潜在的风险，请在 `setGlobals` 中修改 `global.key` 的值。',
                "Your encryption key is the same as engine's! Please change it in `setGlobals`."
            )
        }
        if (string_length(global.key) < 40) {
            i18n_show_error(
                '为了存档安全，引擎的加密密钥必须要大于 40 个字符。',
                'The encryption key should be 40 characters at least to increase safety.'
            )
        }
    }
    
    global.enable_lite_mode = false
}

if (global.game_mode = MODE_SINGLE_PLAYER) {
    global._online_mode = false
    global.enable_chat = false
} else {
    global._online_mode = true
}

if (sprite_exists(0)) {
    error_ind_zero('sprite', sprite_get_name(0))
}
if (sound_exists(0)) {
    error_ind_zero('sound', sound_get_name(0))
}
if (path_exists(0)) {
    error_ind_zero('path', path_get_name(0))
}
if (object_exists(0)) {
    error_ind_zero('object', object_get_name(0))
}
if (room_exists(0)) {
    error_ind_zero('room', room_get_name(0))
}

