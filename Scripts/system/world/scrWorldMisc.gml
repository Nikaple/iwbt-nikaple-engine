// fix player reset movement bug
keyboard_check_direct(global.leftbutton)
keyboard_check_direct(global.rightbutton)

// focus setup
if (global.enable_simulate_focus) {
    if (isFocus) {
        if (!keyboard_check(vk_alt)) {
            keyboard_key_press(global.focus_key_code)
        } else {
            io_clear()
        }
    } else if (keyboard_check(vk_anykey) || mouse_check_button(mb_any)) {
        isFocus = true
        keyboard_key_press(global.focus_key_code)
    }
    isFocus = keyboard_check(global.focus_key_code)
}


