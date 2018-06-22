//load game
var buffer, roomTo, defaultSprite;

defaultSprite[IDLING] = sprPlayerIdle
defaultSprite[RUNNING] = sprPlayerRunning
defaultSprite[FALLING] = sprPlayerFall
defaultSprite[JUMPING] = sprPlayerJump
defaultSprite[SLIDING] = sprPlayerSliding

if (!instance_exists(player)) {
    instance_create(0, 0, player)
}

buffer = buffer_create()
buffer_read_from_file(buffer, getSaveFile(global.savenum))
if (global.enable_encryption) {
    buffer_rc4_crypt(buffer, global.key)
}

// read data and update global & player status
global.death = buffer_read_int32(buffer)
global.timestep = buffer_read_uint64(buffer)
global.difficulty = buffer_read_int8(buffer)
global.clear = buffer_read_int8(buffer)
for (i = 1; i <= global.boss_number; i += 1) {
    global.boss[i] = buffer_read_int8(buffer)
}
for (i = 1; i <= global.item_number; i += 1) {
    global.item[i] = buffer_read_int8(buffer)
}
for (i = 1; i <= global.data_number; i += 1) {
    global.data[i] = buffer_read_float32(buffer)
}
for (i = 1; i <= global.text_number; i += 1) {
    global.text[i] = buffer_read_string(buffer)
}
roomTo = buffer_read_uint16(buffer)
room_goto(roomTo)
global.reverse = buffer_read_int8(buffer)
player.x = buffer_read_float32(buffer)
player.y = buffer_read_float32(buffer)
player.image_xscale = buffer_read_int8(buffer)
player.maxJumps = buffer_read_int8(buffer)
player.maxSpeed = buffer_read_float32(buffer)
player.grav = buffer_read_float32(buffer)
player.shootInterval = buffer_read_uint16(buffer)
for (i = IDLING; i < LADDER; i += 1) {
    player.sprite[i] = set_default(buffer_read_uint16(buffer), defaultSprite[i])
}

// for more save data, add script here
// If you don't know which buffer_read_* script to use,
// use buffer_read_float32

buffer_destroy(buffer)

// clear fakePlayer speed
fakePlayerClearSpeed()

