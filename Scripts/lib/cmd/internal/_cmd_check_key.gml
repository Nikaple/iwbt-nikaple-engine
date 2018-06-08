/// _cmd_check_key(key, scriptName)

var key, scriptName, err;
key = argument0
scriptName = argument1

if (!is_string(key)) {
    if (is_string(scriptName)) {
        err = 'Error in ' + scriptName + ': '
    } else {
        err = 'Error: '
    }
    if (!global.production_mode) {
        show_error(
            err +
                'Keys in command should be string type. Found: ' +
                string(key),
            0
        )
    }
}

