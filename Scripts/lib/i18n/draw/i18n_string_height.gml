if (_i18n_should_use_builtin_drawing()) {
    return string_height(i18n_get(argument0))
} else {
    return fw_string_height(i18n_get(argument0))
}

