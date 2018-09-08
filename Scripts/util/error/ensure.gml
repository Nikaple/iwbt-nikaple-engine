var name, value;
name = argument0
value = argument1

if (is_real(value) && !global.enable_production_mode) {
    if (value == 0) {
        i18n_show_error(
            '在 Object ' + 
                string(object_get_name(object_index)) +
                ' 中，参数 ' + 
                string(name) + 
                ' 为必填项。' + 
                error_info(),
            string(name) + ' is required. ' + error_info()
        )
    }
}

