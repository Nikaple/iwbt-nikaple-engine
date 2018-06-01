if (i18n_get_lang() == 'en' && global.use_builtin_drawing) {
    draw_set_halign(argument0)
    draw_set_valign(argument1)
} else {
    fw_draw_set_halign(argument0)
    fw_draw_set_valign(argument1)
}
