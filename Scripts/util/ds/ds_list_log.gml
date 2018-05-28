// log a list

var str, list, size, i;
str = '['
list = argument0

size = ds_list_size(list)

for (i = 0; i < size; i += 1) {
    str += string(ds_list_find_value(list, i))
    if (i != size - 1) {
        str += ','
    }
}

return str + ']'

