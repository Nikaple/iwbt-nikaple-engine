// player variables
if (!global.frozen) {
    leftKey = keyboard_check_direct(global.leftbutton) && getFocus()
    leftPressed = keyboard_check_pressed(global.leftbutton)
    leftReleased = keyboard_check_released(global.leftbutton)
    rightKey = keyboard_check_direct(global.rightbutton) && getFocus()
    rightPressed = keyboard_check_pressed(global.rightbutton)
    rightReleased = keyboard_check_released(global.rightbutton)
    jumpKey = keyboard_check(global.jumpbutton)
    jumpPressed = key_check_pressed(global.jumpbutton) && getFocus()
    jumpReleased = key_check_released(global.jumpbutton) && getFocus()
    //jumpPressed = keyboard_check_pressed(global.jumpbutton)
    //jumpReleased = keyboard_check_released(global.jumpbutton)
    shootKey = keyboard_check(global.shootbutton)
    shootPressed = keyboard_check_pressed(global.shootbutton)
    shootReleased = keyboard_check_released(global.shootbutton)
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

