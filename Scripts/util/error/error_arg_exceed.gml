var scriptName, arg;
scriptName = argument0
arg = argument1

if (!is_zero(arg) && !global.enable_production_mode) {
    show_error(
        'Error found in `' +
            scriptName +
            '`: you have provided more arguments than expected. ' +
            error_info(),
        0
    )
}

