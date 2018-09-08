/// @desc Sends the command to the server as JSON
/// @param {ds_map} command map

if (!ns_is_connected()) {
    i18n_show_message('network_disconnect')
    ns_connect()
}

var dataMap, content;
dataMap = argument0

// Encode the content to JSON
content = _cmd_encode(dataMap)

// Create the content buffer
buffer_clear(global.bufId)
// Use -_$$_- as the splitter for commands, makes it more convenient for parsing
buffer_write_data(global.bufId, content + '-_$$_-')

// As commands are pretty short, compressing will actually cost
// most space. Do not compress unless the command size is larger than 100.
// buffer_zlib_compress(global.bufId)

// Send the content
socket_write_data(global.sockId, global.bufId)

// Clean up
buffer_clear(global.bufId)

