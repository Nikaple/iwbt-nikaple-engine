// append the length at the beginning of buffer

var buf, len, from;
from = argument0
buf = argument1
buffer_set_pos(buf, 0)
buffer_set_pos(global.tmpBuf, 0)
len = buffer_get_length(buf)

buffer_clear(global.tmpBuf)
buffer_write_uint16(global.tmpBuf, len + 2)
buffer_write_buffer(global.tmpBuf, buf)

udpsocket_send(from, global.tmpBuf)

