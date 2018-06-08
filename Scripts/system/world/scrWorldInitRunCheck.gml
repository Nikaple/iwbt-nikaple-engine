// Check the global variables...

if (!global.enable_internationalization) {
    global.language = LANG_EN
    global.enable_builtin_drawing = true
}

if (global.enable_production_mode) {
    if (global.enable_encryption) {
        if (global.key == "huYJCGjN3rwG%du!aZc0Phw9P&9WJBYd1*CjXmXdY@tWYW83Tuv%7FHd6Be2GBTS") {
            show_error('Please change your encryption key in `setGlobals` in production mode.', 0)
        }
        if (string_length(global.key) < 40) {
            show_error('The encryption key should be 40 characters at least to increase safety.', 0)
        }
    }
    
    if (global.enable_lite_mode) {
        show_error('Lite mode are not allowed in production mode.', 0)
    }
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

