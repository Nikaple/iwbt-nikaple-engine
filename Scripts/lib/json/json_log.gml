/// @desc Beautify JSON

/// @param json_string
/// @param [indent_size]
/// @param [newline_char]
/// @param [map_spacing]
//
// 2017/12/08 @jujuadams
// If you use this, shoot me a tweet!
//
// With thanks to yal.cc

var _json_string, _indent_size, _newline_char, _map_space;

_json_string = argument[0]
if (argument[1] != 0) {
    _indent_size = argument[1]
} else {
    _indent_size = 4
}
if (argument[2] != 0) {
    _newline_char = argument[2]
} else {
    _newline_char = chr(13) + chr(10)
}
if (argument[3] != 0) {
    _map_space = argument[3]
} else {
    _map_space = 1
}


var _in_string, _string_escape, _string_delimiter, _in_number_string, _number_string, _number_string_dot, _number_string_last_sig;
_in_string        = false
_string_escape    = false
_string_delimiter = false

_in_number_string = false
_number_string = ""
_number_string_dot = 0
_number_string_last_sig = 0

var _output, _indent, _index;
_output = ""
_indent = 0

_index = 0
repeat( string_length( _json_string ) ) {
    _index += 1
    var _char, _ord, _do_main;
    _char = string_char_at( _json_string, _index )
    _ord = ord( _char )
    _do_main = true

    if ( _in_string ) {
        
        if ( ( _ord == _string_delimiter ) && !_string_escape ) {
            _in_string = false
        } else if (( _ord == 92 ) && ( !_string_escape )) {
            _string_escape = true
        } else {
            _string_escape = false
        }
        
        _output += _char
        _do_main = false
        
    } else if ( _in_number_string ) {
        if (( _ord < 45 ) || ( _ord == 47 ) || ( _ord > 57 )) {
            _in_number_string = false
            if ( _number_string_dot >= _number_string_last_sig ) _number_string_last_sig = _number_string_dot-1
            _output += string_copy( _number_string, 1, _number_string_last_sig )
        } else {  
      _do_main = false
            _number_string += _char
            
            if ( _ord == 46 ) {
                _number_string_dot = string_length( _number_string )
                _number_string_last_sig = _number_string_dot
            } else if (( _number_string_dot == 0 ) || ( _ord != 48 )) {
        _number_string_last_sig += 1
      }
            
        }
        
    }
    
    if ( _do_main ) switch( _ord ) {
        
        case 58: // :
            if ( _map_space ) {
                _output += ":"
                repeat( _map_space ) _output += " "
            } else {
                _output += ":"
            }
        break
        
        case 34: // "
        case 39: // '
            _string_delimiter = _ord
            _in_string = true
            _output += _char
        break
        
        case 44: // ,
            _output += _char
            _output += _newline_char
            repeat( _indent ) _output += " "
        break
        
        case  91: // [
        case 123: // {
            _output += _char
            _indent += _indent_size
            _output += _newline_char
            repeat( _indent ) _output += " "
        break
        
        case  93: // ]
        case 125: // }
            _indent -= _indent_size
            _output += _newline_char
            repeat( _indent ) _output += " "
            _output += _char
        break
        
        case  9: //remove whitespace
        case 10:
        case 11:
        case 12:
        case 13:
        case 32:
          break

        case  45: // -
        case  46: // .
        case  48: // 0
        case  49: // 1
        case  50: // 2
        case  51: // 3
        case  52: // 4
        case  53: // 5
        case  54: // 6
        case  55: // 7
        case  56: // 8
        case  57: // 9
            _number_string = _char
            _in_number_string = true
            _number_string_dot = 0
            _number_string_last_sig = 1
        break
        
        default:
            _output += _char
        break
        
    }
    
}

return _output
