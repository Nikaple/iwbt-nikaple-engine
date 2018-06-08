// handle tcp packets in objClient step event

var size, response, command

// receive tcp messages (commands)
buffer_clear(global.bufId)
socket_update_read(global.sockId)

while (
    socket_read_message_delimiter(global.sockId, global.bufId, CMD_DELIMITER)
) {
    // As commands are pretty short, compressing will actually cost
    // most space. Do not compress unless the command size is larger than 100.
    // buffer_zlib_uncompress(global.bufId)
    
    size = buffer_get_length(global.bufId)
    response = buffer_read_data(global.bufId, size)
    command = json_decode(response)

    if (global.__debug_verbose_mode) {
        debug('_ns_recv response: ' + json_log(response))
    }

    _ns_resolve(command)
    buffer_clear(global.bufId)
}

socket_update_write(global.sockId)

