//shoot a bullet when press shoot button
var inst, xx, yy
if (shootKey && canShoot && instance_number(bullet) < 4) {
    shootTimer = shootInterval
    canShoot = false
    xx = x + 2 * image_xscale
    yy = y - 2 * yflag
    inst = instance_create(xx, yy, bullet)
    inst.hspeed = image_xscale * 16
    music_play(sndShoot)
    isShooting = true
    ns_send_event('player_shoot', 3, 'dir', image_xscale, 'x', xx, 'y', yy)
}

if (shootTimer != -1) {
    shootTimer -= 1
}

if (shootTimer == 0 || shootReleased) {
    canShoot = true
}
