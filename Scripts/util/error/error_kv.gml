var scriptName, kvCount;
scriptName = argument0
kvCount = argument1

if (is_string(kvCount) && !global.enable_production_mode) {
    i18n_show_error(
        '在脚本 ' + 
            scriptName + 
            '中，你需要声明使用到键值对的总数。' +
            error_info(),
        'Error found in `' +
            scriptName +
            '`: You should always declare the total number of key-value pairs in the script.'
    )
}

