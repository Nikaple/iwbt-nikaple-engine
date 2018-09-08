var cnError, enError, jpError;
cnError = argument0
enError = argument1
jpError = argument2

if (global.language == LANG_CN) {
    show_error(cnError, 0)
} else if (global.language == LANG_EN) {
    show_error(enError, 0)
} else {
    show_error(jpError, 0)
}
