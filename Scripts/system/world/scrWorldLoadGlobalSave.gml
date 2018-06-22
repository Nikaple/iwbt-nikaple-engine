// load global save
var buffer, roomTo, rev, xx, yy, xs, spd, grav;

// the global save is not reset until game is saved
roomTo = global.__save_room
rev = global.__save_rev
xx = global.__save_x
yy = global.__save_y
xs = global.__save_xs

if (!instance_exists(player)) {
    instance_create(0, 0, player)
}
room_goto(roomTo)
global.reverse = rev
player.x = xx
player.y = yy
player.image_xscale = xs
player.rev = rev
player.alarm[11] = 2

// clear fakePlayer speed
fakePlayerClearSpeed()

