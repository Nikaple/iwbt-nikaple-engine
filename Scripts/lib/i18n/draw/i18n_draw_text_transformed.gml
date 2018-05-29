if (i18n_get_lang() == 'en' && global.useBuiltInDrawing) {
    draw_text_transformed(argument0, argument1, i18n_get(argument2), argument3, argument4, argument5)
} else {
    fw_draw_text_transformed(argument0, argument1, i18n_get(argument2), argument3, argument4, argument5)
}
