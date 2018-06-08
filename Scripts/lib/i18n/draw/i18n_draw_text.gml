if (i18n_should_use_builtin_drawing()) {
    draw_text(argument0, argument1, i18n_get(argument2))
} else {
    fw_draw_text(argument0, argument1, i18n_get(argument2))
}
