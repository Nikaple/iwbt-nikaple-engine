/// @desc decode a json string
/// json_decode(jsonStr)

var result;

__json = argument0
__json_current = ds_map_create()
__json_current_lists = ds_list_create()
__json_current_maps = ds_list_create()
ds_map_add(__json_current, 'lists', __json_current_lists)
ds_map_add(__json_current, 'maps', __json_current_maps)

result = _json_parse_value()
ds_map_add(__json_reference, result, __json_current)

__json = ''
__json_pointer = 1

return result

