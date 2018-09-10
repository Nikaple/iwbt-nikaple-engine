var scriptName, itemCount;
scriptName = argument0
itemCount = argument1

if (is_string(itemCount)) {
    i18n_show_error(
        '在脚本 ' + 
            scriptName + 
            '中，你需要声明使用到元素的总数。',
        'Error found in `' +
            scriptName +
            '`: You should always declare the total number of items in the script'
    )
}

