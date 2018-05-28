// ds_list_replace_item(list, item, newItem)

var list, item, size, i, pos, newItem;
list = argument0
item = argument1
newItem = argument2
size = ds_list_size(list)
pos = -1

for (i = 0; i < size; i += 1) {
    if (string(item) == string(ds_list_find_value(list, i))) {
        pos = i
        break
    }
}

if (pos != -1) {
    ds_list_replace(list, pos, newItem)
}

