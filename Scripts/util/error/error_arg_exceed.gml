var scriptName, arg;
scriptName = argument0
arg = argument1

if (!is_zero(arg) && !global.enable_production_mode) {
    i18n_show_error(
        '在脚本 ' + 
            scriptName + 
            '中，你所提供的参数过多。' +
            error_info(),
        'Error found in `' +
            scriptName +
            '`: you have provided more arguments than expected. ' +
            error_info()
    )
}

