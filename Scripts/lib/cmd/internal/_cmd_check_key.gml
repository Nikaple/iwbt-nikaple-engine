/// _cmd_check_key(key, scriptName)

var key, scriptName, err;
key = argument0
scriptName = argument1

if (!is_string(key)) {
    if (global.language == LANG_CN) {
        i18n_show_error(
            '在脚本 ' + 
                scriptName + 
                ' 中，' +
                '键名必须为字符串. 当前值为: ' +
                string(key),
            'Error in ' + 
                scriptName + 
                ': ' +
                'Keys in command should be string type. Found: ' +
                string(key)
        )
    }
}

