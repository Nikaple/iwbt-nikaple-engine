var result;

_json_move_pointer(1)

result = ''
while (_json_current_char() != '"') {
    result += _json_current_char()
    _json_move_pointer(1)
}

_json_move_pointer(1)

return result

