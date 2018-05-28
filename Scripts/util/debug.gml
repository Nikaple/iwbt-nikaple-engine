// debug any string, number except 0 and '0'
// for zeros, use something as debug("blabla: " + string(str_to_log))

var str, len, newStr, i;
str = ''
i = 0

while (string(argument[i]) != '0') {
    str = str + string(argument[i]) + ' '
    i += 1
}

objDebug.str += object_get_name(object_index) + ': ' + str + '#'

while (string_length(objDebug.str) > 3000) {
    objDebug.str = string_delete(objDebug.str, 1, 1)
}

