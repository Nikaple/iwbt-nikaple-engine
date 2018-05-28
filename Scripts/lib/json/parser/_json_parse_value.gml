if (_json_current_char() == '{') {
    return _json_parse_object()
} else if (_json_current_char() == '[') {
    return _json_parse_array()
} else if (_json_current_char() == 'n') {
    return _json_parse_null()
} else if (_json_current_char() == 't') {
    return _json_parse_true()
} else if (_json_current_char() == 'f') {
    return _json_parse_false()
} else if (_json_current_char() == '"') {
    return _json_parse_string()
} else if (_json_is_space_char(_json_current_char())) {
    _json_move_pointer(1)
    return _json_parse_value()
} else if (_json_is_number_char(_json_current_char())) {
    return _json_parse_number()
} else {
    show_message(_json_error())
}

