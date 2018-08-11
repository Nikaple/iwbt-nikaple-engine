var scriptName, itemCount;
scriptName = argument0
itemCount = argument1

if (is_string(itemCount) && !global.enable_production_mode) {
    show_error(
        'Error found in `' +
            scriptName +
            '`: You should always declare the total number of items in the script',
        0
    )
}

