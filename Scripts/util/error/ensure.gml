var name, value;
name = argument0
value = argument1

if (is_real(value)) {
    if (value == 0) {
        show_error(string(name) + ' is required.' + error_info(), 0)
    }
}

