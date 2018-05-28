// ds_list_remove(list, item)

var list, item, size, i, pos;
list = argument0
item = argument1
size = ds_list_size(list)
pos = -1

for (i = 0; i < size; i += 1) {
    if (item == ds_list_find_value(list, i)) {
        pos = i
        break
    }
}

if (pos != -1) {
    ds_list_delete(list, pos)
}

