/// @desc gets a specific value in json

// json_get(ds_map, keyCount, ...keys)
// @example
// json = json_decode('
//   {
//     "foo": {
//       "bar": ["baz", "qux"]
//     }
//   }')

// json_get(json, 3, "foo", "bar", 0) // baz

var json, keyCount, current, i, result;
json = argument0
keyCount = argument1
result = json

for (i = 0; i < keyCount; i += 1) {
    current = argument[i + 2]
    if (is_string(current)) {
        result = ds_map_find_value(result, current)
    } else {
        result = ds_list_find_value(result, current)
    }
}

return result

