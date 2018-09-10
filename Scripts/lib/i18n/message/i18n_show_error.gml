var cnError, enError, jpError;
cnError = argument0
enError = argument1
jpError = argument2
abort = argument3

if (!global.enable_production_mode) {
    if (global.language == LANG_CN) {
        show_error(cnError, abort)
    } else if (global.language == LANG_EN) {
        show_error(enError, abort)
    } else {
        show_error(jpError, abort)
    }
}
