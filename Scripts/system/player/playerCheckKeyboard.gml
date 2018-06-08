// player variables
isFocus = world.isFocus//focus_get()

if (!global.frozen) {
    leftKey = keyboard_check_direct(global.leftbutton) && isFocus
    leftPressed = keyboard_check_pressed(global.leftbutton)
    leftReleased = keyboard_check_released(global.leftbutton)
    rightKey = keyboard_check_direct(global.rightbutton) && isFocus
    rightPressed = keyboard_check_pressed(global.rightbutton)
    rightReleased = keyboard_check_released(global.rightbutton)
    jumpKey = keyboard_check(global.jumpbutton)
    jumpPressed = keyboard_check_pressed(global.jumpbutton)
    jumpReleased = keyboard_check_released(global.jumpbutton)
    shootKey = keyboard_check(global.shootbutton)
    shootPressed = keyboard_check_pressed(global.shootbutton)
    shootReleased = keyboard_check_released(global.shootbutton)
}
// right overrides left
if (R == 0) {
    h = -L
} else {
    h = R
}

if (global.reverse == 0) {
    yflag = 1
    L = leftKey
    R = rightKey
} else {
    yflag = -1
    R = leftKey
    L = rightKey
}

