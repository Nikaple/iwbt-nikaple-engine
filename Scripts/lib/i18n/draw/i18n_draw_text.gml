var isRaw, text;
isRaw = argument3
if (isRaw) {
    text = argument2
} else {
    text = i18n_get(argument2)
}

if (_i18n_should_use_builtin_drawing()) {
    draw_text(argument0, argument1, text)
} else {
    fw_draw_text(argument0, argument1, text)
}
