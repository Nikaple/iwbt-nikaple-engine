if (i18n_get_lang() == 'en' && global.useBuiltInDrawing) {
    draw_text(argument0, argument1, i18n_get(argument2))
} else {
    fw_draw_text(argument0, argument1, i18n_get(argument2))
}
