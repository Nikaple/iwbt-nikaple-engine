var scriptName, kvCount;
scriptName = argument0
kvCount = argument1

if (is_string(kvCount)) {
    show_error(
        'Error found in `' +
            scriptName +
            '`: You should always declare the total number of key-value pairs in the script',
        0
    )
}

