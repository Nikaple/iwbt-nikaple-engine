var result;

_json_move_pointer(1)

result = ds_list_create()
_json_list_store(result)

while (_json_current_char() != ']') {
    ds_list_add(result, _json_parse_value())
    if (_json_current_char() == ',') {
        _json_move_pointer(1)
    }
}

_json_move_pointer(1)

return result

