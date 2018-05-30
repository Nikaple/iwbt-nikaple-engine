/// @desc Sends the command to the server as JSON
/// @param {ds_map} command map

if (!ns_is_connected()) {
    i18n_show('network_disconnect')
    ns_connect()
}

var dataMap, content;
dataMap = argument0

// Encode the content to JSON
content = _cmd_encode(dataMap)

// Create the content buffer
clearbuffer()
writestring(content)

// Send the content
sendmessage(global.sockId, 0, 0)

// Clean up
clearbuffer()

