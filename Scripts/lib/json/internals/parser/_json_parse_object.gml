var result, key, value;

result = ds_map_create()
_json_map_store(result)

_json_move_pointer(1)

while (_json_current_char() != '}') {
    _json_skip_space()
    key = _json_parse_string()
    _json_skip_space()

    _json_move_pointer(1)

    _json_skip_space()
    value = _json_parse_value()
    _json_skip_space()

    ds_map_add(result, key, value)
    if (_json_current_char() == ',') {
        _json_move_pointer(1)
    }
}

_json_move_pointer(1)
return result

