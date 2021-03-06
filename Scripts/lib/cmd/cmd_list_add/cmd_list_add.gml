/// cmd_list_add(listId, itemCount, ...items)

/// @desc append items to a list
/// @param {DSMap} list         Current list
/// @param {Number} itemCount   How many items to append to the list ?
/// @param {Any} items          items

var list, itemCount, size, key, origSize, i;
list = argument0
itemCount = argument1

error_item('cmd_list_add', itemCount)

// find current size
key = ds_map_find_first(list)
origSize = ds_map_size(list)
size = origSize
for (i = 0; i < origSize; i += 1) {
    if (string_copy(key, 1, 2) == CMD_PREFIX) {
        size -= 1
    }
}

for (i = 0; i < itemCount; i += 1) {
    ds_map_add(list, string(max(0, i + size - 1)), _ns_encode(argument[i + 2]))
}

return list

