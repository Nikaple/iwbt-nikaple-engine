var value;
value = argument0

if (is_string(value)) {
    switch (value) {
        case CMD_TRUE:
            return 'true'
        case CMD_FALSE:
            return 'false'
        case CMD_NULL:
            return 'null'
        default:
            return '"' + value + '"'
    }
} else {
    return string(value)
}

