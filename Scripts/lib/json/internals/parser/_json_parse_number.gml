var numStr;
numStr = ''

while (_json_is_number_char(_json_current_char())) {
    numStr += _json_current_char()
    _json_move_pointer(1)
}

return real(numStr)

