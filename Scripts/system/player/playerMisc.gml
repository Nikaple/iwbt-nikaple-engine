// update reverse
reverse = global.reverse
// update image_yscale
image_yscale = yflag
// set sprite
sprite_index = sprite[spr]
preSpr = spr
//player die
if (place_meeting(x, y, playerKiller)) {
    killPlayer()
}
// move wrap
if (shouldWrapWhenOutsideRoom) {
    if (x >= room_width) {
        x -= room_width
        y -= yflag
    }
    if (x <= 0) {
        x += room_width
        y -= yflag
    }
    if (y <= 0) {
        y += room_height
    }
    if (y >= room_height) {
        y -= room_height
    }
}
//debug mode functions (F6)
if (debug_mode) {
    //mouse warp (left button)
    if (mouse_check_button(mb_left)) {
        x = mouse_x
        y = mouse_y
    }
    //"S" save
    if (keyboard_check_pressed(ord('S'))) {
        saveGame()
    }
    // "F" for fps setting
    if (keyboard_check_pressed(ord('F'))) {
        global.debug_room_speed = get_integer('room speed = ?', 50)
    }
    room_speed = set_default(global.debug_room_speed, room_speed)
    //god mode
    if (keyboard_check_pressed(ord('G'))) {
        //switch between god mode and non god mode
        music_play(sndBlockChange)
        global.god_mode = !global.god_mode
    }
    if (global.god_mode) {
        image_alpha = 0.5
    } else {
        image_alpha = 1
    }
    if (keyboard_check_pressed(ord('A'))) {
        hspeed -= 1
    }
    if (keyboard_check_pressed(ord('D'))) {
        hspeed += 1
    }
}

