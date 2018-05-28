/// ds_list_append(id, itemCount, ...items)

// quickly append to a list

var list, i, itemCount;
list = argument0
itemCount = argument1

for (i = 0; i < itemCount; i += 1) {
    ds_list_add(list, argument[i + 2])
}

return list

