if (i18n_get_lang() == 'en' && global.use_builtin_drawing) {
   draw_text_ext_transformed_color(argument0, argument1, i18n_get(argument2), argument3, argument4, argument5, argument6, argument7, argument8, argument8, argument9, argument9, argument10)
} else {
    fw_draw_set_line_spacing(argument3)
    fw_draw_text_ext_transformed_color(argument0, argument1, i18n_get(argument2), argument4, argument5, argument6, argument7, argument8, argument9, argument10)
}

