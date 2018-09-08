// player variables
if (!global.frozen) {
    leftKey = key_check(global.leftbutton)
    leftPressed = key_check_pressed(global.leftbutton)
    leftReleased = key_check_released(global.leftbutton)
    rightKey = key_check(global.rightbutton)
    rightPressed = key_check_pressed(global.rightbutton)
    rightReleased = key_check_released(global.rightbutton)
    if (global.enable_jump_cancel && (global.jumpbutton == vk_lshift || global.jumpbutton == vk_rshift)) {
        global.jumpbutton = vk_shift
    }
    if (!global.enable_jump_cancel && global.jumpbutton == vk_shift) {
        global.jumpbutton = vk_lshift
    }
    jumpKey = key_check(global.jumpbutton)
    jumpPressed = key_check_pressed(global.jumpbutton)
    jumpReleased = key_check_released(global.jumpbutton)
    shootKey = key_check(global.shootbutton)
    shootPressed = key_check_pressed(global.shootbutton)
    shootReleased = key_check_released(global.shootbutton)
    // flip left & right as view_angle is also flipped
    if (global.reverse == 0) {
        yflag = 1
        L = leftKey
        R = rightKey
    } else {
        yflag = -1
        R = leftKey
        L = rightKey
    }
    // right overrides left
    if (R == 0) {
        h = -L
    } else {
        h = R
    }
} else {
    if (global.reverse == 0) {
        yflag = 1
    } else {
        yflag = -1
    }
    h = 0
}

