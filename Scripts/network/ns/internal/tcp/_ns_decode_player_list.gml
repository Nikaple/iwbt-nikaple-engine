var list, i;
list = ds_list_clone(argument0)

for (i = 0; i < ds_list_size(list); i += 1) {
    ds_list_replace(list, i, _ns_decode(ds_list_find_value(list, i)))
}
return list;
