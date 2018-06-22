// Partial JSON
// 1. Escaping not implemented
// 2. Unicode characters not implemented
// 3. Make sure your json is valid, because error handling is not implemented

globalvar __json; // current json
globalvar __json_pointer; // json pointer
globalvar __json_reference; // store json list/map reference(id)
globalvar __json_current; // store current json reference
globalvar __json_current_lists; // store current json lists reference
globalvar __json_current_maps; // store current json maps reference

__json_pointer = 1
__json_reference = ds_map_create()

