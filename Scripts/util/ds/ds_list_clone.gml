// shallow clone a list

var list, size, i, newList;
list = argument0
size = ds_list_size(list)

newList = ds_list_create()

for (i = 0; i < size; i += 1) {
    ds_list_add(newList, ds_list_find_value(list, i))
}

return newList

