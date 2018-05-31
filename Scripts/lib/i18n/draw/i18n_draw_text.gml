if (i18n_get_lang() == 'en' && global.use_builtin_drawing) {
    draw_text(argument0, argument1, i18n_get(argument2))
} else {
    fw_draw_text(argument0, argument1, i18n_get(argument2))
}
