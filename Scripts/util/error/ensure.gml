var name, value;
name = argument0
value = argument1

if (is_real(value) && !global.production_mode) {
    if (value == 0) {
        show_error(string(name) + ' is required. ' + error_info(), 0)
    }
}

