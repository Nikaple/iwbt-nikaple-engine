var str;
str = argument0
if (is_string(argument0)) {
    return httprequest_urlencode(argument0, true)
} else {
    return argument0
}
