//shoot a bullet when press shoot button
var inst, xx, yy
if (keyboard_check_pressed(global.shootbutton)) {
    if (instance_number(bullet) < 4) {
        xx = x + 2 * image_xscale
        yy = y - 2 * yflag
        inst = instance_create(xx, yy, bullet)
        inst.hspeed = image_xscale * 16
        audio_playsound(sndShoot)
        ns_send_event('player_shoot', 3, 'dir', image_xscale, 'x', xx, 'y', yy)
    }
}

