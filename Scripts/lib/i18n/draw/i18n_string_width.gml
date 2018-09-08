var isRaw, text;
isRaw = argument1
if (isRaw) {
    text = argument0
} else {
    text = i18n_get(argument0)
}

if (_i18n_should_use_builtin_drawing()) {
    return string_width(i18n_get(text))
} else {
    return fw_string_width(i18n_get(text))
}

