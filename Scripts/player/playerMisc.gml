// set sprite
sprite_index = global.sprite[spr]
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
//creating bow
if (!instance_exists(bow)) {
    var a;
    a = instance_create(x, y, bow)
    a.image_xscale = image_xscale
    a.image_yscale = image_yscale
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
    //god mode
    if (keyboard_check_pressed(ord('G'))) {
        //switch between god mode and non god mode
        global.god_mode = !global.god_mode
        if (global.god_mode) {
            show_message('god mode on!')
        } else {
            show_message('god mode off!')
        }
    }
    if (keyboard_check_pressed(ord('A'))) {
        x -= 1
    }
    if (keyboard_check_pressed(ord('D'))) {
        x += 1
    }
}

