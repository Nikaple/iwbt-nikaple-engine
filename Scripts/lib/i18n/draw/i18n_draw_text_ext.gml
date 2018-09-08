// i18n_draw_text_ext(...args, useRaw)

if (_i18n_should_use_builtin_drawing()) {
    draw_text_ext(argument0, argument1, i18n_get(argument2), argument3, argument4)
} else {
    fw_draw_set_line_spacing(argument3)
    if (argument5) {
        fw_draw_text_ext(argument0, argument1, argument2, argument4)
    } else {
        fw_draw_text_ext(argument0, argument1, i18n_get(argument2), argument4)
    }
}
