/// @param ds_map    The id of ds_map to encode

var cmd, encoded, not_destroy;
cmd = argument0
not_destroy = argument1

encoded = _cmd_encode_map(cmd, not_destroy)

return encoded

