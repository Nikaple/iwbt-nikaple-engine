/// ds_list_init(itemCount, ...items)

// quickly append to a list

var list, i, itemCount;
list = ds_list_create()
itemCount = argument0

for (i = 0; i < itemCount; i += 1) {
    ds_list_add(list, argument[i + 1])
}

return list

