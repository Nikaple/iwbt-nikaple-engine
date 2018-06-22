// saveGame(x, y)

var buffer, i, saveX, saveY, xs, spd, grav, maxJumps, shootInterval;

if (!instance_exists(player)) exit;

// set the default save values
saveX = set_default(argument0, player.xprevious)
saveY = set_default(argument1, player.yprevious)
xs = set_default(player.image_xscale, 1)

// save the data to save file
buffer = buffer_create()
buffer_write_int32(buffer, global.death)
buffer_write_uint64(buffer, global.timestep)
buffer_write_int8(buffer, global.difficulty)
buffer_write_int8(buffer, global.clear)
for (i = 1; i <= global.boss_number; i += 1) {
    buffer_write_int8(buffer, global.boss[i])
}
for (i = 1; i <= global.item_number; i += 1) {
    buffer_write_int8(buffer, global.item[i])
}
for (i = 1; i <= global.data_number; i += 1) {
    buffer_write_float32(buffer, global.data[i])
}
for (i = 1; i <= global.text_number; i += 1) {
    buffer_write_string(buffer, global.text[i])
}
buffer_write_uint16(buffer, room)
buffer_write_int8(buffer, global.reverse)
buffer_write_float32(buffer, saveX)
buffer_write_float32(buffer, saveY)
buffer_write_int8(buffer, xs)
buffer_write_int8(buffer, player.maxJumps)
buffer_write_float32(buffer, player.maxSpeed)
buffer_write_float32(buffer, player.grav)
buffer_write_uint16(buffer, player.shootInterval)
for (i = IDLING; i < LADDER; i += 1) {
    buffer_write_uint16(buffer, player.sprite[i])
}

// for more save data, add script here
// If you don't know which buffer_write_* script to use,
// use buffer_write_float32


if (global.enable_encryption) {
    buffer_rc4_crypt(buffer, global.key)
}
buffer_write_to_file(buffer, getSaveFile(global.savenum))
buffer_destroy(buffer)

// clear global save
if (global.__save_id == id) {
    global.__save_id = -1
    global.__save_room = -1
    global.__save_x = -1
    global.__save_y = -1
    global.__save_xs = 0
    global.__save_rev = -1
}


