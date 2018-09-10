var scriptName, kvCount, arg;
scriptName = argument0
kvCount = argument1
arg = argument2

if (!is_zero(arg)) {
    i18n_show_error(
        '在脚本  ' + 
            scriptName + 
            '中，你提供了比你声明总数: ' +
            kvCount +
            ' 更多的键值对。' +
            error_info(),
        'Error found in `' + scriptName + '`: you have provided more key-value pairs than ' +
            string(kvCount) +
            '. ' +
            error_info()
    )
}
