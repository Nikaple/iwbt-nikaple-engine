var scriptName, kvCount, arg;
scriptName = argument0
kvCount = argument1
arg = argument2

if (!is_zero(arg) && !global.production_mode) {
    show_error(
        'Error found in `' + scriptName + '`: you have provided more key-value pairs than ' +
            string(kvCount) +
            '. ' +
            error_info(),
        0
    )
}
