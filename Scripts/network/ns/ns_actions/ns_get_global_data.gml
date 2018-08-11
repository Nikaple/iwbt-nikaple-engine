// ns_get_data(keys)
// get user data from server

var i, cmd, keys;
keys = argument0

error_arg_exceed('ns_get_data', argument[1])

cmd = cmd_init(
    'get_global_data', 2,
    'id', id - 100000,
    'keys', httprequest_urlencode(keys)
)

ns_send(cmd)
