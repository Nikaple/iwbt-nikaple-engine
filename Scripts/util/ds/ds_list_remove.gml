// ds_list_remove(list, item)

var list, item, size, i;
list = argument0
item = argument1
size = ds_list_size(list)

for (i = 0; i < size; i += 1) {
    if (item == ds_list_find_value(list, i)) {
        ds_list_delete(list, i)
        return 0;
    }
}


