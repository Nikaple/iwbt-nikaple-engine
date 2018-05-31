// player variables
leftKey = keyboard_check_direct(global.leftbutton)
rightKey = keyboard_check_direct(global.rightbutton)
leftPressed = keyboard_check_pressed(global.leftbutton)
rightPressed = keyboard_check_pressed(global.rightbutton)
jumpKey = keyboard_check(global.jumpbutton)
jumpPressed = keyboard_check_pressed(global.jumpbutton)
jumpReleased = keyboard_check_released(global.jumpbutton)

if (global.reverse == 0) {
    yflag = 1
    L = leftKey
    R = rightKey
} else {
    yflag = -1
    R = leftKey
    L = rightKey
}
image_yscale = yflag

if (global.frozen) {
    h = 0
} else {
    // right overrides left
    if (R == 0) {
        h = -L
    } else {
        h = R
    }
}

