if (_i18n_should_use_builtin_drawing()) {
    return string_width_ext(i18n_get(argument0), argument1, argument2)
} else {
    return fw_string_width_ext(i18n_get(argument0), argument1, argument2)
}

