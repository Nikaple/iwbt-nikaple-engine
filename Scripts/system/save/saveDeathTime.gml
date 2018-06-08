// saveDeathTime()

var fname, rbuffer, wbuffer;

// read save data to buffer
fname = getSaveFile(global.savenum)
rbuffer = buffer_create()
buffer_read_from_file(rbuffer, fname)
if (global.enable_encryption) {
    buffer_rc4_crypt(rbuffer, global.key)
}

// create an empty buffer for writing, and write death & time
wbuffer = buffer_create()
buffer_write_int32(wbuffer, global.death)
buffer_write_uint64(wbuffer, global.timestep)
// copy the rest of data to the buffer
buffer_write_buffer_part(wbuffer, rbuffer, 12, buffer_get_length(rbuffer) - 12)

// write save data
if (global.enable_encryption) {
    buffer_rc4_crypt(wbuffer, global.key)
}
buffer_write_to_file(wbuffer, fname)
buffer_destroy(wbuffer)
buffer_destroy(rbuffer)
