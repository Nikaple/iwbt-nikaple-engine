// player variables
leftKey = keyboard_check_direct(global.leftbutton)
leftPressed = keyboard_check_pressed(global.leftbutton)
leftReleased = keyboard_check_released(global.leftbutton)
rightKey = keyboard_check_direct(global.rightbutton)
rightPressed = keyboard_check_pressed(global.rightbutton)
rightReleased = keyboard_check_released(global.rightbutton)
jumpKey = keyboard_check(global.jumpbutton)
jumpPressed = keyboard_check_pressed(global.jumpbutton)
jumpReleased = keyboard_check_released(global.jumpbutton)
if (jumpReleased) {debug(1)}
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

